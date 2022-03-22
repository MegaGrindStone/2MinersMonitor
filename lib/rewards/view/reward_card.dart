import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:two_miners_monitor_oss/extension.dart';
import 'package:two_miners_monitor_oss/l10n/l10n.dart';
import 'package:two_miners_monitor_oss/miners/model/miner_model.dart';
import 'package:two_miners_monitor_oss/rewards/bloc/reward_bloc.dart';
import 'package:two_miners_monitor_oss/rewards/model/reward_model.dart';
import 'package:url_launcher/url_launcher.dart';

class BanneredRewardCard extends StatelessWidget {
  const BanneredRewardCard({
    Key? key,
    required this.miner,
    required this.reward,
    required this.title,
  }) : super(key: key);

  final MinerModel miner;
  final RewardModel reward;
  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          RewardBloc(minerBloc: context.read(), miner: miner, reward: reward),
      child: Card(
        color: Theme.of(context).colorScheme.primaryContainer,
        elevation: 2,
        child: ClipRect(
          child: Banner(
            message: title,
            location: BannerLocation.topEnd,
            child: const RewardCardView(),
          ),
        ),
      ),
    );
  }
}

class RewardCard extends StatelessWidget {
  const RewardCard({
    Key? key,
    required this.reward,
    required this.miner,
  }) : super(key: key);

  final MinerModel miner;
  final RewardModel reward;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          RewardBloc(minerBloc: context.read(), miner: miner, reward: reward),
      child: Card(
        color: Theme.of(context).colorScheme.primaryContainer,
        elevation: 2,
        child: const RewardCardView(),
      ),
    );
  }
}

class RewardCardView extends StatelessWidget {
  const RewardCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.all(5),
          child: RewardCardTitleView(),
        ),
        Divider(height: 1),
        RewardDetailView(),
        Divider(height: 1),
        RewardCardActions()
      ],
    );
  }
}

class RewardCardTitleView extends StatelessWidget {
  const RewardCardTitleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RewardBloc, RewardState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              state.reward.reward.money,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
              maxLines: 1,
            ),
            Text(
              '''
${DateFormat.yMMMMd().format(state.reward.time)}: ${DateFormat.Hms().format(state.reward.time)}''',
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

class RewardDetailView extends StatelessWidget {
  const RewardDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: const [
          Expanded(child: RewardBlockNumberView()),
          VerticalDivider(),
          Expanded(child: RewardSharePercentageView()),
        ],
      ),
    );
  }
}

class RewardBlockNumberView extends StatelessWidget {
  const RewardBlockNumberView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RewardBloc, RewardState>(
      builder: (context, state) {
        return _Box(
          value: state.reward.blockNumber.number,
          title: context.l10n.blockNumber,
        );
      },
    );
  }
}

class RewardSharePercentageView extends StatelessWidget {
  const RewardSharePercentageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RewardBloc, RewardState>(
      builder: (context, state) {
        return _Box(
          value: state.reward.isSolo
              ? state.reward.personalLuck.percentage
              : state.reward.percentage.percentage,
          title: state.reward.isSolo
              ? context.l10n.minerPersonalLuck
              : context.l10n.minerSharePercentage,
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

class RewardCardActions extends StatelessWidget {
  const RewardCardActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          RewardExplorerButton(),
        ],
      ),
    );
  }
}

class RewardExplorerButton extends StatelessWidget {
  const RewardExplorerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RewardBloc, RewardState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: () async {
            try {
              await launch(
                state.miner.repository?.blockURL(
                      blockHeight: state.reward.blockNumber.toString(),
                      blockHash: state.reward.blockHash,
                    ) ??
                    '',
              );
            } catch (e) {
              // Ignore if it's invalid url
              return;
            }
          },
          child: Text(context.l10n.explorerButton),
        );
      },
    );
  }
}
