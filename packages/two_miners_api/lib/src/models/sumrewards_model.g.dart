// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sumrewards_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SumrewardsModel _$$_SumrewardsModelFromJson(Map<String, dynamic> json) =>
    _$_SumrewardsModel(
      interval: json['interval'] as int?,
      reward: json['reward'] as int?,
      numreward: json['numreward'] as int?,
      name: json['name'] as String?,
      offset: json['offset'] as int?,
    );

Map<String, dynamic> _$$_SumrewardsModelToJson(_$_SumrewardsModel instance) =>
    <String, dynamic>{
      'interval': instance.interval,
      'reward': instance.reward,
      'numreward': instance.numreward,
      'name': instance.name,
      'offset': instance.offset,
    };
