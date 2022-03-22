part of 'rewards_bloc.dart';

@freezed
class RewardsEvent with _$RewardsEvent {
  const factory RewardsEvent.tabTapped({required int tabIndex}) = _TabTapped;
}
