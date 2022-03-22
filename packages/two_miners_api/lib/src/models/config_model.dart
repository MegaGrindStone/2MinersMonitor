import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_model.freezed.dart';
part 'config_model.g.dart';

@freezed
class ConfigModel with _$ConfigModel {
  const factory ConfigModel({int? minPayout}) = _ConfigModel;

  factory ConfigModel.fromJson(Map<String, dynamic> json) =>
      _$ConfigModelFromJson(json);
}
