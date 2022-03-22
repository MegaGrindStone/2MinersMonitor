part of 'worker_bloc.dart';

@freezed
class WorkerState with _$WorkerState {
  const factory WorkerState.initial({
    required WorkerModel worker,
  }) = _Initial;

  const factory WorkerState.loadWorkerSuccess({
    required WorkerModel worker,
  }) = _LoadWorkerSuccess;
}
