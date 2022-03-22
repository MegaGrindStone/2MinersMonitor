// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_return_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountReturnModel _$$_AccountReturnModelFromJson(
        Map<String, dynamic> json) =>
    _$_AccountReturnModel(
      currentHashrate: (json['currentHashrate'] as num?)?.toDouble(),
      currentLuck: json['currentLuck'] as String?,
      hashrate: (json['hashrate'] as num?)?.toDouble(),
      pageSize: json['pageSize'] as int?,
      config: json['config'] == null
          ? null
          : ConfigModel.fromJson(json['config'] as Map<String, dynamic>),
      payments: (json['payments'] as List<dynamic>?)
          ?.map((e) => PaymentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentsTotal: json['paymentsTotal'] as int?,
      rewards: (json['rewards'] as List<dynamic>?)
          ?.map((e) => RewardModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      roundShares: json['roundShares'] as int?,
      sharesInvalid: json['sharesInvalid'] as int?,
      sharesStale: json['sharesStale'] as int?,
      sharesValid: json['sharesValid'] as int?,
      stats: json['stats'] == null
          ? null
          : StatsModel.fromJson(json['stats'] as Map<String, dynamic>),
      sumrewards: (json['sumrewards'] as List<dynamic>?)
          ?.map((e) => SumrewardsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      workers: (json['workers'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, WorkerGroupModel.fromJson(e as Map<String, dynamic>)),
      ),
      workersOffline: json['workersOffline'] as int?,
      workersOnline: json['workersOnline'] as int?,
      workersTotal: json['workersTotal'] as int?,
      a24hreward: json['24hreward'] as int?,
      a24hnumreward: json['24hnumreward'] as int?,
    );

Map<String, dynamic> _$$_AccountReturnModelToJson(
        _$_AccountReturnModel instance) =>
    <String, dynamic>{
      'currentHashrate': instance.currentHashrate,
      'currentLuck': instance.currentLuck,
      'hashrate': instance.hashrate,
      'pageSize': instance.pageSize,
      'config': instance.config,
      'payments': instance.payments,
      'paymentsTotal': instance.paymentsTotal,
      'rewards': instance.rewards,
      'roundShares': instance.roundShares,
      'sharesInvalid': instance.sharesInvalid,
      'sharesStale': instance.sharesStale,
      'sharesValid': instance.sharesValid,
      'stats': instance.stats,
      'sumrewards': instance.sumrewards,
      'workers': instance.workers,
      'workersOffline': instance.workersOffline,
      'workersOnline': instance.workersOnline,
      'workersTotal': instance.workersTotal,
      '24hreward': instance.a24hreward,
      '24hnumreward': instance.a24hnumreward,
    };
