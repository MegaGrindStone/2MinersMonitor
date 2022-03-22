// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_return_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountReturnModel _$AccountReturnModelFromJson(Map<String, dynamic> json) {
  return _AccountReturnModel.fromJson(json);
}

/// @nodoc
class _$AccountReturnModelTearOff {
  const _$AccountReturnModelTearOff();

  _AccountReturnModel call(
      {double? currentHashrate,
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
      @JsonKey(name: '24hnumreward') int? a24hnumreward}) {
    return _AccountReturnModel(
      currentHashrate: currentHashrate,
      currentLuck: currentLuck,
      hashrate: hashrate,
      pageSize: pageSize,
      config: config,
      payments: payments,
      paymentsTotal: paymentsTotal,
      rewards: rewards,
      roundShares: roundShares,
      sharesInvalid: sharesInvalid,
      sharesStale: sharesStale,
      sharesValid: sharesValid,
      stats: stats,
      sumrewards: sumrewards,
      workers: workers,
      workersOffline: workersOffline,
      workersOnline: workersOnline,
      workersTotal: workersTotal,
      a24hreward: a24hreward,
      a24hnumreward: a24hnumreward,
    );
  }

  AccountReturnModel fromJson(Map<String, Object?> json) {
    return AccountReturnModel.fromJson(json);
  }
}

/// @nodoc
const $AccountReturnModel = _$AccountReturnModelTearOff();

/// @nodoc
mixin _$AccountReturnModel {
  double? get currentHashrate => throw _privateConstructorUsedError;
  String? get currentLuck => throw _privateConstructorUsedError;
  double? get hashrate => throw _privateConstructorUsedError;
  int? get pageSize => throw _privateConstructorUsedError;
  ConfigModel? get config => throw _privateConstructorUsedError;
  List<PaymentModel>? get payments => throw _privateConstructorUsedError;
  int? get paymentsTotal => throw _privateConstructorUsedError;
  List<RewardModel>? get rewards => throw _privateConstructorUsedError;
  int? get roundShares => throw _privateConstructorUsedError;
  int? get sharesInvalid => throw _privateConstructorUsedError;
  int? get sharesStale => throw _privateConstructorUsedError;
  int? get sharesValid => throw _privateConstructorUsedError;
  StatsModel? get stats => throw _privateConstructorUsedError;
  List<SumrewardsModel>? get sumrewards => throw _privateConstructorUsedError;
  Map<String, WorkerGroupModel>? get workers =>
      throw _privateConstructorUsedError;
  int? get workersOffline => throw _privateConstructorUsedError;
  int? get workersOnline => throw _privateConstructorUsedError;
  int? get workersTotal => throw _privateConstructorUsedError;
  @JsonKey(name: '24hreward')
  int? get a24hreward => throw _privateConstructorUsedError;
  @JsonKey(name: '24hnumreward')
  int? get a24hnumreward => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountReturnModelCopyWith<AccountReturnModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountReturnModelCopyWith<$Res> {
  factory $AccountReturnModelCopyWith(
          AccountReturnModel value, $Res Function(AccountReturnModel) then) =
      _$AccountReturnModelCopyWithImpl<$Res>;
  $Res call(
      {double? currentHashrate,
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
      @JsonKey(name: '24hnumreward') int? a24hnumreward});

  $ConfigModelCopyWith<$Res>? get config;
  $StatsModelCopyWith<$Res>? get stats;
}

/// @nodoc
class _$AccountReturnModelCopyWithImpl<$Res>
    implements $AccountReturnModelCopyWith<$Res> {
  _$AccountReturnModelCopyWithImpl(this._value, this._then);

  final AccountReturnModel _value;
  // ignore: unused_field
  final $Res Function(AccountReturnModel) _then;

  @override
  $Res call({
    Object? currentHashrate = freezed,
    Object? currentLuck = freezed,
    Object? hashrate = freezed,
    Object? pageSize = freezed,
    Object? config = freezed,
    Object? payments = freezed,
    Object? paymentsTotal = freezed,
    Object? rewards = freezed,
    Object? roundShares = freezed,
    Object? sharesInvalid = freezed,
    Object? sharesStale = freezed,
    Object? sharesValid = freezed,
    Object? stats = freezed,
    Object? sumrewards = freezed,
    Object? workers = freezed,
    Object? workersOffline = freezed,
    Object? workersOnline = freezed,
    Object? workersTotal = freezed,
    Object? a24hreward = freezed,
    Object? a24hnumreward = freezed,
  }) {
    return _then(_value.copyWith(
      currentHashrate: currentHashrate == freezed
          ? _value.currentHashrate
          : currentHashrate // ignore: cast_nullable_to_non_nullable
              as double?,
      currentLuck: currentLuck == freezed
          ? _value.currentLuck
          : currentLuck // ignore: cast_nullable_to_non_nullable
              as String?,
      hashrate: hashrate == freezed
          ? _value.hashrate
          : hashrate // ignore: cast_nullable_to_non_nullable
              as double?,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      config: config == freezed
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as ConfigModel?,
      payments: payments == freezed
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentModel>?,
      paymentsTotal: paymentsTotal == freezed
          ? _value.paymentsTotal
          : paymentsTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      rewards: rewards == freezed
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<RewardModel>?,
      roundShares: roundShares == freezed
          ? _value.roundShares
          : roundShares // ignore: cast_nullable_to_non_nullable
              as int?,
      sharesInvalid: sharesInvalid == freezed
          ? _value.sharesInvalid
          : sharesInvalid // ignore: cast_nullable_to_non_nullable
              as int?,
      sharesStale: sharesStale == freezed
          ? _value.sharesStale
          : sharesStale // ignore: cast_nullable_to_non_nullable
              as int?,
      sharesValid: sharesValid == freezed
          ? _value.sharesValid
          : sharesValid // ignore: cast_nullable_to_non_nullable
              as int?,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as StatsModel?,
      sumrewards: sumrewards == freezed
          ? _value.sumrewards
          : sumrewards // ignore: cast_nullable_to_non_nullable
              as List<SumrewardsModel>?,
      workers: workers == freezed
          ? _value.workers
          : workers // ignore: cast_nullable_to_non_nullable
              as Map<String, WorkerGroupModel>?,
      workersOffline: workersOffline == freezed
          ? _value.workersOffline
          : workersOffline // ignore: cast_nullable_to_non_nullable
              as int?,
      workersOnline: workersOnline == freezed
          ? _value.workersOnline
          : workersOnline // ignore: cast_nullable_to_non_nullable
              as int?,
      workersTotal: workersTotal == freezed
          ? _value.workersTotal
          : workersTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      a24hreward: a24hreward == freezed
          ? _value.a24hreward
          : a24hreward // ignore: cast_nullable_to_non_nullable
              as int?,
      a24hnumreward: a24hnumreward == freezed
          ? _value.a24hnumreward
          : a24hnumreward // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $ConfigModelCopyWith<$Res>? get config {
    if (_value.config == null) {
      return null;
    }

    return $ConfigModelCopyWith<$Res>(_value.config!, (value) {
      return _then(_value.copyWith(config: value));
    });
  }

  @override
  $StatsModelCopyWith<$Res>? get stats {
    if (_value.stats == null) {
      return null;
    }

    return $StatsModelCopyWith<$Res>(_value.stats!, (value) {
      return _then(_value.copyWith(stats: value));
    });
  }
}

/// @nodoc
abstract class _$AccountReturnModelCopyWith<$Res>
    implements $AccountReturnModelCopyWith<$Res> {
  factory _$AccountReturnModelCopyWith(
          _AccountReturnModel value, $Res Function(_AccountReturnModel) then) =
      __$AccountReturnModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? currentHashrate,
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
      @JsonKey(name: '24hnumreward') int? a24hnumreward});

  @override
  $ConfigModelCopyWith<$Res>? get config;
  @override
  $StatsModelCopyWith<$Res>? get stats;
}

/// @nodoc
class __$AccountReturnModelCopyWithImpl<$Res>
    extends _$AccountReturnModelCopyWithImpl<$Res>
    implements _$AccountReturnModelCopyWith<$Res> {
  __$AccountReturnModelCopyWithImpl(
      _AccountReturnModel _value, $Res Function(_AccountReturnModel) _then)
      : super(_value, (v) => _then(v as _AccountReturnModel));

  @override
  _AccountReturnModel get _value => super._value as _AccountReturnModel;

  @override
  $Res call({
    Object? currentHashrate = freezed,
    Object? currentLuck = freezed,
    Object? hashrate = freezed,
    Object? pageSize = freezed,
    Object? config = freezed,
    Object? payments = freezed,
    Object? paymentsTotal = freezed,
    Object? rewards = freezed,
    Object? roundShares = freezed,
    Object? sharesInvalid = freezed,
    Object? sharesStale = freezed,
    Object? sharesValid = freezed,
    Object? stats = freezed,
    Object? sumrewards = freezed,
    Object? workers = freezed,
    Object? workersOffline = freezed,
    Object? workersOnline = freezed,
    Object? workersTotal = freezed,
    Object? a24hreward = freezed,
    Object? a24hnumreward = freezed,
  }) {
    return _then(_AccountReturnModel(
      currentHashrate: currentHashrate == freezed
          ? _value.currentHashrate
          : currentHashrate // ignore: cast_nullable_to_non_nullable
              as double?,
      currentLuck: currentLuck == freezed
          ? _value.currentLuck
          : currentLuck // ignore: cast_nullable_to_non_nullable
              as String?,
      hashrate: hashrate == freezed
          ? _value.hashrate
          : hashrate // ignore: cast_nullable_to_non_nullable
              as double?,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      config: config == freezed
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as ConfigModel?,
      payments: payments == freezed
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentModel>?,
      paymentsTotal: paymentsTotal == freezed
          ? _value.paymentsTotal
          : paymentsTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      rewards: rewards == freezed
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<RewardModel>?,
      roundShares: roundShares == freezed
          ? _value.roundShares
          : roundShares // ignore: cast_nullable_to_non_nullable
              as int?,
      sharesInvalid: sharesInvalid == freezed
          ? _value.sharesInvalid
          : sharesInvalid // ignore: cast_nullable_to_non_nullable
              as int?,
      sharesStale: sharesStale == freezed
          ? _value.sharesStale
          : sharesStale // ignore: cast_nullable_to_non_nullable
              as int?,
      sharesValid: sharesValid == freezed
          ? _value.sharesValid
          : sharesValid // ignore: cast_nullable_to_non_nullable
              as int?,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as StatsModel?,
      sumrewards: sumrewards == freezed
          ? _value.sumrewards
          : sumrewards // ignore: cast_nullable_to_non_nullable
              as List<SumrewardsModel>?,
      workers: workers == freezed
          ? _value.workers
          : workers // ignore: cast_nullable_to_non_nullable
              as Map<String, WorkerGroupModel>?,
      workersOffline: workersOffline == freezed
          ? _value.workersOffline
          : workersOffline // ignore: cast_nullable_to_non_nullable
              as int?,
      workersOnline: workersOnline == freezed
          ? _value.workersOnline
          : workersOnline // ignore: cast_nullable_to_non_nullable
              as int?,
      workersTotal: workersTotal == freezed
          ? _value.workersTotal
          : workersTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      a24hreward: a24hreward == freezed
          ? _value.a24hreward
          : a24hreward // ignore: cast_nullable_to_non_nullable
              as int?,
      a24hnumreward: a24hnumreward == freezed
          ? _value.a24hnumreward
          : a24hnumreward // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountReturnModel implements _AccountReturnModel {
  const _$_AccountReturnModel(
      {this.currentHashrate,
      this.currentLuck,
      this.hashrate,
      this.pageSize,
      this.config,
      this.payments,
      this.paymentsTotal,
      this.rewards,
      this.roundShares,
      this.sharesInvalid,
      this.sharesStale,
      this.sharesValid,
      this.stats,
      this.sumrewards,
      this.workers,
      this.workersOffline,
      this.workersOnline,
      this.workersTotal,
      @JsonKey(name: '24hreward') this.a24hreward,
      @JsonKey(name: '24hnumreward') this.a24hnumreward});

  factory _$_AccountReturnModel.fromJson(Map<String, dynamic> json) =>
      _$$_AccountReturnModelFromJson(json);

  @override
  final double? currentHashrate;
  @override
  final String? currentLuck;
  @override
  final double? hashrate;
  @override
  final int? pageSize;
  @override
  final ConfigModel? config;
  @override
  final List<PaymentModel>? payments;
  @override
  final int? paymentsTotal;
  @override
  final List<RewardModel>? rewards;
  @override
  final int? roundShares;
  @override
  final int? sharesInvalid;
  @override
  final int? sharesStale;
  @override
  final int? sharesValid;
  @override
  final StatsModel? stats;
  @override
  final List<SumrewardsModel>? sumrewards;
  @override
  final Map<String, WorkerGroupModel>? workers;
  @override
  final int? workersOffline;
  @override
  final int? workersOnline;
  @override
  final int? workersTotal;
  @override
  @JsonKey(name: '24hreward')
  final int? a24hreward;
  @override
  @JsonKey(name: '24hnumreward')
  final int? a24hnumreward;

  @override
  String toString() {
    return 'AccountReturnModel(currentHashrate: $currentHashrate, currentLuck: $currentLuck, hashrate: $hashrate, pageSize: $pageSize, config: $config, payments: $payments, paymentsTotal: $paymentsTotal, rewards: $rewards, roundShares: $roundShares, sharesInvalid: $sharesInvalid, sharesStale: $sharesStale, sharesValid: $sharesValid, stats: $stats, sumrewards: $sumrewards, workers: $workers, workersOffline: $workersOffline, workersOnline: $workersOnline, workersTotal: $workersTotal, a24hreward: $a24hreward, a24hnumreward: $a24hnumreward)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccountReturnModel &&
            const DeepCollectionEquality()
                .equals(other.currentHashrate, currentHashrate) &&
            const DeepCollectionEquality()
                .equals(other.currentLuck, currentLuck) &&
            const DeepCollectionEquality().equals(other.hashrate, hashrate) &&
            const DeepCollectionEquality().equals(other.pageSize, pageSize) &&
            const DeepCollectionEquality().equals(other.config, config) &&
            const DeepCollectionEquality().equals(other.payments, payments) &&
            const DeepCollectionEquality()
                .equals(other.paymentsTotal, paymentsTotal) &&
            const DeepCollectionEquality().equals(other.rewards, rewards) &&
            const DeepCollectionEquality()
                .equals(other.roundShares, roundShares) &&
            const DeepCollectionEquality()
                .equals(other.sharesInvalid, sharesInvalid) &&
            const DeepCollectionEquality()
                .equals(other.sharesStale, sharesStale) &&
            const DeepCollectionEquality()
                .equals(other.sharesValid, sharesValid) &&
            const DeepCollectionEquality().equals(other.stats, stats) &&
            const DeepCollectionEquality()
                .equals(other.sumrewards, sumrewards) &&
            const DeepCollectionEquality().equals(other.workers, workers) &&
            const DeepCollectionEquality()
                .equals(other.workersOffline, workersOffline) &&
            const DeepCollectionEquality()
                .equals(other.workersOnline, workersOnline) &&
            const DeepCollectionEquality()
                .equals(other.workersTotal, workersTotal) &&
            const DeepCollectionEquality()
                .equals(other.a24hreward, a24hreward) &&
            const DeepCollectionEquality()
                .equals(other.a24hnumreward, a24hnumreward));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(currentHashrate),
        const DeepCollectionEquality().hash(currentLuck),
        const DeepCollectionEquality().hash(hashrate),
        const DeepCollectionEquality().hash(pageSize),
        const DeepCollectionEquality().hash(config),
        const DeepCollectionEquality().hash(payments),
        const DeepCollectionEquality().hash(paymentsTotal),
        const DeepCollectionEquality().hash(rewards),
        const DeepCollectionEquality().hash(roundShares),
        const DeepCollectionEquality().hash(sharesInvalid),
        const DeepCollectionEquality().hash(sharesStale),
        const DeepCollectionEquality().hash(sharesValid),
        const DeepCollectionEquality().hash(stats),
        const DeepCollectionEquality().hash(sumrewards),
        const DeepCollectionEquality().hash(workers),
        const DeepCollectionEquality().hash(workersOffline),
        const DeepCollectionEquality().hash(workersOnline),
        const DeepCollectionEquality().hash(workersTotal),
        const DeepCollectionEquality().hash(a24hreward),
        const DeepCollectionEquality().hash(a24hnumreward)
      ]);

  @JsonKey(ignore: true)
  @override
  _$AccountReturnModelCopyWith<_AccountReturnModel> get copyWith =>
      __$AccountReturnModelCopyWithImpl<_AccountReturnModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountReturnModelToJson(this);
  }
}

abstract class _AccountReturnModel implements AccountReturnModel {
  const factory _AccountReturnModel(
          {double? currentHashrate,
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
          @JsonKey(name: '24hnumreward') int? a24hnumreward}) =
      _$_AccountReturnModel;

  factory _AccountReturnModel.fromJson(Map<String, dynamic> json) =
      _$_AccountReturnModel.fromJson;

  @override
  double? get currentHashrate;
  @override
  String? get currentLuck;
  @override
  double? get hashrate;
  @override
  int? get pageSize;
  @override
  ConfigModel? get config;
  @override
  List<PaymentModel>? get payments;
  @override
  int? get paymentsTotal;
  @override
  List<RewardModel>? get rewards;
  @override
  int? get roundShares;
  @override
  int? get sharesInvalid;
  @override
  int? get sharesStale;
  @override
  int? get sharesValid;
  @override
  StatsModel? get stats;
  @override
  List<SumrewardsModel>? get sumrewards;
  @override
  Map<String, WorkerGroupModel>? get workers;
  @override
  int? get workersOffline;
  @override
  int? get workersOnline;
  @override
  int? get workersTotal;
  @override
  @JsonKey(name: '24hreward')
  int? get a24hreward;
  @override
  @JsonKey(name: '24hnumreward')
  int? get a24hnumreward;
  @override
  @JsonKey(ignore: true)
  _$AccountReturnModelCopyWith<_AccountReturnModel> get copyWith =>
      throw _privateConstructorUsedError;
}
