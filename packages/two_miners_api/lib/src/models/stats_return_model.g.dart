// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_return_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatsReturnModel _$$_StatsReturnModelFromJson(Map<String, dynamic> json) =>
    _$_StatsReturnModel(
      nodes: (json['nodes'] as List<dynamic>?)
          ?.map((e) => NodeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      stats: json['stats'] == null
          ? null
          : GlobalStatModel.fromJson(json['stats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StatsReturnModelToJson(_$_StatsReturnModel instance) =>
    <String, dynamic>{
      'nodes': instance.nodes,
      'stats': instance.stats,
    };

_$_GlobalStatModel _$$_GlobalStatModelFromJson(Map<String, dynamic> json) =>
    _$_GlobalStatModel(
      nShares: json['nShares'] as int?,
    );

Map<String, dynamic> _$$_GlobalStatModelToJson(_$_GlobalStatModel instance) =>
    <String, dynamic>{
      'nShares': instance.nShares,
    };

_$_NodeModel _$$_NodeModelFromJson(Map<String, dynamic> json) => _$_NodeModel(
      blockReward: json['blockReward'] as String?,
    );

Map<String, dynamic> _$$_NodeModelToJson(_$_NodeModel instance) =>
    <String, dynamic>{
      'blockReward': instance.blockReward,
    };
