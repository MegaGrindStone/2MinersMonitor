import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:two_miners_api/two_miners_api.dart';
import 'package:two_miners_monitor_oss/app/model/start_ticker.dart';
import 'package:two_miners_monitor_oss/miners/model/miner_model.dart';

part 'stats_event.dart';
part 'stats_state.dart';
part 'stats_bloc.freezed.dart';

class StatsBloc extends HydratedBloc<StatsEvent, StatsState> {
  StatsBloc({required StatTicker ticker})
      : _ticker = ticker,
        super(const _Initial(statMap: {})) {
    on<_Started>(_onStarted);
    on<_TimerTicked>(_onTimerTicked);
  }

  final StatTicker _ticker;
  StreamSubscription<Map<RepositoryIndex, StatsReturnModel?>>?
      _tickerSubscriptions;

  void _onStarted(_Started event, Emitter<StatsState> emit) {
    emit(_ChangeStatSuccess(statMap: state.statMap));
    _tickerSubscriptions?.cancel();
    _tickerSubscriptions = _ticker.tick(miners: event.miners).listen((statMap) {
      add(_TimerTicked(statMap: statMap));
    });
  }

  void _onTimerTicked(_TimerTicked event, Emitter<StatsState> emit) {
    emit(_ChangeStatSuccess(statMap: event.statMap));
  }

  @override
  Future<void> close() async {
    await _tickerSubscriptions?.cancel();
    await super.close();
  }

  @override
  StatsState? fromJson(Map<String, dynamic> json) => StatsState.initial(
        statMap: Map<RepositoryIndex, StatsReturnModel>.from(
          (json['stats'] as Map<String, dynamic>?) ??
              <RepositoryIndex, StatsReturnModel>{},
        ),
      );

  @override
  Map<String, dynamic>? toJson(StatsState state) => state.whenOrNull(
        changeStatSuccess: (statMap) => <String, dynamic>{'stats': statMap},
      );
}
