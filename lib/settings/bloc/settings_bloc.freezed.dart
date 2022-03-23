// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingsEventTearOff {
  const _$SettingsEventTearOff();

  _LocaleChanged localeChanged({required Locale locale}) {
    return _LocaleChanged(
      locale: locale,
    );
  }

  _ColorSeedChanged colorSeedChanged({required Color colorSeed}) {
    return _ColorSeedChanged(
      colorSeed: colorSeed,
    );
  }

  _ThemeModeChanged themeModeChanged({required ThemeMode themeMode}) {
    return _ThemeModeChanged(
      themeMode: themeMode,
    );
  }

  _SettingsSaved settingsSaved() {
    return const _SettingsSaved();
  }
}

/// @nodoc
const $SettingsEvent = _$SettingsEventTearOff();

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(Color colorSeed) colorSeedChanged,
    required TResult Function(ThemeMode themeMode) themeModeChanged,
    required TResult Function() settingsSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Locale locale)? localeChanged,
    TResult Function(Color colorSeed)? colorSeedChanged,
    TResult Function(ThemeMode themeMode)? themeModeChanged,
    TResult Function()? settingsSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale locale)? localeChanged,
    TResult Function(Color colorSeed)? colorSeedChanged,
    TResult Function(ThemeMode themeMode)? themeModeChanged,
    TResult Function()? settingsSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_ColorSeedChanged value) colorSeedChanged,
    required TResult Function(_ThemeModeChanged value) themeModeChanged,
    required TResult Function(_SettingsSaved value) settingsSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_ColorSeedChanged value)? colorSeedChanged,
    TResult Function(_ThemeModeChanged value)? themeModeChanged,
    TResult Function(_SettingsSaved value)? settingsSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_ColorSeedChanged value)? colorSeedChanged,
    TResult Function(_ThemeModeChanged value)? themeModeChanged,
    TResult Function(_SettingsSaved value)? settingsSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  final SettingsEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsEvent) _then;
}

/// @nodoc
abstract class _$LocaleChangedCopyWith<$Res> {
  factory _$LocaleChangedCopyWith(
          _LocaleChanged value, $Res Function(_LocaleChanged) then) =
      __$LocaleChangedCopyWithImpl<$Res>;
  $Res call({Locale locale});
}

/// @nodoc
class __$LocaleChangedCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$LocaleChangedCopyWith<$Res> {
  __$LocaleChangedCopyWithImpl(
      _LocaleChanged _value, $Res Function(_LocaleChanged) _then)
      : super(_value, (v) => _then(v as _LocaleChanged));

  @override
  _LocaleChanged get _value => super._value as _LocaleChanged;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_LocaleChanged(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$_LocaleChanged with DiagnosticableTreeMixin implements _LocaleChanged {
  const _$_LocaleChanged({required this.locale});

  @override
  final Locale locale;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.localeChanged(locale: $locale)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsEvent.localeChanged'))
      ..add(DiagnosticsProperty('locale', locale));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocaleChanged &&
            const DeepCollectionEquality().equals(other.locale, locale));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(locale));

  @JsonKey(ignore: true)
  @override
  _$LocaleChangedCopyWith<_LocaleChanged> get copyWith =>
      __$LocaleChangedCopyWithImpl<_LocaleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(Color colorSeed) colorSeedChanged,
    required TResult Function(ThemeMode themeMode) themeModeChanged,
    required TResult Function() settingsSaved,
  }) {
    return localeChanged(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Locale locale)? localeChanged,
    TResult Function(Color colorSeed)? colorSeedChanged,
    TResult Function(ThemeMode themeMode)? themeModeChanged,
    TResult Function()? settingsSaved,
  }) {
    return localeChanged?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale locale)? localeChanged,
    TResult Function(Color colorSeed)? colorSeedChanged,
    TResult Function(ThemeMode themeMode)? themeModeChanged,
    TResult Function()? settingsSaved,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_ColorSeedChanged value) colorSeedChanged,
    required TResult Function(_ThemeModeChanged value) themeModeChanged,
    required TResult Function(_SettingsSaved value) settingsSaved,
  }) {
    return localeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_ColorSeedChanged value)? colorSeedChanged,
    TResult Function(_ThemeModeChanged value)? themeModeChanged,
    TResult Function(_SettingsSaved value)? settingsSaved,
  }) {
    return localeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_ColorSeedChanged value)? colorSeedChanged,
    TResult Function(_ThemeModeChanged value)? themeModeChanged,
    TResult Function(_SettingsSaved value)? settingsSaved,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(this);
    }
    return orElse();
  }
}

abstract class _LocaleChanged implements SettingsEvent {
  const factory _LocaleChanged({required Locale locale}) = _$_LocaleChanged;

  Locale get locale;
  @JsonKey(ignore: true)
  _$LocaleChangedCopyWith<_LocaleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ColorSeedChangedCopyWith<$Res> {
  factory _$ColorSeedChangedCopyWith(
          _ColorSeedChanged value, $Res Function(_ColorSeedChanged) then) =
      __$ColorSeedChangedCopyWithImpl<$Res>;
  $Res call({Color colorSeed});
}

/// @nodoc
class __$ColorSeedChangedCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$ColorSeedChangedCopyWith<$Res> {
  __$ColorSeedChangedCopyWithImpl(
      _ColorSeedChanged _value, $Res Function(_ColorSeedChanged) _then)
      : super(_value, (v) => _then(v as _ColorSeedChanged));

  @override
  _ColorSeedChanged get _value => super._value as _ColorSeedChanged;

  @override
  $Res call({
    Object? colorSeed = freezed,
  }) {
    return _then(_ColorSeedChanged(
      colorSeed: colorSeed == freezed
          ? _value.colorSeed
          : colorSeed // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_ColorSeedChanged
    with DiagnosticableTreeMixin
    implements _ColorSeedChanged {
  const _$_ColorSeedChanged({required this.colorSeed});

  @override
  final Color colorSeed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.colorSeedChanged(colorSeed: $colorSeed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsEvent.colorSeedChanged'))
      ..add(DiagnosticsProperty('colorSeed', colorSeed));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ColorSeedChanged &&
            const DeepCollectionEquality().equals(other.colorSeed, colorSeed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(colorSeed));

  @JsonKey(ignore: true)
  @override
  _$ColorSeedChangedCopyWith<_ColorSeedChanged> get copyWith =>
      __$ColorSeedChangedCopyWithImpl<_ColorSeedChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(Color colorSeed) colorSeedChanged,
    required TResult Function(ThemeMode themeMode) themeModeChanged,
    required TResult Function() settingsSaved,
  }) {
    return colorSeedChanged(colorSeed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Locale locale)? localeChanged,
    TResult Function(Color colorSeed)? colorSeedChanged,
    TResult Function(ThemeMode themeMode)? themeModeChanged,
    TResult Function()? settingsSaved,
  }) {
    return colorSeedChanged?.call(colorSeed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale locale)? localeChanged,
    TResult Function(Color colorSeed)? colorSeedChanged,
    TResult Function(ThemeMode themeMode)? themeModeChanged,
    TResult Function()? settingsSaved,
    required TResult orElse(),
  }) {
    if (colorSeedChanged != null) {
      return colorSeedChanged(colorSeed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_ColorSeedChanged value) colorSeedChanged,
    required TResult Function(_ThemeModeChanged value) themeModeChanged,
    required TResult Function(_SettingsSaved value) settingsSaved,
  }) {
    return colorSeedChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_ColorSeedChanged value)? colorSeedChanged,
    TResult Function(_ThemeModeChanged value)? themeModeChanged,
    TResult Function(_SettingsSaved value)? settingsSaved,
  }) {
    return colorSeedChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_ColorSeedChanged value)? colorSeedChanged,
    TResult Function(_ThemeModeChanged value)? themeModeChanged,
    TResult Function(_SettingsSaved value)? settingsSaved,
    required TResult orElse(),
  }) {
    if (colorSeedChanged != null) {
      return colorSeedChanged(this);
    }
    return orElse();
  }
}

abstract class _ColorSeedChanged implements SettingsEvent {
  const factory _ColorSeedChanged({required Color colorSeed}) =
      _$_ColorSeedChanged;

  Color get colorSeed;
  @JsonKey(ignore: true)
  _$ColorSeedChangedCopyWith<_ColorSeedChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ThemeModeChangedCopyWith<$Res> {
  factory _$ThemeModeChangedCopyWith(
          _ThemeModeChanged value, $Res Function(_ThemeModeChanged) then) =
      __$ThemeModeChangedCopyWithImpl<$Res>;
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$ThemeModeChangedCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$ThemeModeChangedCopyWith<$Res> {
  __$ThemeModeChangedCopyWithImpl(
      _ThemeModeChanged _value, $Res Function(_ThemeModeChanged) _then)
      : super(_value, (v) => _then(v as _ThemeModeChanged));

  @override
  _ThemeModeChanged get _value => super._value as _ThemeModeChanged;

  @override
  $Res call({
    Object? themeMode = freezed,
  }) {
    return _then(_ThemeModeChanged(
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$_ThemeModeChanged
    with DiagnosticableTreeMixin
    implements _ThemeModeChanged {
  const _$_ThemeModeChanged({required this.themeMode});

  @override
  final ThemeMode themeMode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.themeModeChanged(themeMode: $themeMode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsEvent.themeModeChanged'))
      ..add(DiagnosticsProperty('themeMode', themeMode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ThemeModeChanged &&
            const DeepCollectionEquality().equals(other.themeMode, themeMode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(themeMode));

  @JsonKey(ignore: true)
  @override
  _$ThemeModeChangedCopyWith<_ThemeModeChanged> get copyWith =>
      __$ThemeModeChangedCopyWithImpl<_ThemeModeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(Color colorSeed) colorSeedChanged,
    required TResult Function(ThemeMode themeMode) themeModeChanged,
    required TResult Function() settingsSaved,
  }) {
    return themeModeChanged(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Locale locale)? localeChanged,
    TResult Function(Color colorSeed)? colorSeedChanged,
    TResult Function(ThemeMode themeMode)? themeModeChanged,
    TResult Function()? settingsSaved,
  }) {
    return themeModeChanged?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale locale)? localeChanged,
    TResult Function(Color colorSeed)? colorSeedChanged,
    TResult Function(ThemeMode themeMode)? themeModeChanged,
    TResult Function()? settingsSaved,
    required TResult orElse(),
  }) {
    if (themeModeChanged != null) {
      return themeModeChanged(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_ColorSeedChanged value) colorSeedChanged,
    required TResult Function(_ThemeModeChanged value) themeModeChanged,
    required TResult Function(_SettingsSaved value) settingsSaved,
  }) {
    return themeModeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_ColorSeedChanged value)? colorSeedChanged,
    TResult Function(_ThemeModeChanged value)? themeModeChanged,
    TResult Function(_SettingsSaved value)? settingsSaved,
  }) {
    return themeModeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_ColorSeedChanged value)? colorSeedChanged,
    TResult Function(_ThemeModeChanged value)? themeModeChanged,
    TResult Function(_SettingsSaved value)? settingsSaved,
    required TResult orElse(),
  }) {
    if (themeModeChanged != null) {
      return themeModeChanged(this);
    }
    return orElse();
  }
}

abstract class _ThemeModeChanged implements SettingsEvent {
  const factory _ThemeModeChanged({required ThemeMode themeMode}) =
      _$_ThemeModeChanged;

  ThemeMode get themeMode;
  @JsonKey(ignore: true)
  _$ThemeModeChangedCopyWith<_ThemeModeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SettingsSavedCopyWith<$Res> {
  factory _$SettingsSavedCopyWith(
          _SettingsSaved value, $Res Function(_SettingsSaved) then) =
      __$SettingsSavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SettingsSavedCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$SettingsSavedCopyWith<$Res> {
  __$SettingsSavedCopyWithImpl(
      _SettingsSaved _value, $Res Function(_SettingsSaved) _then)
      : super(_value, (v) => _then(v as _SettingsSaved));

  @override
  _SettingsSaved get _value => super._value as _SettingsSaved;
}

/// @nodoc

class _$_SettingsSaved with DiagnosticableTreeMixin implements _SettingsSaved {
  const _$_SettingsSaved();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.settingsSaved()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SettingsEvent.settingsSaved'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SettingsSaved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(Color colorSeed) colorSeedChanged,
    required TResult Function(ThemeMode themeMode) themeModeChanged,
    required TResult Function() settingsSaved,
  }) {
    return settingsSaved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Locale locale)? localeChanged,
    TResult Function(Color colorSeed)? colorSeedChanged,
    TResult Function(ThemeMode themeMode)? themeModeChanged,
    TResult Function()? settingsSaved,
  }) {
    return settingsSaved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale locale)? localeChanged,
    TResult Function(Color colorSeed)? colorSeedChanged,
    TResult Function(ThemeMode themeMode)? themeModeChanged,
    TResult Function()? settingsSaved,
    required TResult orElse(),
  }) {
    if (settingsSaved != null) {
      return settingsSaved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_ColorSeedChanged value) colorSeedChanged,
    required TResult Function(_ThemeModeChanged value) themeModeChanged,
    required TResult Function(_SettingsSaved value) settingsSaved,
  }) {
    return settingsSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_ColorSeedChanged value)? colorSeedChanged,
    TResult Function(_ThemeModeChanged value)? themeModeChanged,
    TResult Function(_SettingsSaved value)? settingsSaved,
  }) {
    return settingsSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_ColorSeedChanged value)? colorSeedChanged,
    TResult Function(_ThemeModeChanged value)? themeModeChanged,
    TResult Function(_SettingsSaved value)? settingsSaved,
    required TResult orElse(),
  }) {
    if (settingsSaved != null) {
      return settingsSaved(this);
    }
    return orElse();
  }
}

abstract class _SettingsSaved implements SettingsEvent {
  const factory _SettingsSaved() = _$_SettingsSaved;
}

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

  _Initial initial({required SettingsModel settings}) {
    return _Initial(
      settings: settings,
    );
  }

  _UpdateSettingSuccess updateSettingSuccess(
      {required SettingsModel settings}) {
    return _UpdateSettingSuccess(
      settings: settings,
    );
  }

  _SaveSettingSuccess saveSettingSuccess({required SettingsModel settings}) {
    return _SaveSettingSuccess(
      settings: settings,
    );
  }
}

/// @nodoc
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  SettingsModel get settings => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettingsModel settings) initial,
    required TResult Function(SettingsModel settings) updateSettingSuccess,
    required TResult Function(SettingsModel settings) saveSettingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SettingsModel settings)? initial,
    TResult Function(SettingsModel settings)? updateSettingSuccess,
    TResult Function(SettingsModel settings)? saveSettingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsModel settings)? initial,
    TResult Function(SettingsModel settings)? updateSettingSuccess,
    TResult Function(SettingsModel settings)? saveSettingSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdateSettingSuccess value) updateSettingSuccess,
    required TResult Function(_SaveSettingSuccess value) saveSettingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateSettingSuccess value)? updateSettingSuccess,
    TResult Function(_SaveSettingSuccess value)? saveSettingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateSettingSuccess value)? updateSettingSuccess,
    TResult Function(_SaveSettingSuccess value)? saveSettingSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
  $Res call({SettingsModel settings});

  $SettingsModelCopyWith<$Res> get settings;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;

  @override
  $Res call({
    Object? settings = freezed,
  }) {
    return _then(_value.copyWith(
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as SettingsModel,
    ));
  }

  @override
  $SettingsModelCopyWith<$Res> get settings {
    return $SettingsModelCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({SettingsModel settings});

  @override
  $SettingsModelCopyWith<$Res> get settings;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? settings = freezed,
  }) {
    return _then(_Initial(
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as SettingsModel,
    ));
  }
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial({required this.settings});

  @override
  final SettingsModel settings;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsState.initial(settings: $settings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsState.initial'))
      ..add(DiagnosticsProperty('settings', settings));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.settings, settings));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(settings));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettingsModel settings) initial,
    required TResult Function(SettingsModel settings) updateSettingSuccess,
    required TResult Function(SettingsModel settings) saveSettingSuccess,
  }) {
    return initial(settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SettingsModel settings)? initial,
    TResult Function(SettingsModel settings)? updateSettingSuccess,
    TResult Function(SettingsModel settings)? saveSettingSuccess,
  }) {
    return initial?.call(settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsModel settings)? initial,
    TResult Function(SettingsModel settings)? updateSettingSuccess,
    TResult Function(SettingsModel settings)? saveSettingSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdateSettingSuccess value) updateSettingSuccess,
    required TResult Function(_SaveSettingSuccess value) saveSettingSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateSettingSuccess value)? updateSettingSuccess,
    TResult Function(_SaveSettingSuccess value)? saveSettingSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateSettingSuccess value)? updateSettingSuccess,
    TResult Function(_SaveSettingSuccess value)? saveSettingSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SettingsState {
  const factory _Initial({required SettingsModel settings}) = _$_Initial;

  @override
  SettingsModel get settings;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateSettingSuccessCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$UpdateSettingSuccessCopyWith(_UpdateSettingSuccess value,
          $Res Function(_UpdateSettingSuccess) then) =
      __$UpdateSettingSuccessCopyWithImpl<$Res>;
  @override
  $Res call({SettingsModel settings});

  @override
  $SettingsModelCopyWith<$Res> get settings;
}

/// @nodoc
class __$UpdateSettingSuccessCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$UpdateSettingSuccessCopyWith<$Res> {
  __$UpdateSettingSuccessCopyWithImpl(
      _UpdateSettingSuccess _value, $Res Function(_UpdateSettingSuccess) _then)
      : super(_value, (v) => _then(v as _UpdateSettingSuccess));

  @override
  _UpdateSettingSuccess get _value => super._value as _UpdateSettingSuccess;

  @override
  $Res call({
    Object? settings = freezed,
  }) {
    return _then(_UpdateSettingSuccess(
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as SettingsModel,
    ));
  }
}

/// @nodoc

class _$_UpdateSettingSuccess
    with DiagnosticableTreeMixin
    implements _UpdateSettingSuccess {
  const _$_UpdateSettingSuccess({required this.settings});

  @override
  final SettingsModel settings;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsState.updateSettingSuccess(settings: $settings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsState.updateSettingSuccess'))
      ..add(DiagnosticsProperty('settings', settings));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateSettingSuccess &&
            const DeepCollectionEquality().equals(other.settings, settings));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(settings));

  @JsonKey(ignore: true)
  @override
  _$UpdateSettingSuccessCopyWith<_UpdateSettingSuccess> get copyWith =>
      __$UpdateSettingSuccessCopyWithImpl<_UpdateSettingSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettingsModel settings) initial,
    required TResult Function(SettingsModel settings) updateSettingSuccess,
    required TResult Function(SettingsModel settings) saveSettingSuccess,
  }) {
    return updateSettingSuccess(settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SettingsModel settings)? initial,
    TResult Function(SettingsModel settings)? updateSettingSuccess,
    TResult Function(SettingsModel settings)? saveSettingSuccess,
  }) {
    return updateSettingSuccess?.call(settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsModel settings)? initial,
    TResult Function(SettingsModel settings)? updateSettingSuccess,
    TResult Function(SettingsModel settings)? saveSettingSuccess,
    required TResult orElse(),
  }) {
    if (updateSettingSuccess != null) {
      return updateSettingSuccess(settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdateSettingSuccess value) updateSettingSuccess,
    required TResult Function(_SaveSettingSuccess value) saveSettingSuccess,
  }) {
    return updateSettingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateSettingSuccess value)? updateSettingSuccess,
    TResult Function(_SaveSettingSuccess value)? saveSettingSuccess,
  }) {
    return updateSettingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateSettingSuccess value)? updateSettingSuccess,
    TResult Function(_SaveSettingSuccess value)? saveSettingSuccess,
    required TResult orElse(),
  }) {
    if (updateSettingSuccess != null) {
      return updateSettingSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateSettingSuccess implements SettingsState {
  const factory _UpdateSettingSuccess({required SettingsModel settings}) =
      _$_UpdateSettingSuccess;

  @override
  SettingsModel get settings;
  @override
  @JsonKey(ignore: true)
  _$UpdateSettingSuccessCopyWith<_UpdateSettingSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SaveSettingSuccessCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$SaveSettingSuccessCopyWith(
          _SaveSettingSuccess value, $Res Function(_SaveSettingSuccess) then) =
      __$SaveSettingSuccessCopyWithImpl<$Res>;
  @override
  $Res call({SettingsModel settings});

  @override
  $SettingsModelCopyWith<$Res> get settings;
}

/// @nodoc
class __$SaveSettingSuccessCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$SaveSettingSuccessCopyWith<$Res> {
  __$SaveSettingSuccessCopyWithImpl(
      _SaveSettingSuccess _value, $Res Function(_SaveSettingSuccess) _then)
      : super(_value, (v) => _then(v as _SaveSettingSuccess));

  @override
  _SaveSettingSuccess get _value => super._value as _SaveSettingSuccess;

  @override
  $Res call({
    Object? settings = freezed,
  }) {
    return _then(_SaveSettingSuccess(
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as SettingsModel,
    ));
  }
}

/// @nodoc

class _$_SaveSettingSuccess
    with DiagnosticableTreeMixin
    implements _SaveSettingSuccess {
  const _$_SaveSettingSuccess({required this.settings});

  @override
  final SettingsModel settings;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsState.saveSettingSuccess(settings: $settings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsState.saveSettingSuccess'))
      ..add(DiagnosticsProperty('settings', settings));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveSettingSuccess &&
            const DeepCollectionEquality().equals(other.settings, settings));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(settings));

  @JsonKey(ignore: true)
  @override
  _$SaveSettingSuccessCopyWith<_SaveSettingSuccess> get copyWith =>
      __$SaveSettingSuccessCopyWithImpl<_SaveSettingSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettingsModel settings) initial,
    required TResult Function(SettingsModel settings) updateSettingSuccess,
    required TResult Function(SettingsModel settings) saveSettingSuccess,
  }) {
    return saveSettingSuccess(settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SettingsModel settings)? initial,
    TResult Function(SettingsModel settings)? updateSettingSuccess,
    TResult Function(SettingsModel settings)? saveSettingSuccess,
  }) {
    return saveSettingSuccess?.call(settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsModel settings)? initial,
    TResult Function(SettingsModel settings)? updateSettingSuccess,
    TResult Function(SettingsModel settings)? saveSettingSuccess,
    required TResult orElse(),
  }) {
    if (saveSettingSuccess != null) {
      return saveSettingSuccess(settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdateSettingSuccess value) updateSettingSuccess,
    required TResult Function(_SaveSettingSuccess value) saveSettingSuccess,
  }) {
    return saveSettingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateSettingSuccess value)? updateSettingSuccess,
    TResult Function(_SaveSettingSuccess value)? saveSettingSuccess,
  }) {
    return saveSettingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateSettingSuccess value)? updateSettingSuccess,
    TResult Function(_SaveSettingSuccess value)? saveSettingSuccess,
    required TResult orElse(),
  }) {
    if (saveSettingSuccess != null) {
      return saveSettingSuccess(this);
    }
    return orElse();
  }
}

abstract class _SaveSettingSuccess implements SettingsState {
  const factory _SaveSettingSuccess({required SettingsModel settings}) =
      _$_SaveSettingSuccess;

  @override
  SettingsModel get settings;
  @override
  @JsonKey(ignore: true)
  _$SaveSettingSuccessCopyWith<_SaveSettingSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
