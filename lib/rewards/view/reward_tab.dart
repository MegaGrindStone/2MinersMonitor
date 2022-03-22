import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_miners_monitor_oss/l10n/l10n.dart';
import 'package:two_miners_monitor_oss/miners/bloc/miner_bloc.dart';
import 'package:two_miners_monitor_oss/miners/model/miner_model.dart';
import 'package:two_miners_monitor_oss/rewards/view/reward_card.dart';
import 'package:two_miners_monitor_oss/widget/exception_label.dart';
import 'package:two_miners_monitor_oss/widget/loading_view.dart';

class RewardTab extends StatelessWidget {
  const RewardTab({Key? key, required this.miner}) : super(key: key);

  final MinerModel miner;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MinerBloc(miner: miner, minersBloc: context.read()),
      child: BlocBuilder<MinerBloc, MinerState>(
        builder: (context, state) {
          return state.maybeWhen(
            initial: (miner) => const RewardTabView(),
            loadMinerInProgress: () =>
                const SliverFillRemaining(child: LoadingView()),
            loadMinerFailure: (exception) => SliverFillRemaining(
              child: ExceptionLabel(exception: exception),
            ),
            loadMinerSuccess: (miner) => const RewardTabView(),
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }
}

class RewardTabView extends StatelessWidget {
  const RewardTabView({Key? key}) : super(key: key);

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
                final reward = miner.rewards[index];
                if (reward.isImmature) {
                  return BanneredRewardCard(
                    miner: miner,
                    reward: reward,
                    title: context.l10n.rewardsImmatureBanner,
                  );
                }
                if (reward.isUncle) {
                  return BanneredRewardCard(
                    miner: miner,
                    reward: reward,
                    title: context.l10n.rewardsUncleBanner,
                  );
                }
                if (reward.isOrphan) {
                  return BanneredRewardCard(
                    miner: miner,
                    reward: reward,
                    title: context.l10n.rewardsOrphanBanner,
                  );
                }
                return RewardCard(
                  reward: reward,
                  miner: miner,
                );
              },
              childCount: miner.rewards.length,
            ),
          );
        }
        return const SliverFillRemaining(child: SizedBox());
      },
    );
  }
}
