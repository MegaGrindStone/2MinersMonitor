import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_miners_monitor_oss/l10n/l10n.dart';
import 'package:two_miners_monitor_oss/miners/bloc/miners_bloc.dart';
import 'package:two_miners_monitor_oss/miners/view/miner_card.dart';

class MinersPage extends StatelessWidget {
  const MinersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MinersView();
  }
}

class MinersView extends StatelessWidget {
  const MinersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinersBloc, MinersState>(
      builder: (context, state) {
        state.whenOrNull(
          initial: (miners) => context
              .read<MinersBloc>()
              .add(const MinersEvent.loadMinersRequested()),
        );
        final isEmpty = state.miners.isEmpty;
        return CustomScrollView(
          slivers: [
            SliverAppBar(
              actions: [
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    context.beamToNamed('/miners/add');
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: () {
                    context
                        .read<MinersBloc>()
                        .add(const MinersEvent.loadMinersRequested());
                  },
                ),
              ],
              title: Text(context.l10n.minersNavBarTitle),
              expandedHeight: kToolbarHeight,
              floating: !isEmpty,
              pinned: isEmpty,
            ),
            if (isEmpty) const NoMinersView() else const MinersList(),
          ],
        );
      },
    );
  }
}

class NoMinersView extends StatelessWidget {
  const NoMinersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          NoMinersText(),
          SizedBox(height: 15),
          AddMinerButton(),
        ],
      ),
    );
  }
}

class NoMinersText extends StatelessWidget {
  const NoMinersText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: FittedBox(
        child: Text(
          context.l10n.minersNoMiners,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: Theme.of(context).colorScheme.onBackground),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class AddMinerButton extends StatelessWidget {
  const AddMinerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.beamToNamed('/miners/add');
      },
      child: Text(
        context.l10n.minersAddMiner,
      ),
    );
  }
}

class MinersList extends StatelessWidget {
  const MinersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinersBloc, MinersState>(
      builder: (context, state) {
        return SliverList(
          delegate: SliverChildListDelegate(
            state.miners.map(
              (miner) {
                return MinerCard(
                  miner: miner,
                  key: ValueKey('${miner.walletID}${miner.repositoryIndex}'),
                );
              },
            ).toList(),
          ),
        );
      },
    );
  }
}
