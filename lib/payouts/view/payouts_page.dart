import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_miners_monitor_oss/extension.dart';
import 'package:two_miners_monitor_oss/l10n/l10n.dart';
import 'package:two_miners_monitor_oss/miners/bloc/miners_bloc.dart';
import 'package:two_miners_monitor_oss/payouts/bloc/payouts_bloc.dart';
import 'package:two_miners_monitor_oss/payouts/view/payout_tab.dart';

class PayoutsPage extends StatelessWidget {
  const PayoutsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PayoutsBloc(),
      child: const PayoutsView(),
    );
  }
}

class PayoutsView extends StatefulWidget {
  const PayoutsView({Key? key}) : super(key: key);

  @override
  State<PayoutsView> createState() => _PayoutsViewState();
}

class _PayoutsViewState extends State<PayoutsView>
    with TickerProviderStateMixin {
  TabController? _controller;

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinersBloc, MinersState>(
      builder: (context, state) {
        final isEmpty = state.miners.isEmpty;
        _controller = TabController(length: state.miners.length, vsync: this);
        _controller?.addListener(() {
          context
              .read<PayoutsBloc>()
              .add(PayoutsEvent.tabTapped(tabIndex: _controller?.index ?? 0));
        });
        return CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              actions: [
                IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: () {
                    context
                        .read<MinersBloc>()
                        .add(const MinersEvent.loadMinersRequested());
                  },
                ),
              ],
              title: Text(context.l10n.payoutsNavBarTitle),
              expandedHeight: kToolbarHeight,
              bottom: !isEmpty
                  ? TabBar(
                      controller: _controller,
                      isScrollable: true,
                      tabs: state.miners
                          .map(
                            (miner) => Tab(
                              icon: SizedBox(
                                width: 25,
                                height: 25,
                                child: miner.repository?.logo,
                              ),
                              text: miner.walletID.shortenAddress,
                            ),
                          )
                          .toList(),
                    )
                  : null,
              floating: !isEmpty,
              pinned: isEmpty,
            ),
            if (isEmpty) const NoPayoutsView() else const PayoutsTab()
          ],
        );
      },
    );
  }
}

class NoPayoutsView extends StatelessWidget {
  const NoPayoutsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: FittedBox(
          child: Text(
            context.l10n.payoutsNoPayouts,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class PayoutsTab extends StatelessWidget {
  const PayoutsTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinersBloc, MinersState>(
      builder: (context, minersState) {
        return BlocBuilder<PayoutsBloc, PayoutsState>(
          builder: (context, payoutsState) {
            final miner = minersState.miners[payoutsState.tabIndex];
            return PayoutTab(
              key: ValueKey('payouts${miner.walletID}${miner.repositoryIndex}'),
              miner: miner,
            );
          },
        );
      },
    );
  }
}
