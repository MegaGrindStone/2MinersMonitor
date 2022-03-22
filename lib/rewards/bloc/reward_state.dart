part of 'reward_bloc.dart';

@freezed
class RewardState with _$RewardState {
  const factory RewardState.initial({
    required MinerModel miner,
    required RewardModel reward,
  }) = _Initial;

  const factory RewardState.loadRewardSuccess({
    required MinerModel miner,
    required RewardModel reward,
  }) = _LoadRewardSuccess;
}
