// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sumrewards_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SumrewardsModel _$SumrewardsModelFromJson(Map<String, dynamic> json) {
  return _SumrewardsModel.fromJson(json);
}

/// @nodoc
class _$SumrewardsModelTearOff {
  const _$SumrewardsModelTearOff();

  _SumrewardsModel call(
      {int? interval, int? reward, int? numreward, String? name, int? offset}) {
    return _SumrewardsModel(
      interval: interval,
      reward: reward,
      numreward: numreward,
      name: name,
      offset: offset,
    );
  }

  SumrewardsModel fromJson(Map<String, Object?> json) {
    return SumrewardsModel.fromJson(json);
  }
}

/// @nodoc
const $SumrewardsModel = _$SumrewardsModelTearOff();

/// @nodoc
mixin _$SumrewardsModel {
  int? get interval => throw _privateConstructorUsedError;
  int? get reward => throw _privateConstructorUsedError;
  int? get numreward => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SumrewardsModelCopyWith<SumrewardsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SumrewardsModelCopyWith<$Res> {
  factory $SumrewardsModelCopyWith(
          SumrewardsModel value, $Res Function(SumrewardsModel) then) =
      _$SumrewardsModelCopyWithImpl<$Res>;
  $Res call(
      {int? interval, int? reward, int? numreward, String? name, int? offset});
}

/// @nodoc
class _$SumrewardsModelCopyWithImpl<$Res>
    implements $SumrewardsModelCopyWith<$Res> {
  _$SumrewardsModelCopyWithImpl(this._value, this._then);

  final SumrewardsModel _value;
  // ignore: unused_field
  final $Res Function(SumrewardsModel) _then;

  @override
  $Res call({
    Object? interval = freezed,
    Object? reward = freezed,
    Object? numreward = freezed,
    Object? name = freezed,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      interval: interval == freezed
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int?,
      reward: reward == freezed
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as int?,
      numreward: numreward == freezed
          ? _value.numreward
          : numreward // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$SumrewardsModelCopyWith<$Res>
    implements $SumrewardsModelCopyWith<$Res> {
  factory _$SumrewardsModelCopyWith(
          _SumrewardsModel value, $Res Function(_SumrewardsModel) then) =
      __$SumrewardsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? interval, int? reward, int? numreward, String? name, int? offset});
}

/// @nodoc
class __$SumrewardsModelCopyWithImpl<$Res>
    extends _$SumrewardsModelCopyWithImpl<$Res>
    implements _$SumrewardsModelCopyWith<$Res> {
  __$SumrewardsModelCopyWithImpl(
      _SumrewardsModel _value, $Res Function(_SumrewardsModel) _then)
      : super(_value, (v) => _then(v as _SumrewardsModel));

  @override
  _SumrewardsModel get _value => super._value as _SumrewardsModel;

  @override
  $Res call({
    Object? interval = freezed,
    Object? reward = freezed,
    Object? numreward = freezed,
    Object? name = freezed,
    Object? offset = freezed,
  }) {
    return _then(_SumrewardsModel(
      interval: interval == freezed
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int?,
      reward: reward == freezed
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as int?,
      numreward: numreward == freezed
          ? _value.numreward
          : numreward // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SumrewardsModel implements _SumrewardsModel {
  const _$_SumrewardsModel(
      {this.interval, this.reward, this.numreward, this.name, this.offset});

  factory _$_SumrewardsModel.fromJson(Map<String, dynamic> json) =>
      _$$_SumrewardsModelFromJson(json);

  @override
  final int? interval;
  @override
  final int? reward;
  @override
  final int? numreward;
  @override
  final String? name;
  @override
  final int? offset;

  @override
  String toString() {
    return 'SumrewardsModel(interval: $interval, reward: $reward, numreward: $numreward, name: $name, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SumrewardsModel &&
            const DeepCollectionEquality().equals(other.interval, interval) &&
            const DeepCollectionEquality().equals(other.reward, reward) &&
            const DeepCollectionEquality().equals(other.numreward, numreward) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.offset, offset));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(interval),
      const DeepCollectionEquality().hash(reward),
      const DeepCollectionEquality().hash(numreward),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(offset));

  @JsonKey(ignore: true)
  @override
  _$SumrewardsModelCopyWith<_SumrewardsModel> get copyWith =>
      __$SumrewardsModelCopyWithImpl<_SumrewardsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SumrewardsModelToJson(this);
  }
}

abstract class _SumrewardsModel implements SumrewardsModel {
  const factory _SumrewardsModel(
      {int? interval,
      int? reward,
      int? numreward,
      String? name,
      int? offset}) = _$_SumrewardsModel;

  factory _SumrewardsModel.fromJson(Map<String, dynamic> json) =
      _$_SumrewardsModel.fromJson;

  @override
  int? get interval;
  @override
  int? get reward;
  @override
  int? get numreward;
  @override
  String? get name;
  @override
  int? get offset;
  @override
  @JsonKey(ignore: true)
  _$SumrewardsModelCopyWith<_SumrewardsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
