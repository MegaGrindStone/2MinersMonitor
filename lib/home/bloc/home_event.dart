part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.navSelected({required String uri}) = _NavSelected;
  const factory HomeEvent.navTapped({required String uri}) = _NavTapped;
}
