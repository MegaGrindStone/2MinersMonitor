// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oss_licenses_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OSSLicensesModel _$$_OSSLicensesModelFromJson(Map<String, dynamic> json) =>
    _$_OSSLicensesModel(
      name: json['name'] as String?,
      description: json['description'] as String?,
      homepage: json['homepage'] as String?,
      repository: json['repository'] as String?,
      authors:
          (json['authors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      version: json['version'] as String?,
      license: json['license'] as String?,
    );

Map<String, dynamic> _$$_OSSLicensesModelToJson(_$_OSSLicensesModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'homepage': instance.homepage,
      'repository': instance.repository,
      'authors': instance.authors,
      'version': instance.version,
      'license': instance.license,
    };
