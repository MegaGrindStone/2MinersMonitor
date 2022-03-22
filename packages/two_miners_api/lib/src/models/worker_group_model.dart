import 'package:freezed_annotation/freezed_annotation.dart';

part 'worker_group_model.freezed.dart';
part 'worker_group_model.g.dart';

@freezed
class WorkerGroupModel with _$WorkerGroupModel {
  const factory WorkerGroupModel({
    int? lastBeat,
    double? hr,
    double? hr2,
    double? rhr,
    @Default(false) bool? offline,
  }) = _WorkerGroup;

  factory WorkerGroupModel.fromJson(Map<String, dynamic> json) =>
      _$WorkerGroupModelFromJson(json);
}
