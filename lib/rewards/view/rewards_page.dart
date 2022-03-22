import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_miners_monitor_oss/extension.dart';
import 'package:two_miners_monitor_oss/l10n/l10n.dart';
import 'package:two_miners_monitor_oss/miners/bloc/miners_bloc.dart';
import 'package:two_miners_monitor_oss/rewards/bloc/rewards_bloc.dart';
import 'package:two_miners_monitor_oss/rewards/view/reward_tab.dart';

class RewardsPage extends StatelessWidget {
  const RewardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RewardsBloc(),
      child: const RewardsView(),
    );
  }
}

class RewardsView extends StatefulWidget {
  const RewardsView({Key? key}) : super(key: key);

  @override
  State<RewardsView> createState() => _RewardsViewState();
}

class _RewardsViewState extends State<RewardsView>
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
              .read<RewardsBloc>()
              .add(RewardsEvent.tabTapped(tabIndex: _controller?.index ?? 0));
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
              title: Text(context.l10n.rewardsNavBarTitle),
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
            if (isEmpty) const NoRewardsView() else const RewardsTab()
          ],
        );
      },
    );
  }
}

class NoRewardsView extends StatelessWidget {
  const NoRewardsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: FittedBox(
          child: Text(
            context.l10n.rewardsNoRewards,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class RewardsTab extends StatelessWidget {
  const RewardsTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinersBloc, MinersState>(
      builder: (context, minersState) {
        return BlocBuilder<RewardsBloc, RewardsState>(
          builder: (context, rewardsState) {
            final miner = minersState.miners[rewardsState.tabIndex];
            return RewardTab(
              key: ValueKey('rewards${miner.walletID}${miner.repositoryIndex}'),
              miner: miner,
            );
          },
        );
      },
    );
  }
}
