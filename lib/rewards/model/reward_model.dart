import 'package:freezed_annotation/freezed_annotation.dart';

part 'reward_model.freezed.dart';

@freezed
class RewardModel with _$RewardModel {
  const factory RewardModel({
    required int blockNumber,
    required DateTime time,
    required String blockHash,
    required double reward,
    required double percentage,
    required double personalLuck,
    required bool isImmature,
    required bool isUncle,
    required bool isOrphan,
    required bool isSolo,
  }) = _RewardModel;
}
