// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConfigModel _$ConfigModelFromJson(Map<String, dynamic> json) {
  return _ConfigModel.fromJson(json);
}

/// @nodoc
class _$ConfigModelTearOff {
  const _$ConfigModelTearOff();

  _ConfigModel call({int? minPayout}) {
    return _ConfigModel(
      minPayout: minPayout,
    );
  }

  ConfigModel fromJson(Map<String, Object?> json) {
    return ConfigModel.fromJson(json);
  }
}

/// @nodoc
const $ConfigModel = _$ConfigModelTearOff();

/// @nodoc
mixin _$ConfigModel {
  int? get minPayout => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigModelCopyWith<ConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigModelCopyWith<$Res> {
  factory $ConfigModelCopyWith(
          ConfigModel value, $Res Function(ConfigModel) then) =
      _$ConfigModelCopyWithImpl<$Res>;
  $Res call({int? minPayout});
}

/// @nodoc
class _$ConfigModelCopyWithImpl<$Res> implements $ConfigModelCopyWith<$Res> {
  _$ConfigModelCopyWithImpl(this._value, this._then);

  final ConfigModel _value;
  // ignore: unused_field
  final $Res Function(ConfigModel) _then;

  @override
  $Res call({
    Object? minPayout = freezed,
  }) {
    return _then(_value.copyWith(
      minPayout: minPayout == freezed
          ? _value.minPayout
          : minPayout // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ConfigModelCopyWith<$Res>
    implements $ConfigModelCopyWith<$Res> {
  factory _$ConfigModelCopyWith(
          _ConfigModel value, $Res Function(_ConfigModel) then) =
      __$ConfigModelCopyWithImpl<$Res>;
  @override
  $Res call({int? minPayout});
}

/// @nodoc
class __$ConfigModelCopyWithImpl<$Res> extends _$ConfigModelCopyWithImpl<$Res>
    implements _$ConfigModelCopyWith<$Res> {
  __$ConfigModelCopyWithImpl(
      _ConfigModel _value, $Res Function(_ConfigModel) _then)
      : super(_value, (v) => _then(v as _ConfigModel));

  @override
  _ConfigModel get _value => super._value as _ConfigModel;

  @override
  $Res call({
    Object? minPayout = freezed,
  }) {
    return _then(_ConfigModel(
      minPayout: minPayout == freezed
          ? _value.minPayout
          : minPayout // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConfigModel implements _ConfigModel {
  const _$_ConfigModel({this.minPayout});

  factory _$_ConfigModel.fromJson(Map<String, dynamic> json) =>
      _$$_ConfigModelFromJson(json);

  @override
  final int? minPayout;

  @override
  String toString() {
    return 'ConfigModel(minPayout: $minPayout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConfigModel &&
            const DeepCollectionEquality().equals(other.minPayout, minPayout));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(minPayout));

  @JsonKey(ignore: true)
  @override
  _$ConfigModelCopyWith<_ConfigModel> get copyWith =>
      __$ConfigModelCopyWithImpl<_ConfigModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConfigModelToJson(this);
  }
}

abstract class _ConfigModel implements ConfigModel {
  const factory _ConfigModel({int? minPayout}) = _$_ConfigModel;

  factory _ConfigModel.fromJson(Map<String, dynamic> json) =
      _$_ConfigModel.fromJson;

  @override
  int? get minPayout;
  @override
  @JsonKey(ignore: true)
  _$ConfigModelCopyWith<_ConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}
