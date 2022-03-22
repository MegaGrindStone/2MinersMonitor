part of 'reward_bloc.dart';

@freezed
class RewardEvent with _$RewardEvent {
  const factory RewardEvent.rewardLoaded({
    required MinerModel miner,
    required RewardModel reward,
  }) = _RewardLoaded;
}
