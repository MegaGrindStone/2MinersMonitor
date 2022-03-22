import 'package:freezed_annotation/freezed_annotation.dart';

part 'oss_licenses_model.freezed.dart';
part 'oss_licenses_model.g.dart';

@freezed
class OSSLicensesModel with _$OSSLicensesModel {
  const factory OSSLicensesModel({
    String? name,
    String? description,
    String? homepage,
    String? repository,
    List<String>? authors,
    String? version,
    String? license,
  }) = _OSSLicensesModel;

  factory OSSLicensesModel.fromJson(Map<String, dynamic> json) =>
      _$OSSLicensesModelFromJson(json);
}
