import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_miners_monitor_oss/miners/bloc/miner_bloc.dart';
import 'package:two_miners_monitor_oss/miners/model/miner_model.dart';
import 'package:two_miners_monitor_oss/payouts/view/payout_card.dart';
import 'package:two_miners_monitor_oss/widget/exception_label.dart';
import 'package:two_miners_monitor_oss/widget/loading_view.dart';

class PayoutTab extends StatelessWidget {
  const PayoutTab({Key? key, required this.miner}) : super(key: key);

  final MinerModel miner;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MinerBloc(miner: miner, minersBloc: context.read()),
      child: BlocBuilder<MinerBloc, MinerState>(
        builder: (context, state) {
          return state.maybeWhen(
            initial: (miner) => const PayoutTabView(),
            loadMinerInProgress: () =>
                const SliverFillRemaining(child: LoadingView()),
            loadMinerFailure: (exception) => SliverFillRemaining(
              child: ExceptionLabel(exception: exception),
            ),
            loadMinerSuccess: (miner) => const PayoutTabView(),
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }
}

class PayoutTabView extends StatelessWidget {
  const PayoutTabView({Key? key}) : super(key: key);

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
              (context, index) =>
                  PayoutCard(miner: miner, payout: miner.payouts[index]),
              childCount: miner.payouts.length,
            ),
          );
        }
        return const SliverFillRemaining(child: SizedBox());
      },
    );
  }
}
