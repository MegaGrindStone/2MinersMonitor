import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:two_miners_api/two_miners_api.dart';
import 'package:two_miners_monitor_oss/miners/bloc/miner_bloc.dart';
import 'package:two_miners_monitor_oss/miners/bloc/miners_bloc.dart';
import 'package:two_miners_monitor_oss/miners/model/miner_model.dart';

import '../../helpers/helpers.dart';

class MockCoinRepositories extends Mock implements CoinRepositories {}

class MockBaseRepository extends Mock implements BaseRepository {}

class MockMinersBloc extends MockBloc<MinersEvent, MinersState>
    implements MinersBloc {}

void main() {
  group('MinerBloc', () {
    final coinRepositories = MockCoinRepositories();
    final baseRepository = MockBaseRepository();

    const dummyAccount = AccountReturnModel();
    final successMiner1 = MinerModel(
      repositoryIndex: RepositoryIndex.eth,
      walletID: 'success',
      lastUpdate: DateTime.now().millisecondsSinceEpoch,
      repository: baseRepository,
      account: dummyAccount,
    );
    final failureMiner1 = MinerModel(
      repositoryIndex: RepositoryIndex.eth,
      walletID: 'failure',
      lastUpdate: DateTime.now().millisecondsSinceEpoch,
      repository: baseRepository,
      account: dummyAccount,
    );
    final failureMiner2 = MinerModel(
      repositoryIndex: RepositoryIndex.eth,
      walletID: 'failure 2',
      lastUpdate: DateTime.now().millisecondsSinceEpoch,
      repository: baseRepository,
      account: dummyAccount,
    );
    const dummyException = ExceptionModel(httpStatusCode: 0, message: '');
    const otherException = HttpException('dummy');

    final minersBloc = MockMinersBloc();

    setUp(() {
      when(() => coinRepositories.repositories)
          .thenReturn(<RepositoryIndex, BaseRepository>{
        RepositoryIndex.eth: baseRepository
      });
    });

    // blocTest('when MinersBloc request update, MinerBloc response',)

    blocTest<MinerBloc, MinerState>(
      'load miner success',
      build: () => mockHydratedStorage(
        () {
          when(() => baseRepository.accounts(successMiner1.walletID))
              .thenAnswer((_) async => dummyAccount);
          return MinerBloc(
            miner: successMiner1,
            minersBloc: minersBloc,
          );
        },
      ),
      act: (bloc) => bloc.add(const MinerEvent.loadMinerRequested()),
      expect: () => [
        const MinerState.loadMinerInProgress(),
        MinerState.loadMinerSuccess(miner: successMiner1)
      ],
    );

    blocTest<MinerBloc, MinerState>(
      'load miner failure with expected exception',
      build: () => mockHydratedStorage(
        () {
          when(() => baseRepository.accounts(failureMiner1.walletID))
              .thenThrow(dummyException);
          return MinerBloc(
            miner: failureMiner1,
            minersBloc: minersBloc,
          );
        },
      ),
      act: (bloc) => bloc.add(const MinerEvent.loadMinerRequested()),
      expect: () => [
        const MinerState.loadMinerInProgress(),
        const MinerState.loadMinerFailure(exception: dummyException)
      ],
    );

    blocTest<MinerBloc, MinerState>(
      'load miner failure with other exception',
      build: () => mockHydratedStorage(
        () {
          when(() => baseRepository.accounts(failureMiner2.walletID))
              .thenThrow(otherException);
          return MinerBloc(
            miner: failureMiner2,
            minersBloc: minersBloc,
          );
        },
      ),
      act: (bloc) => bloc.add(const MinerEvent.loadMinerRequested()),
      expect: () => [
        const MinerState.loadMinerInProgress(),
        MinerState.loadMinerFailure(
          exception: ExceptionModel(
            httpStatusCode: 0,
            message: otherException.toString(),
          ),
        )
      ],
    );
  });
}
