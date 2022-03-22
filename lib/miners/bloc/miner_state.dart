part of 'miner_bloc.dart';

@freezed
class MinerState with _$MinerState {
  const factory MinerState.initial({required MinerModel miner}) = _Initial;

  const factory MinerState.loadMinerInProgress() = _LoadMinerInProgress;
  const factory MinerState.loadMinerSuccess({required MinerModel miner}) =
      _LoadMinerSuccess;
  const factory MinerState.loadMinerFailure({
    required ExceptionModel exception,
  }) = _LoadMinerFailure;
}
