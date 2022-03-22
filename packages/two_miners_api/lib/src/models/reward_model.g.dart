// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RewardModel _$$_RewardModelFromJson(Map<String, dynamic> json) =>
    _$_RewardModel(
      blockheight: json['blockheight'] as int?,
      timestamp: json['timestamp'] as int?,
      blockhash: json['blockhash'] as String?,
      reward: json['reward'] as int?,
      percent: (json['percent'] as num?)?.toDouble(),
      immature: json['immature'] as bool? ?? false,
      currentLuck: (json['currentLuck'] as num?)?.toDouble(),
      uncle: json['uncle'] as bool? ?? false,
      orphan: json['orphan'] as bool? ?? false,
    );

Map<String, dynamic> _$$_RewardModelToJson(_$_RewardModel instance) =>
    <String, dynamic>{
      'blockheight': instance.blockheight,
      'timestamp': instance.timestamp,
      'blockhash': instance.blockhash,
      'reward': instance.reward,
      'percent': instance.percent,
      'immature': instance.immature,
      'currentLuck': instance.currentLuck,
      'uncle': instance.uncle,
      'orphan': instance.orphan,
    };
