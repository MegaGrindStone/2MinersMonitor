// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reward_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RewardModel _$RewardModelFromJson(Map<String, dynamic> json) {
  return _RewardModel.fromJson(json);
}

/// @nodoc
class _$RewardModelTearOff {
  const _$RewardModelTearOff();

  _RewardModel call(
      {int? blockheight,
      int? timestamp,
      String? blockhash,
      int? reward,
      double? percent,
      bool? immature = false,
      double? currentLuck,
      bool? uncle = false,
      bool? orphan = false}) {
    return _RewardModel(
      blockheight: blockheight,
      timestamp: timestamp,
      blockhash: blockhash,
      reward: reward,
      percent: percent,
      immature: immature,
      currentLuck: currentLuck,
      uncle: uncle,
      orphan: orphan,
    );
  }

  RewardModel fromJson(Map<String, Object?> json) {
    return RewardModel.fromJson(json);
  }
}

/// @nodoc
const $RewardModel = _$RewardModelTearOff();

/// @nodoc
mixin _$RewardModel {
  int? get blockheight => throw _privateConstructorUsedError;
  int? get timestamp => throw _privateConstructorUsedError;
  String? get blockhash => throw _privateConstructorUsedError;
  int? get reward => throw _privateConstructorUsedError;
  double? get percent => throw _privateConstructorUsedError;
  bool? get immature => throw _privateConstructorUsedError;
  double? get currentLuck => throw _privateConstructorUsedError;
  bool? get uncle => throw _privateConstructorUsedError;
  bool? get orphan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RewardModelCopyWith<RewardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardModelCopyWith<$Res> {
  factory $RewardModelCopyWith(
          RewardModel value, $Res Function(RewardModel) then) =
      _$RewardModelCopyWithImpl<$Res>;
  $Res call(
      {int? blockheight,
      int? timestamp,
      String? blockhash,
      int? reward,
      double? percent,
      bool? immature,
      double? currentLuck,
      bool? uncle,
      bool? orphan});
}

/// @nodoc
class _$RewardModelCopyWithImpl<$Res> implements $RewardModelCopyWith<$Res> {
  _$RewardModelCopyWithImpl(this._value, this._then);

  final RewardModel _value;
  // ignore: unused_field
  final $Res Function(RewardModel) _then;

  @override
  $Res call({
    Object? blockheight = freezed,
    Object? timestamp = freezed,
    Object? blockhash = freezed,
    Object? reward = freezed,
    Object? percent = freezed,
    Object? immature = freezed,
    Object? currentLuck = freezed,
    Object? uncle = freezed,
    Object? orphan = freezed,
  }) {
    return _then(_value.copyWith(
      blockheight: blockheight == freezed
          ? _value.blockheight
          : blockheight // ignore: cast_nullable_to_non_nullable
              as int?,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      blockhash: blockhash == freezed
          ? _value.blockhash
          : blockhash // ignore: cast_nullable_to_non_nullable
              as String?,
      reward: reward == freezed
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as int?,
      percent: percent == freezed
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as double?,
      immature: immature == freezed
          ? _value.immature
          : immature // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentLuck: currentLuck == freezed
          ? _value.currentLuck
          : currentLuck // ignore: cast_nullable_to_non_nullable
              as double?,
      uncle: uncle == freezed
          ? _value.uncle
          : uncle // ignore: cast_nullable_to_non_nullable
              as bool?,
      orphan: orphan == freezed
          ? _value.orphan
          : orphan // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$RewardModelCopyWith<$Res>
    implements $RewardModelCopyWith<$Res> {
  factory _$RewardModelCopyWith(
          _RewardModel value, $Res Function(_RewardModel) then) =
      __$RewardModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? blockheight,
      int? timestamp,
      String? blockhash,
      int? reward,
      double? percent,
      bool? immature,
      double? currentLuck,
      bool? uncle,
      bool? orphan});
}

/// @nodoc
class __$RewardModelCopyWithImpl<$Res> extends _$RewardModelCopyWithImpl<$Res>
    implements _$RewardModelCopyWith<$Res> {
  __$RewardModelCopyWithImpl(
      _RewardModel _value, $Res Function(_RewardModel) _then)
      : super(_value, (v) => _then(v as _RewardModel));

  @override
  _RewardModel get _value => super._value as _RewardModel;

  @override
  $Res call({
    Object? blockheight = freezed,
    Object? timestamp = freezed,
    Object? blockhash = freezed,
    Object? reward = freezed,
    Object? percent = freezed,
    Object? immature = freezed,
    Object? currentLuck = freezed,
    Object? uncle = freezed,
    Object? orphan = freezed,
  }) {
    return _then(_RewardModel(
      blockheight: blockheight == freezed
          ? _value.blockheight
          : blockheight // ignore: cast_nullable_to_non_nullable
              as int?,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      blockhash: blockhash == freezed
          ? _value.blockhash
          : blockhash // ignore: cast_nullable_to_non_nullable
              as String?,
      reward: reward == freezed
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as int?,
      percent: percent == freezed
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as double?,
      immature: immature == freezed
          ? _value.immature
          : immature // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentLuck: currentLuck == freezed
          ? _value.currentLuck
          : currentLuck // ignore: cast_nullable_to_non_nullable
              as double?,
      uncle: uncle == freezed
          ? _value.uncle
          : uncle // ignore: cast_nullable_to_non_nullable
              as bool?,
      orphan: orphan == freezed
          ? _value.orphan
          : orphan // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RewardModel implements _RewardModel {
  const _$_RewardModel(
      {this.blockheight,
      this.timestamp,
      this.blockhash,
      this.reward,
      this.percent,
      this.immature = false,
      this.currentLuck,
      this.uncle = false,
      this.orphan = false});

  factory _$_RewardModel.fromJson(Map<String, dynamic> json) =>
      _$$_RewardModelFromJson(json);

  @override
  final int? blockheight;
  @override
  final int? timestamp;
  @override
  final String? blockhash;
  @override
  final int? reward;
  @override
  final double? percent;
  @JsonKey()
  @override
  final bool? immature;
  @override
  final double? currentLuck;
  @JsonKey()
  @override
  final bool? uncle;
  @JsonKey()
  @override
  final bool? orphan;

  @override
  String toString() {
    return 'RewardModel(blockheight: $blockheight, timestamp: $timestamp, blockhash: $blockhash, reward: $reward, percent: $percent, immature: $immature, currentLuck: $currentLuck, uncle: $uncle, orphan: $orphan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RewardModel &&
            const DeepCollectionEquality()
                .equals(other.blockheight, blockheight) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality().equals(other.blockhash, blockhash) &&
            const DeepCollectionEquality().equals(other.reward, reward) &&
            const DeepCollectionEquality().equals(other.percent, percent) &&
            const DeepCollectionEquality().equals(other.immature, immature) &&
            const DeepCollectionEquality()
                .equals(other.currentLuck, currentLuck) &&
            const DeepCollectionEquality().equals(other.uncle, uncle) &&
            const DeepCollectionEquality().equals(other.orphan, orphan));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(blockheight),
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(blockhash),
      const DeepCollectionEquality().hash(reward),
      const DeepCollectionEquality().hash(percent),
      const DeepCollectionEquality().hash(immature),
      const DeepCollectionEquality().hash(currentLuck),
      const DeepCollectionEquality().hash(uncle),
      const DeepCollectionEquality().hash(orphan));

  @JsonKey(ignore: true)
  @override
  _$RewardModelCopyWith<_RewardModel> get copyWith =>
      __$RewardModelCopyWithImpl<_RewardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RewardModelToJson(this);
  }
}

abstract class _RewardModel implements RewardModel {
  const factory _RewardModel(
      {int? blockheight,
      int? timestamp,
      String? blockhash,
      int? reward,
      double? percent,
      bool? immature,
      double? currentLuck,
      bool? uncle,
      bool? orphan}) = _$_RewardModel;

  factory _RewardModel.fromJson(Map<String, dynamic> json) =
      _$_RewardModel.fromJson;

  @override
  int? get blockheight;
  @override
  int? get timestamp;
  @override
  String? get blockhash;
  @override
  int? get reward;
  @override
  double? get percent;
  @override
  bool? get immature;
  @override
  double? get currentLuck;
  @override
  bool? get uncle;
  @override
  bool? get orphan;
  @override
  @JsonKey(ignore: true)
  _$RewardModelCopyWith<_RewardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
