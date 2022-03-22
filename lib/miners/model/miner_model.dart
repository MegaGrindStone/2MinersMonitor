import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:two_miners_api/two_miners_api.dart';
import 'package:two_miners_monitor_oss/extension.dart';
import 'package:two_miners_monitor_oss/payouts/model/payout_model.dart';
import 'package:two_miners_monitor_oss/rewards/model/reward_model.dart'
    as reward_model;
import 'package:two_miners_monitor_oss/workers/model/worker_model.dart';

part 'miner_model.freezed.dart';
part 'miner_model.g.dart';

@immutable
@freezed
class MinerModel with _$MinerModel {
  const factory MinerModel({
    required RepositoryIndex repositoryIndex,
    required String walletID,
    required int lastUpdate,
    @JsonKey(ignore: true) BaseRepository? repository,
    AccountReturnModel? account,
  }) = _MinerModel;
  const MinerModel._();

  factory MinerModel.fromJson(Map<String, dynamic> json) =>
      _$MinerModelFromJson(json);

  // RepositoryIndex needs to be included in equality check,
  // because there's case miner use same walletID (address)
  // for solo and non solo.
  //
  // At this time of writing, "0x92568395ec4e9b7f6d94e0c18c0c3bf294370354"
  // is the example address that exist in ETH and ETH SOLO.
  @override
  bool operator ==(Object other) =>
      other is MinerModel &&
      ((other.walletID == walletID) &&
          (other.repositoryIndex == repositoryIndex));

  @override
  int get hashCode => '$walletID$repositoryIndex'.hashCode;

  double get unconfirmed =>
      (account?.stats?.immature ?? 0) / (repository?.divisor ?? 1);
  double get unpaid =>
      (account?.stats?.balance ?? 0) / (repository?.divisor ?? 1);
  double get currentHashrate => account?.currentHashrate ?? 0.0;
  String get currentHashrateWithUnit => (account?.currentHashrate ?? 0.0)
      .hashrateWithUnit(repository?.unit ?? '');
  double get averageHashrate => account?.hashrate ?? 0.0;
  String get averageHashrateWithUnit =>
      (account?.hashrate ?? 0.0).hashrateWithUnit(repository?.unit ?? '');
  double get unpaidProgress =>
      (unpaid * (repository?.divisor ?? 1)) / (account?.config?.minPayout ?? 1);
  double get totalPaid =>
      (account?.stats?.paid ?? 0) / (repository?.divisor ?? 1);
  double get last24Reward =>
      (account?.a24hreward ?? 0) / (repository?.divisor ?? 1);
  int get workersOnline => account?.workersOnline ?? 0;
  int get workersOffline => account?.workersOffline ?? 0;
  DateTime get lastShare => DateTime.fromMillisecondsSinceEpoch(
        (account?.stats?.lastShare ?? 0) * 1000,
      );
  int get roundShares => account?.roundShares ?? 0;
  int get validShares => account?.sharesValid ?? 0;
  int get invalidShares => account?.sharesInvalid ?? 0;
  int get staleShares => account?.sharesStale ?? 0;

  double get validSharePercentage {
    final totalShares = validShares + invalidShares;
    if (totalShares == 0) {
      return 0;
    }
    return validShares / totalShares * 100;
  }

  int get block24 =>
      ((account?.sumrewards ?? []).firstWhere(
        (element) => element.name == 'Last 24 hours',
        orElse: () => const SumrewardsModel(numreward: 0),
      )).numreward ??
      0;
  int get block30 =>
      ((account?.sumrewards ?? []).firstWhere(
        (element) => element.name == 'Last 30 days',
        orElse: () => const SumrewardsModel(numreward: 0),
      )).numreward ??
      0;
  double get personalLuck => double.parse(account?.currentLuck ?? '0');

  String get webURL =>
      '${repository?.server.replaceAll('api', '')}account/$walletID';

  double roundSharePercentage(int nShare) => (roundShares / nShare) * 100;

  List<WorkerModel> get workers =>
      (account?.workers ?? <String, WorkerGroupModel>{})
          .entries
          .map(
            (entry) => WorkerModel(
              name: entry.key,
              currentHashrate: entry.value.hr ?? 0.0,
              averageHashrate: entry.value.hr2 ?? 0.0,
              lastShare: DateTime.fromMillisecondsSinceEpoch(
                (entry.value.lastBeat ?? 0) * 1000,
              ),
              isOffline: entry.value.offline ?? false,
              unit: repository?.unit ?? '',
            ),
          )
          .toList();

  List<reward_model.RewardModel> get rewards =>
      (account?.rewards ?? <RewardModel>[])
          .map(
            (reward) => reward_model.RewardModel(
              blockNumber: reward.blockheight ?? 0,
              time: DateTime.fromMillisecondsSinceEpoch(
                (reward.timestamp ?? 0) * 1000,
              ),
              blockHash: reward.blockhash ?? '',
              reward: (reward.reward ?? 0) / (repository?.divisor ?? 1),
              percentage: (reward.percent ?? 0) * 100,
              personalLuck: reward.currentLuck ?? 0,
              isImmature: reward.immature ?? false,
              isUncle: reward.uncle ?? false,
              isOrphan: reward.orphan ?? false,
              isSolo: repository?.soloMode ?? false,
            ),
          )
          .toList();

  List<PayoutModel> get payouts => (account?.payments ?? <PaymentModel>[])
      .map(
        (payment) => PayoutModel(
          amount: (payment.amount ?? 0) / (repository?.divisor ?? 1),
          time: DateTime.fromMillisecondsSinceEpoch(
            (payment.timestamp ?? 0) * 1000,
          ),
          txID: payment.tx ?? '',
          txFee: payment.txFee != null
              ? (payment.txFee ?? 0) / (repository?.divisor ?? 1)
              : null,
        ),
      )
      .toList();
}
