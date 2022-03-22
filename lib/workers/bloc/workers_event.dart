part of 'workers_bloc.dart';

@freezed
class WorkersEvent with _$WorkersEvent {
  const factory WorkersEvent.tabTapped({required int tabIndex}) = _TabTapped;
}
