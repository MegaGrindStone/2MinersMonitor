// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'miner_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MinerEventTearOff {
  const _$MinerEventTearOff();

  _LoadMinerRequested loadMinerRequested() {
    return const _LoadMinerRequested();
  }
}

/// @nodoc
const $MinerEvent = _$MinerEventTearOff();

/// @nodoc
mixin _$MinerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMinerRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadMinerRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMinerRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMinerRequested value) loadMinerRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadMinerRequested value)? loadMinerRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMinerRequested value)? loadMinerRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinerEventCopyWith<$Res> {
  factory $MinerEventCopyWith(
          MinerEvent value, $Res Function(MinerEvent) then) =
      _$MinerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MinerEventCopyWithImpl<$Res> implements $MinerEventCopyWith<$Res> {
  _$MinerEventCopyWithImpl(this._value, this._then);

  final MinerEvent _value;
  // ignore: unused_field
  final $Res Function(MinerEvent) _then;
}

/// @nodoc
abstract class _$LoadMinerRequestedCopyWith<$Res> {
  factory _$LoadMinerRequestedCopyWith(
          _LoadMinerRequested value, $Res Function(_LoadMinerRequested) then) =
      __$LoadMinerRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadMinerRequestedCopyWithImpl<$Res>
    extends _$MinerEventCopyWithImpl<$Res>
    implements _$LoadMinerRequestedCopyWith<$Res> {
  __$LoadMinerRequestedCopyWithImpl(
      _LoadMinerRequested _value, $Res Function(_LoadMinerRequested) _then)
      : super(_value, (v) => _then(v as _LoadMinerRequested));

  @override
  _LoadMinerRequested get _value => super._value as _LoadMinerRequested;
}

/// @nodoc

class _$_LoadMinerRequested implements _LoadMinerRequested {
  const _$_LoadMinerRequested();

  @override
  String toString() {
    return 'MinerEvent.loadMinerRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadMinerRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMinerRequested,
  }) {
    return loadMinerRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadMinerRequested,
  }) {
    return loadMinerRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMinerRequested,
    required TResult orElse(),
  }) {
    if (loadMinerRequested != null) {
      return loadMinerRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMinerRequested value) loadMinerRequested,
  }) {
    return loadMinerRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadMinerRequested value)? loadMinerRequested,
  }) {
    return loadMinerRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMinerRequested value)? loadMinerRequested,
    required TResult orElse(),
  }) {
    if (loadMinerRequested != null) {
      return loadMinerRequested(this);
    }
    return orElse();
  }
}

abstract class _LoadMinerRequested implements MinerEvent {
  const factory _LoadMinerRequested() = _$_LoadMinerRequested;
}

/// @nodoc
class _$MinerStateTearOff {
  const _$MinerStateTearOff();

  _Initial initial({required MinerModel miner}) {
    return _Initial(
      miner: miner,
    );
  }

  _LoadMinerInProgress loadMinerInProgress() {
    return const _LoadMinerInProgress();
  }

  _LoadMinerSuccess loadMinerSuccess({required MinerModel miner}) {
    return _LoadMinerSuccess(
      miner: miner,
    );
  }

  _LoadMinerFailure loadMinerFailure({required ExceptionModel exception}) {
    return _LoadMinerFailure(
      exception: exception,
    );
  }
}

/// @nodoc
const $MinerState = _$MinerStateTearOff();

/// @nodoc
mixin _$MinerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MinerModel miner) initial,
    required TResult Function() loadMinerInProgress,
    required TResult Function(MinerModel miner) loadMinerSuccess,
    required TResult Function(ExceptionModel exception) loadMinerFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MinerModel miner)? initial,
    TResult Function()? loadMinerInProgress,
    TResult Function(MinerModel miner)? loadMinerSuccess,
    TResult Function(ExceptionModel exception)? loadMinerFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MinerModel miner)? initial,
    TResult Function()? loadMinerInProgress,
    TResult Function(MinerModel miner)? loadMinerSuccess,
    TResult Function(ExceptionModel exception)? loadMinerFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadMinerInProgress value) loadMinerInProgress,
    required TResult Function(_LoadMinerSuccess value) loadMinerSuccess,
    required TResult Function(_LoadMinerFailure value) loadMinerFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadMinerInProgress value)? loadMinerInProgress,
    TResult Function(_LoadMinerSuccess value)? loadMinerSuccess,
    TResult Function(_LoadMinerFailure value)? loadMinerFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadMinerInProgress value)? loadMinerInProgress,
    TResult Function(_LoadMinerSuccess value)? loadMinerSuccess,
    TResult Function(_LoadMinerFailure value)? loadMinerFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinerStateCopyWith<$Res> {
  factory $MinerStateCopyWith(
          MinerState value, $Res Function(MinerState) then) =
      _$MinerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MinerStateCopyWithImpl<$Res> implements $MinerStateCopyWith<$Res> {
  _$MinerStateCopyWithImpl(this._value, this._then);

  final MinerState _value;
  // ignore: unused_field
  final $Res Function(MinerState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  $Res call({MinerModel miner});

  $MinerModelCopyWith<$Res> get miner;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$MinerStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? miner = freezed,
  }) {
    return _then(_Initial(
      miner: miner == freezed
          ? _value.miner
          : miner // ignore: cast_nullable_to_non_nullable
              as MinerModel,
    ));
  }

  @override
  $MinerModelCopyWith<$Res> get miner {
    return $MinerModelCopyWith<$Res>(_value.miner, (value) {
      return _then(_value.copyWith(miner: value));
    });
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.miner});

  @override
  final MinerModel miner;

  @override
  String toString() {
    return 'MinerState.initial(miner: $miner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.miner, miner));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(miner));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MinerModel miner) initial,
    required TResult Function() loadMinerInProgress,
    required TResult Function(MinerModel miner) loadMinerSuccess,
    required TResult Function(ExceptionModel exception) loadMinerFailure,
  }) {
    return initial(miner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MinerModel miner)? initial,
    TResult Function()? loadMinerInProgress,
    TResult Function(MinerModel miner)? loadMinerSuccess,
    TResult Function(ExceptionModel exception)? loadMinerFailure,
  }) {
    return initial?.call(miner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MinerModel miner)? initial,
    TResult Function()? loadMinerInProgress,
    TResult Function(MinerModel miner)? loadMinerSuccess,
    TResult Function(ExceptionModel exception)? loadMinerFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(miner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadMinerInProgress value) loadMinerInProgress,
    required TResult Function(_LoadMinerSuccess value) loadMinerSuccess,
    required TResult Function(_LoadMinerFailure value) loadMinerFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadMinerInProgress value)? loadMinerInProgress,
    TResult Function(_LoadMinerSuccess value)? loadMinerSuccess,
    TResult Function(_LoadMinerFailure value)? loadMinerFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadMinerInProgress value)? loadMinerInProgress,
    TResult Function(_LoadMinerSuccess value)? loadMinerSuccess,
    TResult Function(_LoadMinerFailure value)? loadMinerFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MinerState {
  const factory _Initial({required MinerModel miner}) = _$_Initial;

  MinerModel get miner;
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadMinerInProgressCopyWith<$Res> {
  factory _$LoadMinerInProgressCopyWith(_LoadMinerInProgress value,
          $Res Function(_LoadMinerInProgress) then) =
      __$LoadMinerInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadMinerInProgressCopyWithImpl<$Res>
    extends _$MinerStateCopyWithImpl<$Res>
    implements _$LoadMinerInProgressCopyWith<$Res> {
  __$LoadMinerInProgressCopyWithImpl(
      _LoadMinerInProgress _value, $Res Function(_LoadMinerInProgress) _then)
      : super(_value, (v) => _then(v as _LoadMinerInProgress));

  @override
  _LoadMinerInProgress get _value => super._value as _LoadMinerInProgress;
}

/// @nodoc

class _$_LoadMinerInProgress implements _LoadMinerInProgress {
  const _$_LoadMinerInProgress();

  @override
  String toString() {
    return 'MinerState.loadMinerInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadMinerInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MinerModel miner) initial,
    required TResult Function() loadMinerInProgress,
    required TResult Function(MinerModel miner) loadMinerSuccess,
    required TResult Function(ExceptionModel exception) loadMinerFailure,
  }) {
    return loadMinerInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MinerModel miner)? initial,
    TResult Function()? loadMinerInProgress,
    TResult Function(MinerModel miner)? loadMinerSuccess,
    TResult Function(ExceptionModel exception)? loadMinerFailure,
  }) {
    return loadMinerInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MinerModel miner)? initial,
    TResult Function()? loadMinerInProgress,
    TResult Function(MinerModel miner)? loadMinerSuccess,
    TResult Function(ExceptionModel exception)? loadMinerFailure,
    required TResult orElse(),
  }) {
    if (loadMinerInProgress != null) {
      return loadMinerInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadMinerInProgress value) loadMinerInProgress,
    required TResult Function(_LoadMinerSuccess value) loadMinerSuccess,
    required TResult Function(_LoadMinerFailure value) loadMinerFailure,
  }) {
    return loadMinerInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadMinerInProgress value)? loadMinerInProgress,
    TResult Function(_LoadMinerSuccess value)? loadMinerSuccess,
    TResult Function(_LoadMinerFailure value)? loadMinerFailure,
  }) {
    return loadMinerInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadMinerInProgress value)? loadMinerInProgress,
    TResult Function(_LoadMinerSuccess value)? loadMinerSuccess,
    TResult Function(_LoadMinerFailure value)? loadMinerFailure,
    required TResult orElse(),
  }) {
    if (loadMinerInProgress != null) {
      return loadMinerInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadMinerInProgress implements MinerState {
  const factory _LoadMinerInProgress() = _$_LoadMinerInProgress;
}

/// @nodoc
abstract class _$LoadMinerSuccessCopyWith<$Res> {
  factory _$LoadMinerSuccessCopyWith(
          _LoadMinerSuccess value, $Res Function(_LoadMinerSuccess) then) =
      __$LoadMinerSuccessCopyWithImpl<$Res>;
  $Res call({MinerModel miner});

  $MinerModelCopyWith<$Res> get miner;
}

/// @nodoc
class __$LoadMinerSuccessCopyWithImpl<$Res>
    extends _$MinerStateCopyWithImpl<$Res>
    implements _$LoadMinerSuccessCopyWith<$Res> {
  __$LoadMinerSuccessCopyWithImpl(
      _LoadMinerSuccess _value, $Res Function(_LoadMinerSuccess) _then)
      : super(_value, (v) => _then(v as _LoadMinerSuccess));

  @override
  _LoadMinerSuccess get _value => super._value as _LoadMinerSuccess;

  @override
  $Res call({
    Object? miner = freezed,
  }) {
    return _then(_LoadMinerSuccess(
      miner: miner == freezed
          ? _value.miner
          : miner // ignore: cast_nullable_to_non_nullable
              as MinerModel,
    ));
  }

  @override
  $MinerModelCopyWith<$Res> get miner {
    return $MinerModelCopyWith<$Res>(_value.miner, (value) {
      return _then(_value.copyWith(miner: value));
    });
  }
}

/// @nodoc

class _$_LoadMinerSuccess implements _LoadMinerSuccess {
  const _$_LoadMinerSuccess({required this.miner});

  @override
  final MinerModel miner;

  @override
  String toString() {
    return 'MinerState.loadMinerSuccess(miner: $miner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadMinerSuccess &&
            const DeepCollectionEquality().equals(other.miner, miner));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(miner));

  @JsonKey(ignore: true)
  @override
  _$LoadMinerSuccessCopyWith<_LoadMinerSuccess> get copyWith =>
      __$LoadMinerSuccessCopyWithImpl<_LoadMinerSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MinerModel miner) initial,
    required TResult Function() loadMinerInProgress,
    required TResult Function(MinerModel miner) loadMinerSuccess,
    required TResult Function(ExceptionModel exception) loadMinerFailure,
  }) {
    return loadMinerSuccess(miner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MinerModel miner)? initial,
    TResult Function()? loadMinerInProgress,
    TResult Function(MinerModel miner)? loadMinerSuccess,
    TResult Function(ExceptionModel exception)? loadMinerFailure,
  }) {
    return loadMinerSuccess?.call(miner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MinerModel miner)? initial,
    TResult Function()? loadMinerInProgress,
    TResult Function(MinerModel miner)? loadMinerSuccess,
    TResult Function(ExceptionModel exception)? loadMinerFailure,
    required TResult orElse(),
  }) {
    if (loadMinerSuccess != null) {
      return loadMinerSuccess(miner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadMinerInProgress value) loadMinerInProgress,
    required TResult Function(_LoadMinerSuccess value) loadMinerSuccess,
    required TResult Function(_LoadMinerFailure value) loadMinerFailure,
  }) {
    return loadMinerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadMinerInProgress value)? loadMinerInProgress,
    TResult Function(_LoadMinerSuccess value)? loadMinerSuccess,
    TResult Function(_LoadMinerFailure value)? loadMinerFailure,
  }) {
    return loadMinerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadMinerInProgress value)? loadMinerInProgress,
    TResult Function(_LoadMinerSuccess value)? loadMinerSuccess,
    TResult Function(_LoadMinerFailure value)? loadMinerFailure,
    required TResult orElse(),
  }) {
    if (loadMinerSuccess != null) {
      return loadMinerSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadMinerSuccess implements MinerState {
  const factory _LoadMinerSuccess({required MinerModel miner}) =
      _$_LoadMinerSuccess;

  MinerModel get miner;
  @JsonKey(ignore: true)
  _$LoadMinerSuccessCopyWith<_LoadMinerSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadMinerFailureCopyWith<$Res> {
  factory _$LoadMinerFailureCopyWith(
          _LoadMinerFailure value, $Res Function(_LoadMinerFailure) then) =
      __$LoadMinerFailureCopyWithImpl<$Res>;
  $Res call({ExceptionModel exception});

  $ExceptionModelCopyWith<$Res> get exception;
}

/// @nodoc
class __$LoadMinerFailureCopyWithImpl<$Res>
    extends _$MinerStateCopyWithImpl<$Res>
    implements _$LoadMinerFailureCopyWith<$Res> {
  __$LoadMinerFailureCopyWithImpl(
      _LoadMinerFailure _value, $Res Function(_LoadMinerFailure) _then)
      : super(_value, (v) => _then(v as _LoadMinerFailure));

  @override
  _LoadMinerFailure get _value => super._value as _LoadMinerFailure;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_LoadMinerFailure(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as ExceptionModel,
    ));
  }

  @override
  $ExceptionModelCopyWith<$Res> get exception {
    return $ExceptionModelCopyWith<$Res>(_value.exception, (value) {
      return _then(_value.copyWith(exception: value));
    });
  }
}

/// @nodoc

class _$_LoadMinerFailure implements _LoadMinerFailure {
  const _$_LoadMinerFailure({required this.exception});

  @override
  final ExceptionModel exception;

  @override
  String toString() {
    return 'MinerState.loadMinerFailure(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadMinerFailure &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$LoadMinerFailureCopyWith<_LoadMinerFailure> get copyWith =>
      __$LoadMinerFailureCopyWithImpl<_LoadMinerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MinerModel miner) initial,
    required TResult Function() loadMinerInProgress,
    required TResult Function(MinerModel miner) loadMinerSuccess,
    required TResult Function(ExceptionModel exception) loadMinerFailure,
  }) {
    return loadMinerFailure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MinerModel miner)? initial,
    TResult Function()? loadMinerInProgress,
    TResult Function(MinerModel miner)? loadMinerSuccess,
    TResult Function(ExceptionModel exception)? loadMinerFailure,
  }) {
    return loadMinerFailure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MinerModel miner)? initial,
    TResult Function()? loadMinerInProgress,
    TResult Function(MinerModel miner)? loadMinerSuccess,
    TResult Function(ExceptionModel exception)? loadMinerFailure,
    required TResult orElse(),
  }) {
    if (loadMinerFailure != null) {
      return loadMinerFailure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadMinerInProgress value) loadMinerInProgress,
    required TResult Function(_LoadMinerSuccess value) loadMinerSuccess,
    required TResult Function(_LoadMinerFailure value) loadMinerFailure,
  }) {
    return loadMinerFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadMinerInProgress value)? loadMinerInProgress,
    TResult Function(_LoadMinerSuccess value)? loadMinerSuccess,
    TResult Function(_LoadMinerFailure value)? loadMinerFailure,
  }) {
    return loadMinerFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadMinerInProgress value)? loadMinerInProgress,
    TResult Function(_LoadMinerSuccess value)? loadMinerSuccess,
    TResult Function(_LoadMinerFailure value)? loadMinerFailure,
    required TResult orElse(),
  }) {
    if (loadMinerFailure != null) {
      return loadMinerFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadMinerFailure implements MinerState {
  const factory _LoadMinerFailure({required ExceptionModel exception}) =
      _$_LoadMinerFailure;

  ExceptionModel get exception;
  @JsonKey(ignore: true)
  _$LoadMinerFailureCopyWith<_LoadMinerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
