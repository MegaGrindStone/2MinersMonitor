// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingsModel _$SettingsModelFromJson(Map<String, dynamic> json) {
  return _SettingsModel.fromJson(json);
}

/// @nodoc
class _$SettingsModelTearOff {
  const _$SettingsModelTearOff();

  _SettingsModel call(
      {@JsonKey(fromJson: localeFromString, toJson: localeToString)
          required Locale locale,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          required Color colorSeed,
      required ThemeMode themeMode}) {
    return _SettingsModel(
      locale: locale,
      colorSeed: colorSeed,
      themeMode: themeMode,
    );
  }

  SettingsModel fromJson(Map<String, Object?> json) {
    return SettingsModel.fromJson(json);
  }
}

/// @nodoc
const $SettingsModel = _$SettingsModelTearOff();

/// @nodoc
mixin _$SettingsModel {
  @JsonKey(fromJson: localeFromString, toJson: localeToString)
  Locale get locale => throw _privateConstructorUsedError;
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color get colorSeed => throw _privateConstructorUsedError;
  ThemeMode get themeMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsModelCopyWith<SettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsModelCopyWith<$Res> {
  factory $SettingsModelCopyWith(
          SettingsModel value, $Res Function(SettingsModel) then) =
      _$SettingsModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(fromJson: localeFromString, toJson: localeToString)
          Locale locale,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          Color colorSeed,
      ThemeMode themeMode});
}

/// @nodoc
class _$SettingsModelCopyWithImpl<$Res>
    implements $SettingsModelCopyWith<$Res> {
  _$SettingsModelCopyWithImpl(this._value, this._then);

  final SettingsModel _value;
  // ignore: unused_field
  final $Res Function(SettingsModel) _then;

  @override
  $Res call({
    Object? locale = freezed,
    Object? colorSeed = freezed,
    Object? themeMode = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
      colorSeed: colorSeed == freezed
          ? _value.colorSeed
          : colorSeed // ignore: cast_nullable_to_non_nullable
              as Color,
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc
abstract class _$SettingsModelCopyWith<$Res>
    implements $SettingsModelCopyWith<$Res> {
  factory _$SettingsModelCopyWith(
          _SettingsModel value, $Res Function(_SettingsModel) then) =
      __$SettingsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(fromJson: localeFromString, toJson: localeToString)
          Locale locale,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          Color colorSeed,
      ThemeMode themeMode});
}

/// @nodoc
class __$SettingsModelCopyWithImpl<$Res>
    extends _$SettingsModelCopyWithImpl<$Res>
    implements _$SettingsModelCopyWith<$Res> {
  __$SettingsModelCopyWithImpl(
      _SettingsModel _value, $Res Function(_SettingsModel) _then)
      : super(_value, (v) => _then(v as _SettingsModel));

  @override
  _SettingsModel get _value => super._value as _SettingsModel;

  @override
  $Res call({
    Object? locale = freezed,
    Object? colorSeed = freezed,
    Object? themeMode = freezed,
  }) {
    return _then(_SettingsModel(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
      colorSeed: colorSeed == freezed
          ? _value.colorSeed
          : colorSeed // ignore: cast_nullable_to_non_nullable
              as Color,
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SettingsModel implements _SettingsModel {
  const _$_SettingsModel(
      {@JsonKey(fromJson: localeFromString, toJson: localeToString)
          required this.locale,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          required this.colorSeed,
      required this.themeMode});

  factory _$_SettingsModel.fromJson(Map<String, dynamic> json) =>
      _$$_SettingsModelFromJson(json);

  @override
  @JsonKey(fromJson: localeFromString, toJson: localeToString)
  final Locale locale;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color colorSeed;
  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'SettingsModel(locale: $locale, colorSeed: $colorSeed, themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingsModel &&
            const DeepCollectionEquality().equals(other.locale, locale) &&
            const DeepCollectionEquality().equals(other.colorSeed, colorSeed) &&
            const DeepCollectionEquality().equals(other.themeMode, themeMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(locale),
      const DeepCollectionEquality().hash(colorSeed),
      const DeepCollectionEquality().hash(themeMode));

  @JsonKey(ignore: true)
  @override
  _$SettingsModelCopyWith<_SettingsModel> get copyWith =>
      __$SettingsModelCopyWithImpl<_SettingsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingsModelToJson(this);
  }
}

abstract class _SettingsModel implements SettingsModel {
  const factory _SettingsModel(
      {@JsonKey(fromJson: localeFromString, toJson: localeToString)
          required Locale locale,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          required Color colorSeed,
      required ThemeMode themeMode}) = _$_SettingsModel;

  factory _SettingsModel.fromJson(Map<String, dynamic> json) =
      _$_SettingsModel.fromJson;

  @override
  @JsonKey(fromJson: localeFromString, toJson: localeToString)
  Locale get locale;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color get colorSeed;
  @override
  ThemeMode get themeMode;
  @override
  @JsonKey(ignore: true)
  _$SettingsModelCopyWith<_SettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
