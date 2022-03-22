import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:two_miners_api/two_miners_api.dart';
import 'package:two_miners_monitor_oss/app/bloc/stats_bloc.dart';
import 'package:two_miners_monitor_oss/extension.dart';
import 'package:two_miners_monitor_oss/l10n/l10n.dart';
import 'package:two_miners_monitor_oss/miners/bloc/miner_bloc.dart';
import 'package:two_miners_monitor_oss/miners/model/miner_model.dart';
import 'package:two_miners_monitor_oss/widget/exception_label.dart';
import 'package:two_miners_monitor_oss/widget/loading_view.dart';
import 'package:url_launcher/url_launcher.dart';

class MinerInfoPage extends StatelessWidget {
  const MinerInfoPage({
    Key? key,
    required this.repositoryIndex,
    required this.walletID,
  }) : super(key: key);

  final RepositoryIndex repositoryIndex;
  final String walletID;

  @override
  Widget build(BuildContext context) {
    final coinRepositories = context.read<CoinRepositories>();
    return BlocProvider(
      create: (context) => MinerBloc(
        miner: MinerModel(
          repositoryIndex: repositoryIndex,
          walletID: walletID,
          lastUpdate: DateTime.now().millisecondsSinceEpoch,
          repository: coinRepositories.repositories[repositoryIndex],
        ),
        minersBloc: context.read(),
      ),
      child: const MinerInfoView(),
    );
  }
}

class MinerInfoView extends StatelessWidget {
  const MinerInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        BlocBuilder<MinerBloc, MinerState>(
          builder: (context, state) {
            final miner = state.whenOrNull(
              initial: (miner) {
                context
                    .read<MinerBloc>()
                    .add(const MinerEvent.loadMinerRequested());
                return miner;
              },
              loadMinerSuccess: (miner) => miner,
            );
            return SliverAppBar(
              actions: [
                IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: () {
                    context
                        .read<MinerBloc>()
                        .add(const MinerEvent.loadMinerRequested());
                  },
                ),
              ],
              title: Row(
                children: [
                  SizedBox(
                    width: 25,
                    height: 25,
                    child: miner?.repository?.logo,
                  ),
                  const SizedBox(width: 10),
                  Expanded(child: Text(miner?.walletID ?? '')),
                ],
              ),
              expandedHeight: kToolbarHeight,
              floating: true,
            );
          },
        ),
        SliverToBoxAdapter(
          child: BlocBuilder<MinerBloc, MinerState>(
            builder: (context, state) {
              return state.maybeWhen(
                initial: (miner) => const MinerInfoDetailView(),
                loadMinerInProgress: () =>
                    const SizedBox(height: 500, child: LoadingView()),
                loadMinerSuccess: (miner) => const MinerInfoDetailView(),
                loadMinerFailure: (exception) => SizedBox(
                  height: 170,
                  child: ExceptionLabel(exception: exception),
                ),
                orElse: () => const SizedBox(),
              );
            },
          ),
        )
      ],
    );
  }
}

class MinerInfoDetailView extends StatelessWidget {
  const MinerInfoDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinerBloc, MinerState>(
      builder: (context, state) {
        final miner = state.whenOrNull(
          initial: (miner) => miner,
          loadMinerSuccess: (miner) => miner,
        );
        return Column(
          children: [
            const MinerInfoBalanceGroup(),
            const MinerInfoWorkerGroupView(),
            if (miner?.repository?.soloMode ?? false)
              const MinerInfoSoloGroupView()
            else
              const MinerInfoNonSoloGroupView(),
            const SizedBox(height: 20),
            const MinerInfoLastUpdateView(),
            const SizedBox(height: 20),
            const MinerInfoWebButton(),
            const SizedBox(height: 20),
          ],
        );
      },
    );
  }
}

class MinerInfoBalanceGroup extends StatelessWidget {
  const MinerInfoBalanceGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.primaryContainer,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Expanded(child: MinerInfoUnconfirmedView()),
              Expanded(
                child: Stack(
                  children: [
                    const SizedBox(
                      width: double.infinity,
                      child: MinerInfoUnpaidView(),
                    ),
                    Positioned(
                      child: BlocBuilder<MinerBloc, MinerState>(
                        builder: (context, state) {
                          final miner = state.whenOrNull(
                            initial: (miner) => miner,
                            loadMinerSuccess: (miner) => miner,
                          );
                          return Padding(
                            padding: const EdgeInsets.all(5),
                            child: LinearProgressIndicator(
                              value: miner?.unpaidProgress,
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const Divider(height: 1),
          Row(
            children: const [
              Expanded(child: MinerInfoTotalPaidView()),
              Expanded(child: MinerInfoLast24RewardView()),
            ],
          )
        ],
      ),
    );
  }
}

class MinerInfoUnconfirmedView extends StatelessWidget {
  const MinerInfoUnconfirmedView({Key? key}) : super(key: key);

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
          subValue: '',
          title: context.l10n.minerUnconfirmedBalance,
        );
      },
    );
  }
}

class MinerInfoUnpaidView extends StatelessWidget {
  const MinerInfoUnpaidView({Key? key}) : super(key: key);

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
          subValue: '',
          title: context.l10n.minerUnpaidBalance,
        );
      },
    );
  }
}

class MinerInfoTotalPaidView extends StatelessWidget {
  const MinerInfoTotalPaidView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinerBloc, MinerState>(
      builder: (context, state) {
        final miner = state.whenOrNull(
          initial: (miner) => miner,
          loadMinerSuccess: (miner) => miner,
        );
        return _Box(
          value: (miner?.totalPaid ?? 0).money,
          subValue: '',
          title: context.l10n.minerTotalPaid,
        );
      },
    );
  }
}

class MinerInfoLast24RewardView extends StatelessWidget {
  const MinerInfoLast24RewardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinerBloc, MinerState>(
      builder: (context, state) {
        final miner = state.whenOrNull(
          initial: (miner) => miner,
          loadMinerSuccess: (miner) => miner,
        );
        return _Box(
          value: (miner?.last24Reward ?? 0).money,
          subValue: '',
          title: context.l10n.minerLast24HoursReward,
        );
      },
    );
  }
}

class MinerInfoWorkerGroupView extends StatelessWidget {
  const MinerInfoWorkerGroupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.primaryContainer,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Row(
            children: const [
              Expanded(child: MinerInfoCurrentHashrateView()),
              Expanded(child: MinerInfoAverageHashrateView()),
            ],
          ),
          const Divider(height: 1),
          Row(
            children: const [
              Expanded(child: MinerInfoWorkersOnlineView()),
              Expanded(child: MinerInfoLastShareView()),
            ],
          )
        ],
      ),
    );
  }
}

class MinerInfoCurrentHashrateView extends StatelessWidget {
  const MinerInfoCurrentHashrateView({Key? key}) : super(key: key);

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
          subValue: '',
          title: context.l10n.minerCurrentHashrate,
        );
      },
    );
  }
}

class MinerInfoAverageHashrateView extends StatelessWidget {
  const MinerInfoAverageHashrateView({Key? key}) : super(key: key);

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
          subValue: '',
          title: context.l10n.minerAverageHashrate,
        );
      },
    );
  }
}

class MinerInfoWorkersOnlineView extends StatelessWidget {
  const MinerInfoWorkersOnlineView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinerBloc, MinerState>(
      builder: (context, state) {
        final miner = state.whenOrNull(
          initial: (miner) => miner,
          loadMinerSuccess: (miner) => miner,
        );
        return _Box(
          value: miner?.workersOffline == 0
              ? (miner?.workersOnline ?? 0).toString()
              : '${miner?.workersOnline} / ${miner?.workersOffline}',
          subValue: '',
          title: miner?.workersOffline == 0
              ? context.l10n.minerWorkersOnline
              : context.l10n.minerWorkersOnlineAndOfline,
        );
      },
    );
  }
}

class MinerInfoLastShareView extends StatelessWidget {
  const MinerInfoLastShareView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinerBloc, MinerState>(
      builder: (context, state) {
        final miner = state.whenOrNull(
          initial: (miner) => miner,
          loadMinerSuccess: (miner) => miner,
        );
        final lastShare = miner?.lastShare ?? DateTime.now();
        return _Box(
          value: DateFormat.yMMMMd().format(lastShare),
          subValue: DateFormat.Hms().format(lastShare),
          title: context.l10n.minerLastShare,
        );
      },
    );
  }
}

class MinerInfoNonSoloGroupView extends StatelessWidget {
  const MinerInfoNonSoloGroupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.primaryContainer,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: const [
          Expanded(child: MinerInfoRoundShareView()),
          Expanded(child: MinerInfoValidShareRateView()),
        ],
      ),
    );
  }
}

class MinerInfoRoundShareView extends StatelessWidget {
  const MinerInfoRoundShareView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinerBloc, MinerState>(
      builder: (context, minerState) {
        final miner = minerState.whenOrNull(
          initial: (miner) => miner,
          loadMinerSuccess: (miner) => miner,
        );
        return BlocBuilder<StatsBloc, StatsState>(
          builder: (context, statState) {
            var nShare = 1;
            for (final key in statState.statMap.keys) {
              if (miner?.repositoryIndex == key) {
                nShare = statState.statMap[key]?.stats?.nShares ?? 1;
              }
            }
            return _Box(
              value: miner?.roundSharePercentage(nShare).percentage ?? '',
              subValue: '',
              title: context.l10n.minerRoundShare,
            );
          },
        );
      },
    );
  }
}

class MinerInfoValidShareRateView extends StatelessWidget {
  const MinerInfoValidShareRateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinerBloc, MinerState>(
      builder: (context, state) {
        final miner = state.whenOrNull(
          initial: (miner) => miner,
          loadMinerSuccess: (miner) => miner,
        );
        return _Box(
          value: (miner?.validSharePercentage ?? 0).percentage,
          subValue: '',
          title: context.l10n.minerValidShareRate,
        );
      },
    );
  }
}

class MinerInfoSoloGroupView extends StatelessWidget {
  const MinerInfoSoloGroupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.primaryContainer,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Row(
            children: const [
              Expanded(child: MinerInfoBlockRewardView()),
              Expanded(child: MinerInfoBlock24View()),
            ],
          ),
          const Divider(height: 1),
          Row(
            children: const [
              Expanded(child: MinerInfoBlock30View()),
              Expanded(child: MinerInfoPersonalLuckView()),
            ],
          )
        ],
      ),
    );
  }
}

class MinerInfoBlockRewardView extends StatelessWidget {
  const MinerInfoBlockRewardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinerBloc, MinerState>(
      builder: (context, minerState) {
        final miner = minerState.whenOrNull(
          initial: (miner) => miner,
          loadMinerSuccess: (miner) => miner,
        );
        return BlocBuilder<StatsBloc, StatsState>(
          builder: (context, statState) {
            var dynamicReward = 1;
            for (final key in statState.statMap.keys) {
              if (miner?.repositoryIndex == key) {
                dynamicReward = statState.statMap[key]?.blockReward() ?? 1;
              }
            }
            return _Box(
              value: miner?.repository?.poolReward(dynamicReward).money ?? '',
              subValue: '',
              title: context.l10n.minerBlockReward,
            );
          },
        );
      },
    );
  }
}

class MinerInfoBlock24View extends StatelessWidget {
  const MinerInfoBlock24View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinerBloc, MinerState>(
      builder: (context, state) {
        final miner = state.whenOrNull(
          initial: (miner) => miner,
          loadMinerSuccess: (miner) => miner,
        );
        return _Box(
          value: (miner?.block24 ?? 0).toString(),
          subValue: '',
          title: context.l10n.minerLast24HoursBlocks,
        );
      },
    );
  }
}

class MinerInfoBlock30View extends StatelessWidget {
  const MinerInfoBlock30View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinerBloc, MinerState>(
      builder: (context, state) {
        final miner = state.whenOrNull(
          initial: (miner) => miner,
          loadMinerSuccess: (miner) => miner,
        );
        return _Box(
          value: (miner?.block30 ?? 0).toString(),
          subValue: '',
          title: context.l10n.minerLast30DaysBlocks,
        );
      },
    );
  }
}

class MinerInfoPersonalLuckView extends StatelessWidget {
  const MinerInfoPersonalLuckView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinerBloc, MinerState>(
      builder: (context, state) {
        final miner = state.whenOrNull(
          initial: (miner) => miner,
          loadMinerSuccess: (miner) => miner,
        );
        return _Box(
          value: (miner?.personalLuck ?? 0).percentage,
          subValue: '',
          title: context.l10n.minerPersonalLuck,
        );
      },
    );
  }
}

class _Box extends StatelessWidget {
  const _Box({
    Key? key,
    required this.value,
    required this.subValue,
    required this.title,
  }) : super(key: key);

  final String value;
  final String subValue;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border.symmetric(
          vertical: BorderSide(width: 0.1),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                child: Text(
                  value,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                  maxLines: 1,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                subValue,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            title,
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
          ),
        ],
      ),
    );
  }
}

class MinerInfoLastUpdateView extends StatelessWidget {
  const MinerInfoLastUpdateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          context.l10n.lastUpdate,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
        ),
        const SizedBox(width: 10),
        BlocBuilder<MinerBloc, MinerState>(
          builder: (context, state) {
            final miner = state.whenOrNull(
              initial: (miner) => miner,
              loadMinerSuccess: (miner) => miner,
            );
            final lastUpdate =
                DateTime.fromMillisecondsSinceEpoch(miner?.lastUpdate ?? 0);
            return Text(
              '''
        ${DateFormat.yMMMMd().format(lastUpdate)} ${DateFormat.Hms().format(lastUpdate)}''',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
            );
          },
        )
      ],
    );
  }
}

class MinerInfoWebButton extends StatelessWidget {
  const MinerInfoWebButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinerBloc, MinerState>(
      builder: (context, state) {
        final miner = state.whenOrNull(
          initial: (miner) => miner,
          loadMinerSuccess: (miner) => miner,
        );
        final webUrl = miner?.webURL ?? '';
        return ElevatedButton(
          onPressed: () async {
            await launch(webUrl);
          },
          child: Text(context.l10n.minerInfoWebOpenCaption),
        );
      },
    );
  }
}
