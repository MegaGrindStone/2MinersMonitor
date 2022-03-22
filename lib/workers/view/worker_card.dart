import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:two_miners_monitor_oss/l10n/l10n.dart';
import 'package:two_miners_monitor_oss/workers/bloc/worker_bloc.dart';
import 'package:two_miners_monitor_oss/workers/model/worker_model.dart';

class BanneredWorkerCard extends StatelessWidget {
  const BanneredWorkerCard({
    Key? key,
    required this.worker,
    required this.title,
  }) : super(key: key);

  final WorkerModel worker;
  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          WorkerBloc(minerBloc: context.read(), worker: worker),
      child: Card(
        color: Theme.of(context).colorScheme.primaryContainer,
        elevation: 2,
        child: ClipRect(
          child: Banner(
            message: title,
            location: BannerLocation.topEnd,
            child: const WorkerCardView(),
          ),
        ),
      ),
    );
  }
}

class WorkerCard extends StatelessWidget {
  const WorkerCard({Key? key, required this.worker}) : super(key: key);

  final WorkerModel worker;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WorkerBloc(
        minerBloc: context.read(),
        worker: worker,
      ),
      child: Card(
        color: Theme.of(context).colorScheme.primaryContainer,
        elevation: 2,
        child: const WorkerCardView(),
      ),
    );
  }
}

class WorkerCardView extends StatelessWidget {
  const WorkerCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.all(5),
          child: WorkerCardTitleView(),
        ),
        Divider(height: 1),
        WorkerHashrateView(),
      ],
    );
  }
}

class WorkerCardTitleView extends StatelessWidget {
  const WorkerCardTitleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkerBloc, WorkerState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              state.worker.name,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
              maxLines: 1,
            ),
            Text(
              '''
${context.l10n.minerLastShare}: ${timeago.format(state.worker.lastShare)}''',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
              maxLines: 1,
            ),
          ],
        );
      },
    );
  }
}

class WorkerHashrateView extends StatelessWidget {
  const WorkerHashrateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: const [
          Expanded(child: WorkerCurrentHashrateView()),
          VerticalDivider(),
          Expanded(child: WorkerAverageHashrateView()),
        ],
      ),
    );
  }
}

class WorkerCurrentHashrateView extends StatelessWidget {
  const WorkerCurrentHashrateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkerBloc, WorkerState>(
      builder: (context, state) {
        return _Box(
          value: state.worker.currentHashrateWithUnit,
          title: context.l10n.minerCurrentHashrate,
        );
      },
    );
  }
}

class WorkerAverageHashrateView extends StatelessWidget {
  const WorkerAverageHashrateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkerBloc, WorkerState>(
      builder: (context, state) {
        return _Box(
          value: state.worker.averageHashrateWithUnit,
          title: context.l10n.minerAverageHashrate,
        );
      },
    );
  }
}

class _Box extends StatelessWidget {
  const _Box({
    Key? key,
    required this.value,
    required this.title,
  }) : super(key: key);

  final String value;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        SizedBox(
          height: 30,
          child: FittedBox(
            child: Text(
              value,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
