import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:two_miners_monitor_oss/miners/bloc/miner_bloc.dart';
import 'package:two_miners_monitor_oss/workers/model/worker_model.dart';

part 'worker_event.dart';
part 'worker_state.dart';
part 'worker_bloc.freezed.dart';

class WorkerBloc extends Bloc<WorkerEvent, WorkerState> {
  WorkerBloc({
    required MinerBloc minerBloc,
    required WorkerModel worker,
  })  : _minerBloc = minerBloc,
        super(_Initial(worker: worker)) {
    _minerBlocSubscription = _minerBloc.stream.listen((state) {
      state.whenOrNull(
        initial: (miner) => add(_WorkerLoaded(worker: worker)),
        loadMinerSuccess: (miner) => add(_WorkerLoaded(worker: worker)),
      );
    });
    on<_WorkerLoaded>(_onWorkerLoaded);
  }

  final MinerBloc _minerBloc;
  late final StreamSubscription _minerBlocSubscription;

  void _onWorkerLoaded(_WorkerLoaded event, Emitter<WorkerState> emit) {
    emit(_LoadWorkerSuccess(worker: event.worker));
  }

  @override
  Future<void> close() {
    _minerBlocSubscription.cancel();
    return super.close();
  }
}
