import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:two_miners_api/two_miners_api.dart';
import 'package:two_miners_monitor_oss/miners/bloc/miners_bloc.dart';
import 'package:two_miners_monitor_oss/miners/model/miner_model.dart';

part 'miner_event.dart';
part 'miner_state.dart';
part 'miner_bloc.freezed.dart';

class MinerBloc extends Bloc<MinerEvent, MinerState> {
  MinerBloc({
    required MinersBloc minersBloc,
    required MinerModel miner,
  })  : _minersBloc = minersBloc,
        _miner = miner,
        super(_Initial(miner: miner)) {
    _minersBlocSubscription = _minersBloc.stream.listen((state) {
      state.whenOrNull(
        loadMinersInProgress: (miners, refreshSeconds) =>
            add(const _LoadMinerRequested()),
      );
    });
    on<_LoadMinerRequested>(_onLoadMinerRequested);
  }

  final MinersBloc _minersBloc;
  final MinerModel _miner;

  late final StreamSubscription _minersBlocSubscription;

  Future<void> _onLoadMinerRequested(
    _LoadMinerRequested event,
    Emitter<MinerState> emit,
  ) async {
    emit(const _LoadMinerInProgress());
    try {
      final accounts = await _miner.repository!.accounts(_miner.walletID);
      final newMiner = _miner.copyWith(
        account: accounts,
        lastUpdate: DateTime.now().millisecondsSinceEpoch,
      );
      emit(
        _LoadMinerSuccess(
          miner: newMiner,
        ),
      );
      _minersBloc.add(MinersEvent.minerUpdated(miner: newMiner));
    } on ExceptionModel catch (e) {
      emit(_LoadMinerFailure(exception: e));
    } on Exception catch (e) {
      emit(
        _LoadMinerFailure(
          exception: ExceptionModel(httpStatusCode: 0, message: e.toString()),
        ),
      );
    }
  }

  @override
  Future<void> close() {
    _minersBlocSubscription.cancel();
    return super.close();
  }
}
