import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_miners_monitor_oss/l10n/l10n.dart';
import 'package:two_miners_monitor_oss/miners/bloc/miner_bloc.dart';
import 'package:two_miners_monitor_oss/miners/model/miner_model.dart';
import 'package:two_miners_monitor_oss/widget/exception_label.dart';
import 'package:two_miners_monitor_oss/widget/loading_view.dart';
import 'package:two_miners_monitor_oss/workers/view/worker_card.dart';

class WorkerTab extends StatelessWidget {
  const WorkerTab({Key? key, required this.miner}) : super(key: key);

  final MinerModel miner;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MinerBloc(miner: miner, minersBloc: context.read()),
      child: BlocBuilder<MinerBloc, MinerState>(
        builder: (context, state) {
          return state.maybeWhen(
            initial: (miner) => const WorkerTabView(),
            loadMinerInProgress: () =>
                const SliverFillRemaining(child: LoadingView()),
            loadMinerFailure: (exception) => SliverFillRemaining(
              child: ExceptionLabel(exception: exception),
            ),
            loadMinerSuccess: (miner) => const WorkerTabView(),
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }
}

class WorkerTabView extends StatelessWidget {
  const WorkerTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinerBloc, MinerState>(
      builder: (context, state) {
        final miner = state.whenOrNull(
          initial: (miner) => miner,
          loadMinerSuccess: (miner) => miner,
        );
        if (miner != null) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final worker = miner.workers[index];
                if (worker.isOffline) {
                  return BanneredWorkerCard(
                    worker: worker,
                    title: context.l10n.workersOfflineBanner,
                  );
                }
                return WorkerCard(worker: worker);
              },
              childCount: miner.workers.length,
            ),
          );
        }
        return const SliverFillRemaining(child: SizedBox());
      },
    );
  }
}
