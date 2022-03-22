part of 'rewards_bloc.dart';

@freezed
class RewardsState with _$RewardsState {
  const factory RewardsState.initial({required int tabIndex}) = _Initial;
  const factory RewardsState.tabIndexChangeSuccess({required int tabIndex}) =
      _TabIndexChangeSuccess;
}
