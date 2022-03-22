import 'package:freezed_annotation/freezed_annotation.dart';

part 'sumrewards_model.freezed.dart';
part 'sumrewards_model.g.dart';

@freezed
class SumrewardsModel with _$SumrewardsModel {
  const factory SumrewardsModel({
    int? interval,
    int? reward,
    int? numreward,
    String? name,
    int? offset,
  }) = _SumrewardsModel;

  factory SumrewardsModel.fromJson(Map<String, dynamic> json) =>
      _$SumrewardsModelFromJson(json);
}
