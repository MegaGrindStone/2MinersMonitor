import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:two_miners_api/two_miners_api.dart';
import 'package:two_miners_monitor_oss/app/bloc/stats_bloc.dart';
import 'package:two_miners_monitor_oss/app/model/start_ticker.dart';
import 'package:two_miners_monitor_oss/miners/model/miner_model.dart';

import '../../helpers/helpers.dart';

class MockBaseRepository extends Mock implements BaseRepository {}

void main() {
  group('StatsBloc', () {
    final dummyRepository1 = MockBaseRepository();
    final dummyRepository2 = MockBaseRepository();
    final dummyMiners = <MinerModel>[
      MinerModel(
        repositoryIndex: RepositoryIndex.eth,
        walletID: 'dummy1',
        lastUpdate: DateTime.now().millisecondsSinceEpoch,
        repository: dummyRepository1,
      ),
      MinerModel(
        repositoryIndex: RepositoryIndex.ethSolo,
        walletID: 'dummy2',
        lastUpdate: DateTime.now().millisecondsSinceEpoch,
        repository: dummyRepository2,
      ),
    ];
    const dummyStats1 = StatsReturnModel(stats: GlobalStatModel(nShares: 1));
    const dummyStats2 = StatsReturnModel(stats: GlobalStatModel(nShares: 2));

    late StatsBloc statsBloc;

    setUp(() {
      mockHydratedStorage(
        () {
          statsBloc = StatsBloc(ticker: const StatTicker());
          expect(
            statsBloc.fromJson(<String, dynamic>{'stats': <String, dynamic>{}}),
            const StatsState.initial(statMap: {}),
          );
          expect(
            statsBloc.fromJson(<String, dynamic>{}),
            const StatsState.initial(statMap: {}),
          );
        },
      );
    });

    tearDown(() {
      statsBloc.close();
    });

    blocTest<StatsBloc, StatsState>(
      'ticked when started',
      build: () {
        when(dummyRepository1.stats).thenAnswer((_) async => dummyStats1);
        when(dummyRepository2.stats).thenAnswer((_) async => dummyStats2);
        return mockHydratedStorage(() => statsBloc);
      },
      act: (bloc) => bloc.add(StatsEvent.started(miners: dummyMiners)),
      expect: () => [
        const StatsState.changeStatSuccess(
          statMap: <RepositoryIndex, StatsReturnModel?>{},
        ),
        StatsState.changeStatSuccess(
          statMap: <RepositoryIndex, StatsReturnModel?>{
            dummyMiners[0].repositoryIndex: dummyStats1,
            dummyMiners[1].repositoryIndex: dummyStats2,
          },
        )
      ],
    );
  });
}
