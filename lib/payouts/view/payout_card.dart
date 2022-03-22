import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:two_miners_monitor_oss/extension.dart';
import 'package:two_miners_monitor_oss/l10n/l10n.dart';
import 'package:two_miners_monitor_oss/miners/model/miner_model.dart';
import 'package:two_miners_monitor_oss/payouts/bloc/payout_bloc.dart';
import 'package:two_miners_monitor_oss/payouts/model/payout_model.dart';
import 'package:url_launcher/url_launcher.dart';

class PayoutCard extends StatelessWidget {
  const PayoutCard({Key? key, required this.miner, required this.payout})
      : super(key: key);

  final MinerModel miner;
  final PayoutModel payout;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PayoutBloc(
        minerBloc: context.read(),
        miner: miner,
        payout: payout,
      ),
      child: Card(
        color: Theme.of(context).colorScheme.primaryContainer,
        elevation: 2,
        child: const PayoutCardView(),
      ),
    );
  }
}

class PayoutCardView extends StatelessWidget {
  const PayoutCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.all(5),
          child: PayoutDetailView(),
        ),
        Divider(height: 1),
        PayoutCardActions()
      ],
    );
  }
}

class PayoutDetailView extends StatelessWidget {
  const PayoutDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PayoutBloc, PayoutState>(
      builder: (context, state) {
        return Row(
          children: [
            const Expanded(child: PayoutCardAmountView()),
            Expanded(
              child: state.payout.txFee != null
                  ? const PayoutCardFeeView()
                  : const SizedBox(),
            )
          ],
        );
      },
    );
  }
}

class PayoutCardAmountView extends StatelessWidget {
  const PayoutCardAmountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PayoutBloc, PayoutState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              state.payout.amount.money,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
              maxLines: 1,
            ),
            Text(
              '''
${DateFormat.yMMMMd().format(state.payout.time)}: ${DateFormat.Hms().format(state.payout.time)}''',
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

class PayoutCardFeeView extends StatelessWidget {
  const PayoutCardFeeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PayoutBloc, PayoutState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              (state.payout.txFee ?? 0).money,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
              maxLines: 1,
            ),
            Text(
              context.l10n.txFee,
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

class PayoutCardActions extends StatelessWidget {
  const PayoutCardActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          PayoutExplorerButton(),
        ],
      ),
    );
  }
}

class PayoutExplorerButton extends StatelessWidget {
  const PayoutExplorerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PayoutBloc, PayoutState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: () async {
            try {
              await launch(
                state.miner.repository?.txURL(state.payout.txID) ?? '',
              );
            } catch (_) {
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
