import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:two_miners_api/two_miners_api.dart';
import 'package:two_miners_monitor_oss/miners/bloc/miners_bloc.dart';
import 'package:two_miners_monitor_oss/miners/model/miner_model.dart';

import '../../helpers/helpers.dart';

class MockCoinRepositories extends Mock implements CoinRepositories {}

class MockBaseRepository extends Mock implements BaseRepository {}

void main() {
  group('MinersBloc', () {
    final coinRepositories = MockCoinRepositories();
    final baseRepository = MockBaseRepository();

    final dummyMiner1 = MinerModel(
      repositoryIndex: RepositoryIndex.eth,
      walletID: 'dummy',
      lastUpdate: DateTime.now().millisecondsSinceEpoch,
    );

    setUp(() {
      when(() => coinRepositories.repositories)
          .thenReturn(<RepositoryIndex, BaseRepository>{
        RepositoryIndex.eth: baseRepository
      });
    });

    group('toJson/fromJson', () {
      test('work properly', () {
        mockHydratedStorage(() {
          final minersBloc = MinersBloc(coinRepositories: coinRepositories);
          expect(
            minersBloc.fromJson(<String, dynamic>{
              'miners': [dummyMiner1.toJson()]
            }),
            MinersState.initial(miners: [dummyMiner1]),
          );
        });
      });
    });

    blocTest<MinersBloc, MinersState>(
      'add 1 miner with minerAdded',
      build: () => mockHydratedStorage(
        () => MinersBloc(coinRepositories: coinRepositories),
      ),
      act: (bloc) => bloc.add(MinersEvent.minerAdded(miner: dummyMiner1)),
      expect: () => [
        MinersState.loadMinersSuccess(
          miners: <MinerModel>[dummyMiner1],
        )
      ],
    );

    blocTest<MinersBloc, MinersState>(
      'removed the only miner with minerRemoved',
      build: () => mockHydratedStorage(
        () => MinersBloc(coinRepositories: coinRepositories),
      ),
      act: (bloc) => bloc.add(MinersEvent.minerRemoved(miner: dummyMiner1)),
      expect: () =>
          [const MinersState.loadMinersSuccess(miners: <MinerModel>[])],
    );

    blocTest<MinersBloc, MinersState>(
      'failed loadMinersRequested',
      build: () => mockHydratedStorage(
        () => MinersBloc(coinRepositories: coinRepositories),
      ),
      act: (bloc) => bloc.add(const MinersEvent.loadMinersRequested()),
      expect: () => <dynamic>[],
    );

    blocTest<MinersBloc, MinersState>(
      'succeed loadMinersRequested',
      build: () => mockHydratedStorage(
        () => MinersBloc(coinRepositories: coinRepositories),
      ),
      act: (bloc) async {
        await Future<void>.delayed(const Duration(seconds: 2));
        bloc.add(const MinersEvent.loadMinersRequested());
      },
      expect: () => [
        MinersState.loadMinersInProgress(
          miners: <MinerModel>[],
          refreshSeconds: DateTime.now().second,
        )
      ],
    );
  });
}
