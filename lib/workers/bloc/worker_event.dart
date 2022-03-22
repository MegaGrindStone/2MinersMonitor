part of 'worker_bloc.dart';

@freezed
class WorkerEvent with _$WorkerEvent {
  const factory WorkerEvent.workerLoaded({
    required WorkerModel worker,
  }) = _WorkerLoaded;
}
