part of 'add_miner_bloc.dart';

@freezed
class AddMinerEvent with _$AddMinerEvent {
  const factory AddMinerEvent.inputChanged({required AddMinerForm form}) =
      _InputChanged;
  const factory AddMinerEvent.submitted({required AddMinerForm form}) =
      _Submitted;
}
