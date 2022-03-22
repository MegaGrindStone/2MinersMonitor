// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatsModel _$StatsModelFromJson(Map<String, dynamic> json) {
  return _StatsModel.fromJson(json);
}

/// @nodoc
class _$StatsModelTearOff {
  const _$StatsModelTearOff();

  _StatsModel call(
      {int? balance,
      int? blocksFound,
      int? immature,
      int? lastShare,
      int? paid}) {
    return _StatsModel(
      balance: balance,
      blocksFound: blocksFound,
      immature: immature,
      lastShare: lastShare,
      paid: paid,
    );
  }

  StatsModel fromJson(Map<String, Object?> json) {
    return StatsModel.fromJson(json);
  }
}

/// @nodoc
const $StatsModel = _$StatsModelTearOff();

/// @nodoc
mixin _$StatsModel {
  int? get balance => throw _privateConstructorUsedError;
  int? get blocksFound => throw _privateConstructorUsedError;
  int? get immature => throw _privateConstructorUsedError;
  int? get lastShare => throw _privateConstructorUsedError;
  int? get paid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatsModelCopyWith<StatsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsModelCopyWith<$Res> {
  factory $StatsModelCopyWith(
          StatsModel value, $Res Function(StatsModel) then) =
      _$StatsModelCopyWithImpl<$Res>;
  $Res call(
      {int? balance,
      int? blocksFound,
      int? immature,
      int? lastShare,
      int? paid});
}

/// @nodoc
class _$StatsModelCopyWithImpl<$Res> implements $StatsModelCopyWith<$Res> {
  _$StatsModelCopyWithImpl(this._value, this._then);

  final StatsModel _value;
  // ignore: unused_field
  final $Res Function(StatsModel) _then;

  @override
  $Res call({
    Object? balance = freezed,
    Object? blocksFound = freezed,
    Object? immature = freezed,
    Object? lastShare = freezed,
    Object? paid = freezed,
  }) {
    return _then(_value.copyWith(
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int?,
      blocksFound: blocksFound == freezed
          ? _value.blocksFound
          : blocksFound // ignore: cast_nullable_to_non_nullable
              as int?,
      immature: immature == freezed
          ? _value.immature
          : immature // ignore: cast_nullable_to_non_nullable
              as int?,
      lastShare: lastShare == freezed
          ? _value.lastShare
          : lastShare // ignore: cast_nullable_to_non_nullable
              as int?,
      paid: paid == freezed
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$StatsModelCopyWith<$Res> implements $StatsModelCopyWith<$Res> {
  factory _$StatsModelCopyWith(
          _StatsModel value, $Res Function(_StatsModel) then) =
      __$StatsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? balance,
      int? blocksFound,
      int? immature,
      int? lastShare,
      int? paid});
}

/// @nodoc
class __$StatsModelCopyWithImpl<$Res> extends _$StatsModelCopyWithImpl<$Res>
    implements _$StatsModelCopyWith<$Res> {
  __$StatsModelCopyWithImpl(
      _StatsModel _value, $Res Function(_StatsModel) _then)
      : super(_value, (v) => _then(v as _StatsModel));

  @override
  _StatsModel get _value => super._value as _StatsModel;

  @override
  $Res call({
    Object? balance = freezed,
    Object? blocksFound = freezed,
    Object? immature = freezed,
    Object? lastShare = freezed,
    Object? paid = freezed,
  }) {
    return _then(_StatsModel(
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int?,
      blocksFound: blocksFound == freezed
          ? _value.blocksFound
          : blocksFound // ignore: cast_nullable_to_non_nullable
              as int?,
      immature: immature == freezed
          ? _value.immature
          : immature // ignore: cast_nullable_to_non_nullable
              as int?,
      lastShare: lastShare == freezed
          ? _value.lastShare
          : lastShare // ignore: cast_nullable_to_non_nullable
              as int?,
      paid: paid == freezed
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatsModel implements _StatsModel {
  const _$_StatsModel(
      {this.balance,
      this.blocksFound,
      this.immature,
      this.lastShare,
      this.paid});

  factory _$_StatsModel.fromJson(Map<String, dynamic> json) =>
      _$$_StatsModelFromJson(json);

  @override
  final int? balance;
  @override
  final int? blocksFound;
  @override
  final int? immature;
  @override
  final int? lastShare;
  @override
  final int? paid;

  @override
  String toString() {
    return 'StatsModel(balance: $balance, blocksFound: $blocksFound, immature: $immature, lastShare: $lastShare, paid: $paid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StatsModel &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality()
                .equals(other.blocksFound, blocksFound) &&
            const DeepCollectionEquality().equals(other.immature, immature) &&
            const DeepCollectionEquality().equals(other.lastShare, lastShare) &&
            const DeepCollectionEquality().equals(other.paid, paid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(blocksFound),
      const DeepCollectionEquality().hash(immature),
      const DeepCollectionEquality().hash(lastShare),
      const DeepCollectionEquality().hash(paid));

  @JsonKey(ignore: true)
  @override
  _$StatsModelCopyWith<_StatsModel> get copyWith =>
      __$StatsModelCopyWithImpl<_StatsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatsModelToJson(this);
  }
}

abstract class _StatsModel implements StatsModel {
  const factory _StatsModel(
      {int? balance,
      int? blocksFound,
      int? immature,
      int? lastShare,
      int? paid}) = _$_StatsModel;

  factory _StatsModel.fromJson(Map<String, dynamic> json) =
      _$_StatsModel.fromJson;

  @override
  int? get balance;
  @override
  int? get blocksFound;
  @override
  int? get immature;
  @override
  int? get lastShare;
  @override
  int? get paid;
  @override
  @JsonKey(ignore: true)
  _$StatsModelCopyWith<_StatsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
