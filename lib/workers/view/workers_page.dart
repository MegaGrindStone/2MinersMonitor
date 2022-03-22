import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_miners_monitor_oss/extension.dart';
import 'package:two_miners_monitor_oss/l10n/l10n.dart';
import 'package:two_miners_monitor_oss/miners/bloc/miners_bloc.dart';
import 'package:two_miners_monitor_oss/workers/bloc/workers_bloc.dart';
import 'package:two_miners_monitor_oss/workers/view/worker_tab.dart';

class WorkersPage extends StatelessWidget {
  const WorkersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WorkersBloc(),
      child: const WorkersView(),
    );
  }
}

class WorkersView extends StatefulWidget {
  const WorkersView({Key? key}) : super(key: key);

  @override
  State<WorkersView> createState() => _WorkersViewState();
}

class _WorkersViewState extends State<WorkersView>
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
              .read<WorkersBloc>()
              .add(WorkersEvent.tabTapped(tabIndex: _controller?.index ?? 0));
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
              title: Text(context.l10n.workersNavBarTitle),
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
            if (isEmpty) const NoWorkersView() else const WorkersTab()
          ],
        );
      },
    );
  }
}

class NoWorkersView extends StatelessWidget {
  const NoWorkersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: FittedBox(
          child: Text(
            context.l10n.workersNoWorkers,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class WorkersTab extends StatelessWidget {
  const WorkersTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinersBloc, MinersState>(
      builder: (context, minersState) {
        return BlocBuilder<WorkersBloc, WorkersState>(
          builder: (context, workersState) {
            final miner = minersState.miners[workersState.tabIndex];
            return WorkerTab(
              key: ValueKey('workers${miner.walletID}${miner.repositoryIndex}'),
              miner: miner,
            );
          },
        );
      },
    );
  }
}
