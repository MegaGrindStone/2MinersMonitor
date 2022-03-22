part of 'payouts_bloc.dart';

@freezed
class PayoutsState with _$PayoutsState {
  const factory PayoutsState.initial({required int tabIndex}) = _Initial;
  const factory PayoutsState.tabIndexChangeSuccess({required int tabIndex}) =
      _TabIndexChangeSuccess;
}
