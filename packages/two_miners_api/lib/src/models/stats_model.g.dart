// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatsModel _$$_StatsModelFromJson(Map<String, dynamic> json) =>
    _$_StatsModel(
      balance: json['balance'] as int?,
      blocksFound: json['blocksFound'] as int?,
      immature: json['immature'] as int?,
      lastShare: json['lastShare'] as int?,
      paid: json['paid'] as int?,
    );

Map<String, dynamic> _$$_StatsModelToJson(_$_StatsModel instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'blocksFound': instance.blocksFound,
      'immature': instance.immature,
      'lastShare': instance.lastShare,
      'paid': instance.paid,
    };
