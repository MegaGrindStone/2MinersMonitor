import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:two_miners_api/two_miners_api.dart';
import 'package:two_miners_monitor_oss/miners/bloc/add_miner_bloc.dart';
import 'package:two_miners_monitor_oss/miners/model/add_miner_form.dart';
import 'package:two_miners_monitor_oss/miners/model/miner_model.dart';

import '../../helpers/helpers.dart';

class MockCoinRepositories extends Mock implements CoinRepositories {}

class MockBaseRepository extends Mock implements BaseRepository {}

void main() {
  group('AddMinerBloc', () {
    const dummyAccount = AccountReturnModel();
    final successMiner1 = MinerModel(
      repositoryIndex: RepositoryIndex.eth,
      walletID: 'success',
      lastUpdate: DateTime.now().millisecondsSinceEpoch,
      account: dummyAccount,
    );
    final formSuccess1 = AddMinerForm(
      repositoryIndexInput:
          RepositoryIndexInput.dirty(successMiner1.repositoryIndex),
      walletIDInput: WalletIDInput.dirty(successMiner1.walletID),
    );
    final failureMiner1 = MinerModel(
      repositoryIndex: RepositoryIndex.eth,
      walletID: 'failure',
      lastUpdate: DateTime.now().millisecondsSinceEpoch,
      account: dummyAccount,
    );
    final formFailure1 = AddMinerForm(
      repositoryIndexInput:
          RepositoryIndexInput.dirty(failureMiner1.repositoryIndex),
      walletIDInput: WalletIDInput.dirty(failureMiner1.walletID),
    );
    final failureMiner2 = MinerModel(
      repositoryIndex: RepositoryIndex.eth,
      walletID: 'failure 2',
      lastUpdate: DateTime.now().millisecondsSinceEpoch,
      account: dummyAccount,
    );
    final formFailure2 = AddMinerForm(
      repositoryIndexInput:
          RepositoryIndexInput.dirty(failureMiner2.repositoryIndex),
      walletIDInput: WalletIDInput.dirty(failureMiner2.walletID),
    );
    const dummyException = ExceptionModel(httpStatusCode: 0, message: '');
    const otherException = HttpException('dummy');

    late CoinRepositories coinRepositories;

    setUp(() {
      coinRepositories = MockCoinRepositories();
      final baseRepository = MockBaseRepository();
      when(() => coinRepositories.repositories)
          .thenReturn(<RepositoryIndex, BaseRepository>{
        RepositoryIndex.eth: baseRepository
      });
      when(() => baseRepository.accounts(successMiner1.walletID))
          .thenAnswer((_) async => dummyAccount);
      when(() => baseRepository.accounts(failureMiner1.walletID))
          .thenThrow(dummyException);
      when(() => baseRepository.accounts(failureMiner2.walletID))
          .thenThrow(otherException);
    });

    blocTest<AddMinerBloc, AddMinerState>(
      'inputChanged',
      build: () => mockHydratedStorage(
        () => AddMinerBloc(coinRepositories: coinRepositories),
      ),
      act: (bloc) => bloc.add(AddMinerEvent.inputChanged(form: formSuccess1)),
      expect: () => [AddMinerState.changeInputSuccess(form: formSuccess1)],
    );

    blocTest<AddMinerBloc, AddMinerState>(
      'submit success',
      build: () => mockHydratedStorage(
        () => AddMinerBloc(coinRepositories: coinRepositories),
      ),
      act: (bloc) => bloc.add(
        AddMinerEvent.submitted(form: formSuccess1),
      ),
      expect: () => [
        AddMinerState.submitInProgress(form: formSuccess1),
        AddMinerState.submitSuccess(form: formSuccess1, miner: successMiner1),
      ],
    );

    blocTest<AddMinerBloc, AddMinerState>(
      'submit failure with expected exception',
      build: () => mockHydratedStorage(
        () => AddMinerBloc(coinRepositories: coinRepositories),
      ),
      act: (bloc) => bloc.add(AddMinerEvent.submitted(form: formFailure1)),
      expect: () => [
        AddMinerState.submitInProgress(form: formFailure1),
        AddMinerState.submitFailure(
          exception: dummyException,
          form: formFailure1,
        )
      ],
    );

    blocTest<AddMinerBloc, AddMinerState>(
      'submit failure with other exception',
      build: () => mockHydratedStorage(
        () => AddMinerBloc(coinRepositories: coinRepositories),
      ),
      act: (bloc) => bloc.add(AddMinerEvent.submitted(form: formFailure2)),
      expect: () => [
        AddMinerState.submitInProgress(form: formFailure2),
        AddMinerState.submitFailure(
          exception: ExceptionModel(
            httpStatusCode: 0,
            message: otherException.toString(),
          ),
          form: formFailure2,
        )
      ],
    );
  });
}
