part of 'miner_bloc.dart';

@freezed
class MinerEvent with _$MinerEvent {
  const factory MinerEvent.loadMinerRequested() = _LoadMinerRequested;
}
