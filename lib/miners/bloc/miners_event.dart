part of 'miners_bloc.dart';

@freezed
class MinersEvent with _$MinersEvent {
  const factory MinersEvent.minerAdded({required MinerModel miner}) =
      _MinerAdded;
  const factory MinersEvent.minerRemoved({required MinerModel miner}) =
      _MinerRemoved;
  const factory MinersEvent.minerUpdated({required MinerModel miner}) =
      _MinerUpdated;
  const factory MinersEvent.loadMinersRequested() = _LoadMinersRequested;
}
