part of 'add_miner_bloc.dart';

@freezed
class AddMinerState with _$AddMinerState {
  const factory AddMinerState.initial({required AddMinerForm form}) = _Initial;
  const factory AddMinerState.changeInputSuccess({required AddMinerForm form}) =
      _ChangeInputSuccess;
  const factory AddMinerState.submitInProgress({required AddMinerForm form}) =
      _SubmitInProgress;
  const factory AddMinerState.submitSuccess({
    required AddMinerForm form,
    required MinerModel miner,
  }) = _SubmitSuccess;
  const factory AddMinerState.submitFailure({
    required AddMinerForm form,
    required ExceptionModel exception,
  }) = _SubmitFailure;
}
