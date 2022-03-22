part of 'miners_bloc.dart';

@freezed
class MinersState with _$MinersState {
  const factory MinersState.initial({required List<MinerModel> miners}) =
      _Initial;

  const factory MinersState.loadMinersInProgress({
    required List<MinerModel> miners,
    // required so each emit of this state is unique, for Bloc to be trigerred.
    required int refreshSeconds,
  }) = _LoadMinersInProgress;
  const factory MinersState.loadMinersSuccess({
    required List<MinerModel> miners,
  }) = _LoadMinersSuccess;
}
