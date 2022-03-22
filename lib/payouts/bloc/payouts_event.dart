part of 'payouts_bloc.dart';

@freezed
class PayoutsEvent with _$PayoutsEvent {
  const factory PayoutsEvent.tabTapped({required int tabIndex}) = _TabTapped;
}
