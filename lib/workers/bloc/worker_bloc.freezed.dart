// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'worker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WorkerEventTearOff {
  const _$WorkerEventTearOff();

  _WorkerLoaded workerLoaded({required WorkerModel worker}) {
    return _WorkerLoaded(
      worker: worker,
    );
  }
}

/// @nodoc
const $WorkerEvent = _$WorkerEventTearOff();

/// @nodoc
mixin _$WorkerEvent {
  WorkerModel get worker => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkerModel worker) workerLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WorkerModel worker)? workerLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkerModel worker)? workerLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkerLoaded value) workerLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WorkerLoaded value)? workerLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkerLoaded value)? workerLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkerEventCopyWith<WorkerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkerEventCopyWith<$Res> {
  factory $WorkerEventCopyWith(
          WorkerEvent value, $Res Function(WorkerEvent) then) =
      _$WorkerEventCopyWithImpl<$Res>;
  $Res call({WorkerModel worker});

  $WorkerModelCopyWith<$Res> get worker;
}

/// @nodoc
class _$WorkerEventCopyWithImpl<$Res> implements $WorkerEventCopyWith<$Res> {
  _$WorkerEventCopyWithImpl(this._value, this._then);

  final WorkerEvent _value;
  // ignore: unused_field
  final $Res Function(WorkerEvent) _then;

  @override
  $Res call({
    Object? worker = freezed,
  }) {
    return _then(_value.copyWith(
      worker: worker == freezed
          ? _value.worker
          : worker // ignore: cast_nullable_to_non_nullable
              as WorkerModel,
    ));
  }

  @override
  $WorkerModelCopyWith<$Res> get worker {
    return $WorkerModelCopyWith<$Res>(_value.worker, (value) {
      return _then(_value.copyWith(worker: value));
    });
  }
}

/// @nodoc
abstract class _$WorkerLoadedCopyWith<$Res>
    implements $WorkerEventCopyWith<$Res> {
  factory _$WorkerLoadedCopyWith(
          _WorkerLoaded value, $Res Function(_WorkerLoaded) then) =
      __$WorkerLoadedCopyWithImpl<$Res>;
  @override
  $Res call({WorkerModel worker});

  @override
  $WorkerModelCopyWith<$Res> get worker;
}

/// @nodoc
class __$WorkerLoadedCopyWithImpl<$Res> extends _$WorkerEventCopyWithImpl<$Res>
    implements _$WorkerLoadedCopyWith<$Res> {
  __$WorkerLoadedCopyWithImpl(
      _WorkerLoaded _value, $Res Function(_WorkerLoaded) _then)
      : super(_value, (v) => _then(v as _WorkerLoaded));

  @override
  _WorkerLoaded get _value => super._value as _WorkerLoaded;

  @override
  $Res call({
    Object? worker = freezed,
  }) {
    return _then(_WorkerLoaded(
      worker: worker == freezed
          ? _value.worker
          : worker // ignore: cast_nullable_to_non_nullable
              as WorkerModel,
    ));
  }
}

/// @nodoc

class _$_WorkerLoaded implements _WorkerLoaded {
  const _$_WorkerLoaded({required this.worker});

  @override
  final WorkerModel worker;

  @override
  String toString() {
    return 'WorkerEvent.workerLoaded(worker: $worker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkerLoaded &&
            const DeepCollectionEquality().equals(other.worker, worker));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(worker));

  @JsonKey(ignore: true)
  @override
  _$WorkerLoadedCopyWith<_WorkerLoaded> get copyWith =>
      __$WorkerLoadedCopyWithImpl<_WorkerLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkerModel worker) workerLoaded,
  }) {
    return workerLoaded(worker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WorkerModel worker)? workerLoaded,
  }) {
    return workerLoaded?.call(worker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkerModel worker)? workerLoaded,
    required TResult orElse(),
  }) {
    if (workerLoaded != null) {
      return workerLoaded(worker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkerLoaded value) workerLoaded,
  }) {
    return workerLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WorkerLoaded value)? workerLoaded,
  }) {
    return workerLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkerLoaded value)? workerLoaded,
    required TResult orElse(),
  }) {
    if (workerLoaded != null) {
      return workerLoaded(this);
    }
    return orElse();
  }
}

abstract class _WorkerLoaded implements WorkerEvent {
  const factory _WorkerLoaded({required WorkerModel worker}) = _$_WorkerLoaded;

  @override
  WorkerModel get worker;
  @override
  @JsonKey(ignore: true)
  _$WorkerLoadedCopyWith<_WorkerLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$WorkerStateTearOff {
  const _$WorkerStateTearOff();

  _Initial initial({required WorkerModel worker}) {
    return _Initial(
      worker: worker,
    );
  }

  _LoadWorkerSuccess loadWorkerSuccess({required WorkerModel worker}) {
    return _LoadWorkerSuccess(
      worker: worker,
    );
  }
}

/// @nodoc
const $WorkerState = _$WorkerStateTearOff();

/// @nodoc
mixin _$WorkerState {
  WorkerModel get worker => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkerModel worker) initial,
    required TResult Function(WorkerModel worker) loadWorkerSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WorkerModel worker)? initial,
    TResult Function(WorkerModel worker)? loadWorkerSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkerModel worker)? initial,
    TResult Function(WorkerModel worker)? loadWorkerSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadWorkerSuccess value) loadWorkerSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadWorkerSuccess value)? loadWorkerSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadWorkerSuccess value)? loadWorkerSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkerStateCopyWith<WorkerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkerStateCopyWith<$Res> {
  factory $WorkerStateCopyWith(
          WorkerState value, $Res Function(WorkerState) then) =
      _$WorkerStateCopyWithImpl<$Res>;
  $Res call({WorkerModel worker});

  $WorkerModelCopyWith<$Res> get worker;
}

/// @nodoc
class _$WorkerStateCopyWithImpl<$Res> implements $WorkerStateCopyWith<$Res> {
  _$WorkerStateCopyWithImpl(this._value, this._then);

  final WorkerState _value;
  // ignore: unused_field
  final $Res Function(WorkerState) _then;

  @override
  $Res call({
    Object? worker = freezed,
  }) {
    return _then(_value.copyWith(
      worker: worker == freezed
          ? _value.worker
          : worker // ignore: cast_nullable_to_non_nullable
              as WorkerModel,
    ));
  }

  @override
  $WorkerModelCopyWith<$Res> get worker {
    return $WorkerModelCopyWith<$Res>(_value.worker, (value) {
      return _then(_value.copyWith(worker: value));
    });
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $WorkerStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({WorkerModel worker});

  @override
  $WorkerModelCopyWith<$Res> get worker;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$WorkerStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? worker = freezed,
  }) {
    return _then(_Initial(
      worker: worker == freezed
          ? _value.worker
          : worker // ignore: cast_nullable_to_non_nullable
              as WorkerModel,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.worker});

  @override
  final WorkerModel worker;

  @override
  String toString() {
    return 'WorkerState.initial(worker: $worker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.worker, worker));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(worker));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkerModel worker) initial,
    required TResult Function(WorkerModel worker) loadWorkerSuccess,
  }) {
    return initial(worker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WorkerModel worker)? initial,
    TResult Function(WorkerModel worker)? loadWorkerSuccess,
  }) {
    return initial?.call(worker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkerModel worker)? initial,
    TResult Function(WorkerModel worker)? loadWorkerSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(worker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadWorkerSuccess value) loadWorkerSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadWorkerSuccess value)? loadWorkerSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadWorkerSuccess value)? loadWorkerSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WorkerState {
  const factory _Initial({required WorkerModel worker}) = _$_Initial;

  @override
  WorkerModel get worker;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadWorkerSuccessCopyWith<$Res>
    implements $WorkerStateCopyWith<$Res> {
  factory _$LoadWorkerSuccessCopyWith(
          _LoadWorkerSuccess value, $Res Function(_LoadWorkerSuccess) then) =
      __$LoadWorkerSuccessCopyWithImpl<$Res>;
  @override
  $Res call({WorkerModel worker});

  @override
  $WorkerModelCopyWith<$Res> get worker;
}

/// @nodoc
class __$LoadWorkerSuccessCopyWithImpl<$Res>
    extends _$WorkerStateCopyWithImpl<$Res>
    implements _$LoadWorkerSuccessCopyWith<$Res> {
  __$LoadWorkerSuccessCopyWithImpl(
      _LoadWorkerSuccess _value, $Res Function(_LoadWorkerSuccess) _then)
      : super(_value, (v) => _then(v as _LoadWorkerSuccess));

  @override
  _LoadWorkerSuccess get _value => super._value as _LoadWorkerSuccess;

  @override
  $Res call({
    Object? worker = freezed,
  }) {
    return _then(_LoadWorkerSuccess(
      worker: worker == freezed
          ? _value.worker
          : worker // ignore: cast_nullable_to_non_nullable
              as WorkerModel,
    ));
  }
}

/// @nodoc

class _$_LoadWorkerSuccess implements _LoadWorkerSuccess {
  const _$_LoadWorkerSuccess({required this.worker});

  @override
  final WorkerModel worker;

  @override
  String toString() {
    return 'WorkerState.loadWorkerSuccess(worker: $worker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadWorkerSuccess &&
            const DeepCollectionEquality().equals(other.worker, worker));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(worker));

  @JsonKey(ignore: true)
  @override
  _$LoadWorkerSuccessCopyWith<_LoadWorkerSuccess> get copyWith =>
      __$LoadWorkerSuccessCopyWithImpl<_LoadWorkerSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkerModel worker) initial,
    required TResult Function(WorkerModel worker) loadWorkerSuccess,
  }) {
    return loadWorkerSuccess(worker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WorkerModel worker)? initial,
    TResult Function(WorkerModel worker)? loadWorkerSuccess,
  }) {
    return loadWorkerSuccess?.call(worker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkerModel worker)? initial,
    TResult Function(WorkerModel worker)? loadWorkerSuccess,
    required TResult orElse(),
  }) {
    if (loadWorkerSuccess != null) {
      return loadWorkerSuccess(worker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadWorkerSuccess value) loadWorkerSuccess,
  }) {
    return loadWorkerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadWorkerSuccess value)? loadWorkerSuccess,
  }) {
    return loadWorkerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadWorkerSuccess value)? loadWorkerSuccess,
    required TResult orElse(),
  }) {
    if (loadWorkerSuccess != null) {
      return loadWorkerSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadWorkerSuccess implements WorkerState {
  const factory _LoadWorkerSuccess({required WorkerModel worker}) =
      _$_LoadWorkerSuccess;

  @override
  WorkerModel get worker;
  @override
  @JsonKey(ignore: true)
  _$LoadWorkerSuccessCopyWith<_LoadWorkerSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
