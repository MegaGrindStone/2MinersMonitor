// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worker_group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkerGroup _$$_WorkerGroupFromJson(Map<String, dynamic> json) =>
    _$_WorkerGroup(
      lastBeat: json['lastBeat'] as int?,
      hr: (json['hr'] as num?)?.toDouble(),
      hr2: (json['hr2'] as num?)?.toDouble(),
      rhr: (json['rhr'] as num?)?.toDouble(),
      offline: json['offline'] as bool? ?? false,
    );

Map<String, dynamic> _$$_WorkerGroupToJson(_$_WorkerGroup instance) =>
    <String, dynamic>{
      'lastBeat': instance.lastBeat,
      'hr': instance.hr,
      'hr2': instance.hr2,
      'rhr': instance.rhr,
      'offline': instance.offline,
    };
