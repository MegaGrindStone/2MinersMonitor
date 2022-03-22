part of 'stats_bloc.dart';

@freezed
class StatsEvent with _$StatsEvent {
  const factory StatsEvent.started({
    required List<MinerModel> miners,
  }) = _Started;

  const factory StatsEvent.timerTicked({
    required Map<RepositoryIndex, StatsReturnModel?> statMap,
  }) = _TimerTicked;
}
