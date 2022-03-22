import 'package:freezed_annotation/freezed_annotation.dart';

part 'reward_model.freezed.dart';
part 'reward_model.g.dart';

@freezed
class RewardModel with _$RewardModel {
  const factory RewardModel({
    int? blockheight,
    int? timestamp,
    String? blockhash,
    int? reward,
    double? percent,
    @Default(false) bool? immature,
    double? currentLuck,
    @Default(false) bool? uncle,
    @Default(false) bool? orphan,
  }) = _RewardModel;

  factory RewardModel.fromJson(Map<String, dynamic> json) =>
      _$RewardModelFromJson(json);
}
