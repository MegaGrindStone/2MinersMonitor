import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:two_miners_api/two_miners_api.dart';

part 'account_return_model.freezed.dart';
part 'account_return_model.g.dart';

@freezed
class AccountReturnModel with _$AccountReturnModel {
  const factory AccountReturnModel({
    double? currentHashrate,
    String? currentLuck,
    double? hashrate,
    int? pageSize,
    ConfigModel? config,
    List<PaymentModel>? payments,
    int? paymentsTotal,
    List<RewardModel>? rewards,
    int? roundShares,
    int? sharesInvalid,
    int? sharesStale,
    int? sharesValid,
    StatsModel? stats,
    List<SumrewardsModel>? sumrewards,
    Map<String, WorkerGroupModel>? workers,
    int? workersOffline,
    int? workersOnline,
    int? workersTotal,
    @JsonKey(name: '24hreward') int? a24hreward,
    @JsonKey(name: '24hnumreward') int? a24hnumreward,
  }) = _AccountReturnModel;

  factory AccountReturnModel.fromJson(Map<String, dynamic> json) =>
      _$AccountReturnModelFromJson(json);
}
