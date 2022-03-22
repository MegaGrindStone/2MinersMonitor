part of 'stats_bloc.dart';

@freezed
class StatsState with _$StatsState {
  const factory StatsState.initial({
    required Map<RepositoryIndex, StatsReturnModel?> statMap,
  }) = _Initial;

  const factory StatsState.changeStatSuccess({
    required Map<RepositoryIndex, StatsReturnModel?> statMap,
  }) = _ChangeStatSuccess;
}
