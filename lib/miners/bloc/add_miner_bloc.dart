import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:two_miners_api/two_miners_api.dart';
import 'package:two_miners_monitor_oss/miners/model/add_miner_form.dart';
import 'package:two_miners_monitor_oss/miners/model/miner_model.dart';

part 'add_miner_event.dart';
part 'add_miner_state.dart';
part 'add_miner_bloc.freezed.dart';

class AddMinerBloc extends Bloc<AddMinerEvent, AddMinerState> {
  AddMinerBloc({required CoinRepositories coinRepositories})
      : _coinRepositories = coinRepositories,
        super(
          const _Initial(
            form: AddMinerForm(
              repositoryIndexInput: RepositoryIndexInput.pure(),
              walletIDInput: WalletIDInput.pure(),
            ),
          ),
        ) {
    on<_InputChanged>(_onInputChanged);
    on<_Submitted>(_onSubmitted);
  }

  final CoinRepositories _coinRepositories;

  Future<void> _onInputChanged(
    _InputChanged event,
    Emitter<AddMinerState> emit,
  ) async {
    emit(_ChangeInputSuccess(form: event.form));
  }

  Future<void> _onSubmitted(
    _Submitted event,
    Emitter<AddMinerState> emit,
  ) async {
    emit(_SubmitInProgress(form: event.form));
    final walletID = event.form.walletIDInput.value;
    final repositoryIndex = event.form.repositoryIndexInput.value;
    try {
      final repository =
          _coinRepositories.repositories[event.form.repositoryIndexInput.value];
      final accounts = await repository!.accounts(walletID);
      final now = DateTime.now();
      emit(
        _SubmitSuccess(
          form: state.form,
          miner: MinerModel(
            repositoryIndex: repositoryIndex,
            repository: repository,
            walletID: walletID,
            lastUpdate: now.millisecondsSinceEpoch,
            account: accounts,
          ),
        ),
      );
    } on ExceptionModel catch (e) {
      emit(_SubmitFailure(form: state.form, exception: e));
    } on Exception catch (e) {
      emit(
        _SubmitFailure(
          form: state.form,
          exception: ExceptionModel(httpStatusCode: 0, message: e.toString()),
        ),
      );
    }
  }
}
