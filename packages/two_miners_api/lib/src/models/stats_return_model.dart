import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats_return_model.freezed.dart';
part 'stats_return_model.g.dart';

@freezed
class StatsReturnModel with _$StatsReturnModel {
  const factory StatsReturnModel({
    List<NodeModel>? nodes,
    GlobalStatModel? stats,
  }) = _StatsReturnModel;
  const StatsReturnModel._();

  factory StatsReturnModel.fromJson(Map<String, dynamic> json) =>
      _$StatsReturnModelFromJson(json);

  int blockReward() =>
      (nodes?.isEmpty ?? true) ? 1 : (int.parse(nodes?[0].blockReward ?? '1'));
}

@freezed
class GlobalStatModel with _$GlobalStatModel {
  const factory GlobalStatModel({int? nShares}) = _GlobalStatModel;

  factory GlobalStatModel.fromJson(Map<String, dynamic> json) =>
      _$GlobalStatModelFromJson(json);
}

@freezed
class NodeModel with _$NodeModel {
  const factory NodeModel({required String? blockReward}) = _NodeModel;

  factory NodeModel.fromJson(Map<String, dynamic> json) =>
      _$NodeModelFromJson(json);
}
