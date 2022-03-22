// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stats_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StatsEventTearOff {
  const _$StatsEventTearOff();

  _Started started({required List<MinerModel> miners}) {
    return _Started(
      miners: miners,
    );
  }

  _TimerTicked timerTicked(
      {required Map<RepositoryIndex, StatsReturnModel?> statMap}) {
    return _TimerTicked(
      statMap: statMap,
    );
  }
}

/// @nodoc
const $StatsEvent = _$StatsEventTearOff();

/// @nodoc
mixin _$StatsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MinerModel> miners) started,
    required TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)
        timerTicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<MinerModel> miners)? started,
    TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)?
        timerTicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MinerModel> miners)? started,
    TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)?
        timerTicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TimerTicked value) timerTicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TimerTicked value)? timerTicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TimerTicked value)? timerTicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsEventCopyWith<$Res> {
  factory $StatsEventCopyWith(
          StatsEvent value, $Res Function(StatsEvent) then) =
      _$StatsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StatsEventCopyWithImpl<$Res> implements $StatsEventCopyWith<$Res> {
  _$StatsEventCopyWithImpl(this._value, this._then);

  final StatsEvent _value;
  // ignore: unused_field
  final $Res Function(StatsEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({List<MinerModel> miners});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$StatsEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? miners = freezed,
  }) {
    return _then(_Started(
      miners: miners == freezed
          ? _value.miners
          : miners // ignore: cast_nullable_to_non_nullable
              as List<MinerModel>,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required this.miners});

  @override
  final List<MinerModel> miners;

  @override
  String toString() {
    return 'StatsEvent.started(miners: $miners)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Started &&
            const DeepCollectionEquality().equals(other.miners, miners));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(miners));

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MinerModel> miners) started,
    required TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)
        timerTicked,
  }) {
    return started(miners);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<MinerModel> miners)? started,
    TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)?
        timerTicked,
  }) {
    return started?.call(miners);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MinerModel> miners)? started,
    TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)?
        timerTicked,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(miners);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TimerTicked value) timerTicked,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TimerTicked value)? timerTicked,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TimerTicked value)? timerTicked,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements StatsEvent {
  const factory _Started({required List<MinerModel> miners}) = _$_Started;

  List<MinerModel> get miners;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TimerTickedCopyWith<$Res> {
  factory _$TimerTickedCopyWith(
          _TimerTicked value, $Res Function(_TimerTicked) then) =
      __$TimerTickedCopyWithImpl<$Res>;
  $Res call({Map<RepositoryIndex, StatsReturnModel?> statMap});
}

/// @nodoc
class __$TimerTickedCopyWithImpl<$Res> extends _$StatsEventCopyWithImpl<$Res>
    implements _$TimerTickedCopyWith<$Res> {
  __$TimerTickedCopyWithImpl(
      _TimerTicked _value, $Res Function(_TimerTicked) _then)
      : super(_value, (v) => _then(v as _TimerTicked));

  @override
  _TimerTicked get _value => super._value as _TimerTicked;

  @override
  $Res call({
    Object? statMap = freezed,
  }) {
    return _then(_TimerTicked(
      statMap: statMap == freezed
          ? _value.statMap
          : statMap // ignore: cast_nullable_to_non_nullable
              as Map<RepositoryIndex, StatsReturnModel?>,
    ));
  }
}

/// @nodoc

class _$_TimerTicked implements _TimerTicked {
  const _$_TimerTicked({required this.statMap});

  @override
  final Map<RepositoryIndex, StatsReturnModel?> statMap;

  @override
  String toString() {
    return 'StatsEvent.timerTicked(statMap: $statMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimerTicked &&
            const DeepCollectionEquality().equals(other.statMap, statMap));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(statMap));

  @JsonKey(ignore: true)
  @override
  _$TimerTickedCopyWith<_TimerTicked> get copyWith =>
      __$TimerTickedCopyWithImpl<_TimerTicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MinerModel> miners) started,
    required TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)
        timerTicked,
  }) {
    return timerTicked(statMap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<MinerModel> miners)? started,
    TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)?
        timerTicked,
  }) {
    return timerTicked?.call(statMap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MinerModel> miners)? started,
    TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)?
        timerTicked,
    required TResult orElse(),
  }) {
    if (timerTicked != null) {
      return timerTicked(statMap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TimerTicked value) timerTicked,
  }) {
    return timerTicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TimerTicked value)? timerTicked,
  }) {
    return timerTicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TimerTicked value)? timerTicked,
    required TResult orElse(),
  }) {
    if (timerTicked != null) {
      return timerTicked(this);
    }
    return orElse();
  }
}

abstract class _TimerTicked implements StatsEvent {
  const factory _TimerTicked(
          {required Map<RepositoryIndex, StatsReturnModel?> statMap}) =
      _$_TimerTicked;

  Map<RepositoryIndex, StatsReturnModel?> get statMap;
  @JsonKey(ignore: true)
  _$TimerTickedCopyWith<_TimerTicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$StatsStateTearOff {
  const _$StatsStateTearOff();

  _Initial initial({required Map<RepositoryIndex, StatsReturnModel?> statMap}) {
    return _Initial(
      statMap: statMap,
    );
  }

  _ChangeStatSuccess changeStatSuccess(
      {required Map<RepositoryIndex, StatsReturnModel?> statMap}) {
    return _ChangeStatSuccess(
      statMap: statMap,
    );
  }
}

/// @nodoc
const $StatsState = _$StatsStateTearOff();

/// @nodoc
mixin _$StatsState {
  Map<RepositoryIndex, StatsReturnModel?> get statMap =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)
        initial,
    required TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)
        changeStatSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)? initial,
    TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)?
        changeStatSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)? initial,
    TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)?
        changeStatSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeStatSuccess value) changeStatSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeStatSuccess value)? changeStatSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeStatSuccess value)? changeStatSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatsStateCopyWith<StatsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsStateCopyWith<$Res> {
  factory $StatsStateCopyWith(
          StatsState value, $Res Function(StatsState) then) =
      _$StatsStateCopyWithImpl<$Res>;
  $Res call({Map<RepositoryIndex, StatsReturnModel?> statMap});
}

/// @nodoc
class _$StatsStateCopyWithImpl<$Res> implements $StatsStateCopyWith<$Res> {
  _$StatsStateCopyWithImpl(this._value, this._then);

  final StatsState _value;
  // ignore: unused_field
  final $Res Function(StatsState) _then;

  @override
  $Res call({
    Object? statMap = freezed,
  }) {
    return _then(_value.copyWith(
      statMap: statMap == freezed
          ? _value.statMap
          : statMap // ignore: cast_nullable_to_non_nullable
              as Map<RepositoryIndex, StatsReturnModel?>,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $StatsStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Map<RepositoryIndex, StatsReturnModel?> statMap});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$StatsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? statMap = freezed,
  }) {
    return _then(_Initial(
      statMap: statMap == freezed
          ? _value.statMap
          : statMap // ignore: cast_nullable_to_non_nullable
              as Map<RepositoryIndex, StatsReturnModel?>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.statMap});

  @override
  final Map<RepositoryIndex, StatsReturnModel?> statMap;

  @override
  String toString() {
    return 'StatsState.initial(statMap: $statMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.statMap, statMap));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(statMap));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)
        initial,
    required TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)
        changeStatSuccess,
  }) {
    return initial(statMap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)? initial,
    TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)?
        changeStatSuccess,
  }) {
    return initial?.call(statMap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)? initial,
    TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)?
        changeStatSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(statMap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeStatSuccess value) changeStatSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeStatSuccess value)? changeStatSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeStatSuccess value)? changeStatSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StatsState {
  const factory _Initial(
      {required Map<RepositoryIndex, StatsReturnModel?> statMap}) = _$_Initial;

  @override
  Map<RepositoryIndex, StatsReturnModel?> get statMap;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeStatSuccessCopyWith<$Res>
    implements $StatsStateCopyWith<$Res> {
  factory _$ChangeStatSuccessCopyWith(
          _ChangeStatSuccess value, $Res Function(_ChangeStatSuccess) then) =
      __$ChangeStatSuccessCopyWithImpl<$Res>;
  @override
  $Res call({Map<RepositoryIndex, StatsReturnModel?> statMap});
}

/// @nodoc
class __$ChangeStatSuccessCopyWithImpl<$Res>
    extends _$StatsStateCopyWithImpl<$Res>
    implements _$ChangeStatSuccessCopyWith<$Res> {
  __$ChangeStatSuccessCopyWithImpl(
      _ChangeStatSuccess _value, $Res Function(_ChangeStatSuccess) _then)
      : super(_value, (v) => _then(v as _ChangeStatSuccess));

  @override
  _ChangeStatSuccess get _value => super._value as _ChangeStatSuccess;

  @override
  $Res call({
    Object? statMap = freezed,
  }) {
    return _then(_ChangeStatSuccess(
      statMap: statMap == freezed
          ? _value.statMap
          : statMap // ignore: cast_nullable_to_non_nullable
              as Map<RepositoryIndex, StatsReturnModel?>,
    ));
  }
}

/// @nodoc

class _$_ChangeStatSuccess implements _ChangeStatSuccess {
  const _$_ChangeStatSuccess({required this.statMap});

  @override
  final Map<RepositoryIndex, StatsReturnModel?> statMap;

  @override
  String toString() {
    return 'StatsState.changeStatSuccess(statMap: $statMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeStatSuccess &&
            const DeepCollectionEquality().equals(other.statMap, statMap));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(statMap));

  @JsonKey(ignore: true)
  @override
  _$ChangeStatSuccessCopyWith<_ChangeStatSuccess> get copyWith =>
      __$ChangeStatSuccessCopyWithImpl<_ChangeStatSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)
        initial,
    required TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)
        changeStatSuccess,
  }) {
    return changeStatSuccess(statMap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)? initial,
    TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)?
        changeStatSuccess,
  }) {
    return changeStatSuccess?.call(statMap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)? initial,
    TResult Function(Map<RepositoryIndex, StatsReturnModel?> statMap)?
        changeStatSuccess,
    required TResult orElse(),
  }) {
    if (changeStatSuccess != null) {
      return changeStatSuccess(statMap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeStatSuccess value) changeStatSuccess,
  }) {
    return changeStatSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeStatSuccess value)? changeStatSuccess,
  }) {
    return changeStatSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeStatSuccess value)? changeStatSuccess,
    required TResult orElse(),
  }) {
    if (changeStatSuccess != null) {
      return changeStatSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChangeStatSuccess implements StatsState {
  const factory _ChangeStatSuccess(
          {required Map<RepositoryIndex, StatsReturnModel?> statMap}) =
      _$_ChangeStatSuccess;

  @override
  Map<RepositoryIndex, StatsReturnModel?> get statMap;
  @override
  @JsonKey(ignore: true)
  _$ChangeStatSuccessCopyWith<_ChangeStatSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
