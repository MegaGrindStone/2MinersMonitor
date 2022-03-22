import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:two_miners_monitor_oss/extension.dart';
import 'package:two_miners_monitor_oss/l10n/l10n.dart';
import 'package:two_miners_monitor_oss/miners/bloc/miner_bloc.dart';
import 'package:two_miners_monitor_oss/miners/bloc/miners_bloc.dart';
import 'package:two_miners_monitor_oss/miners/model/miner_model.dart';
import 'package:two_miners_monitor_oss/widget/exception_label.dart';
import 'package:two_miners_monitor_oss/widget/loading_view.dart';

class MinerCard extends StatelessWidget {
  const MinerCard({Key? key, required this.miner}) : super(key: key);

  final MinerModel miner;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MinerBloc(miner: miner, minersBloc: context.read()),
      child: Card(
        color: Theme.of(context).colorScheme.primaryContainer,
        child: BlocBuilder<MinerBloc, MinerState>(
          builder: (context, state) {
            return state.maybeWhen(
              initial: (miner) {
                context
                    .read<MinerBloc>()
                    .add(const MinerEvent.loadMinerRequested());
                return const MinerCardView();
              },
              loadMinerInProgress: MinerCardLoading.new,
              loadMinerFailure: (exception) => const MinerCardException(),
              loadMinerSuccess: (miner) => const MinerCardView(),
              orElse: () => const SizedBox(),
            );
          },
        ),
      ),
    );
  }
}

class MinerCardLoading extends StatelessWidget {
  const MinerCardLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 170, child: LoadingView()),
        Divider(height: 1),
        MinerCardActions(),
      ],
    );
  }
}

class MinerCardException extends StatelessWidget {
  const MinerCardException({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinerBloc, MinerState>(
      builder: (context, state) {
        final exception =
            state.whenOrNull(loadMinerFailure: (exception) => exception);
        return Column(
          children: [
            SizedBox(
              height: 170,
              child: ExceptionLabel(exception: exception!),
            ),
            const Divider(height: 1),
            const MinerCardActions(),
          ],
        );
      },
    );
  }
}

class MinerCardView extends StatelessWidget {
  const MinerCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: MinerCardTitleView(),
        ),
        Divider(height: 1),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: MinerWalletIDText(),
        ),
        Divider(height: 1),
        MinerOverviewView(),
        Divider(height: 1),
        MinerCardActions(),
      ],
    );
  }
}

class MinerCardTitleView extends StatelessWidget {
  const MinerCardTitleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinerBloc, MinerState>(
      builder: (context, state) {
        final miner = state.whenOrNull(
          initial: (miner) => miner,
          loadMinerSuccess: (miner) => miner,
        );
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 25, height: 25, child: miner?.repository?.logo),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    miner?.repository?.name ?? '',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                    maxLines: 1,
                  ),
                  const MinerLastUpdateView(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class MinerLastUpdateView extends StatelessWidget {
  const MinerLastUpdateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinerBloc, MinerState>(
      builder: (context, state) {
        final miner = state.whenOrNull(
          initial: (miner) => miner,
          loadMinerSuccess: (miner) => miner,
        );
        final lastUpdate =
            DateTime.fromMillisecondsSinceEpoch(miner?.lastUpdate ?? 0);
        return Text(
          '''
${context.l10n.lastUpdate}: ${DateFormat.yMMMMd().format(lastUpdate)} ${DateFormat.Hms().format(lastUpdate)}''',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
        );
      },
    );
  }
}

class MinerWalletIDText extends StatelessWidget {
  const MinerWalletIDText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: BlocBuilder<MinerBloc, MinerState>(
        builder: (context, state) {
          final miner = state.whenOrNull(
            initial: (miner) => miner,
            loadMinerSuccess: (miner) => miner,
          );
          return Text(
            miner?.walletID ?? '',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
            maxLines: 1,
          );
        },
      ),
    );
  }
}

class MinerOverviewView extends StatelessWidget {
  const MinerOverviewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Expanded(
            child: MinerUnconfirmedView(),
          ),
          const VerticalDivider(),
          Expanded(
            child: Stack(
              children: [
                const SizedBox(
                  width: double.infinity,
                  child: MinerUnpaidView(),
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: BlocBuilder<MinerBloc, MinerState>(
                      builder: (context, state) {
                        final miner = state.whenOrNull(
                          initial: (miner) => miner,
                          loadMinerSuccess: (miner) => miner,
                        );
                        return LinearProgressIndicator(
                          value: miner?.unpaidProgress ?? 0,
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          const VerticalDivider(),
          const Expanded(
            child: MinerCurrentHashrateView(),
          ),
          const VerticalDivider(),
          const Expanded(
            child: MinerAverageHashrateView(),
          ),
        ],
      ),
    );
  }
}

class MinerUnconfirmedView extends StatelessWidget {
  const MinerUnconfirmedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinerBloc, MinerState>(
      builder: (context, state) {
        final miner = state.whenOrNull(
          initial: (miner) => miner,
          loadMinerSuccess: (miner) => miner,
        );
        return _Box(
          value: (miner?.unconfirmed ?? 0).money,
          title: context.l10n.minerUnconfirmedBalance,
        );
      },
    );
  }
}

class MinerUnpaidView extends StatelessWidget {
  const MinerUnpaidView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinerBloc, MinerState>(
      builder: (context, state) {
        final miner = state.whenOrNull(
          initial: (miner) => miner,
          loadMinerSuccess: (miner) => miner,
        );
        return _Box(
          value: (miner?.unpaid ?? 0).money,
          title: context.l10n.minerUnpaidBalance,
        );
      },
    );
  }
}

class MinerCurrentHashrateView extends StatelessWidget {
  const MinerCurrentHashrateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinerBloc, MinerState>(
      builder: (context, state) {
        final miner = state.whenOrNull(
          initial: (miner) => miner,
          loadMinerSuccess: (miner) => miner,
        );
        return _Box(
          value: miner?.currentHashrateWithUnit ?? '',
          title: context.l10n.minerCurrentHashrate,
        );
      },
    );
  }
}

class MinerAverageHashrateView extends StatelessWidget {
  const MinerAverageHashrateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinerBloc, MinerState>(
      builder: (context, state) {
        final miner = state.whenOrNull(
          initial: (miner) => miner,
          loadMinerSuccess: (miner) => miner,
        );
        return _Box(
          value: miner?.averageHashrateWithUnit ?? '',
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
        FittedBox(
          child: Text(
            value,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
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

class MinerCardActions extends StatelessWidget {
  const MinerCardActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          MinerDeleteButton(),
          SizedBox(width: 10),
          MinerDetailButton(),
        ],
      ),
    );
  }
}

class MinerDeleteButton extends StatelessWidget {
  const MinerDeleteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinerBloc, MinerState>(
      builder: (context, state) {
        final miner = state.whenOrNull(
          initial: (miner) => miner,
          loadMinerSuccess: (miner) => miner,
        );
        return TextButton(
          onPressed: () {
            if (miner != null) {
              context
                  .read<MinersBloc>()
                  .add(MinersEvent.minerRemoved(miner: miner));
            }
          },
          child: Text(context.l10n.removeButton),
        );
      },
    );
  }
}

class MinerDetailButton extends StatelessWidget {
  const MinerDetailButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinerBloc, MinerState>(
      builder: (context, state) {
        final miner = state.whenOrNull(
          initial: (miner) => miner,
          loadMinerSuccess: (miner) => miner,
        );
        return ElevatedButton(
          onPressed: () {
            context.beamToNamed(
              '/miners/detail?repositoryIndex=${miner?.repositoryIndex.name}&walletID=${miner?.walletID}',
            );
          },
          child: Text(context.l10n.detailButton),
        );
      },
    );
  }
}
