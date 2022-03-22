// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'miners_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MinersEventTearOff {
  const _$MinersEventTearOff();

  _MinerAdded minerAdded({required MinerModel miner}) {
    return _MinerAdded(
      miner: miner,
    );
  }

  _MinerRemoved minerRemoved({required MinerModel miner}) {
    return _MinerRemoved(
      miner: miner,
    );
  }

  _MinerUpdated minerUpdated({required MinerModel miner}) {
    return _MinerUpdated(
      miner: miner,
    );
  }

  _LoadMinersRequested loadMinersRequested() {
    return const _LoadMinersRequested();
  }
}

/// @nodoc
const $MinersEvent = _$MinersEventTearOff();

/// @nodoc
mixin _$MinersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MinerModel miner) minerAdded,
    required TResult Function(MinerModel miner) minerRemoved,
    required TResult Function(MinerModel miner) minerUpdated,
    required TResult Function() loadMinersRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MinerModel miner)? minerAdded,
    TResult Function(MinerModel miner)? minerRemoved,
    TResult Function(MinerModel miner)? minerUpdated,
    TResult Function()? loadMinersRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MinerModel miner)? minerAdded,
    TResult Function(MinerModel miner)? minerRemoved,
    TResult Function(MinerModel miner)? minerUpdated,
    TResult Function()? loadMinersRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MinerAdded value) minerAdded,
    required TResult Function(_MinerRemoved value) minerRemoved,
    required TResult Function(_MinerUpdated value) minerUpdated,
    required TResult Function(_LoadMinersRequested value) loadMinersRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MinerAdded value)? minerAdded,
    TResult Function(_MinerRemoved value)? minerRemoved,
    TResult Function(_MinerUpdated value)? minerUpdated,
    TResult Function(_LoadMinersRequested value)? loadMinersRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MinerAdded value)? minerAdded,
    TResult Function(_MinerRemoved value)? minerRemoved,
    TResult Function(_MinerUpdated value)? minerUpdated,
    TResult Function(_LoadMinersRequested value)? loadMinersRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinersEventCopyWith<$Res> {
  factory $MinersEventCopyWith(
          MinersEvent value, $Res Function(MinersEvent) then) =
      _$MinersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MinersEventCopyWithImpl<$Res> implements $MinersEventCopyWith<$Res> {
  _$MinersEventCopyWithImpl(this._value, this._then);

  final MinersEvent _value;
  // ignore: unused_field
  final $Res Function(MinersEvent) _then;
}

/// @nodoc
abstract class _$MinerAddedCopyWith<$Res> {
  factory _$MinerAddedCopyWith(
          _MinerAdded value, $Res Function(_MinerAdded) then) =
      __$MinerAddedCopyWithImpl<$Res>;
  $Res call({MinerModel miner});

  $MinerModelCopyWith<$Res> get miner;
}

/// @nodoc
class __$MinerAddedCopyWithImpl<$Res> extends _$MinersEventCopyWithImpl<$Res>
    implements _$MinerAddedCopyWith<$Res> {
  __$MinerAddedCopyWithImpl(
      _MinerAdded _value, $Res Function(_MinerAdded) _then)
      : super(_value, (v) => _then(v as _MinerAdded));

  @override
  _MinerAdded get _value => super._value as _MinerAdded;

  @override
  $Res call({
    Object? miner = freezed,
  }) {
    return _then(_MinerAdded(
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

class _$_MinerAdded implements _MinerAdded {
  const _$_MinerAdded({required this.miner});

  @override
  final MinerModel miner;

  @override
  String toString() {
    return 'MinersEvent.minerAdded(miner: $miner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MinerAdded &&
            const DeepCollectionEquality().equals(other.miner, miner));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(miner));

  @JsonKey(ignore: true)
  @override
  _$MinerAddedCopyWith<_MinerAdded> get copyWith =>
      __$MinerAddedCopyWithImpl<_MinerAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MinerModel miner) minerAdded,
    required TResult Function(MinerModel miner) minerRemoved,
    required TResult Function(MinerModel miner) minerUpdated,
    required TResult Function() loadMinersRequested,
  }) {
    return minerAdded(miner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MinerModel miner)? minerAdded,
    TResult Function(MinerModel miner)? minerRemoved,
    TResult Function(MinerModel miner)? minerUpdated,
    TResult Function()? loadMinersRequested,
  }) {
    return minerAdded?.call(miner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MinerModel miner)? minerAdded,
    TResult Function(MinerModel miner)? minerRemoved,
    TResult Function(MinerModel miner)? minerUpdated,
    TResult Function()? loadMinersRequested,
    required TResult orElse(),
  }) {
    if (minerAdded != null) {
      return minerAdded(miner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MinerAdded value) minerAdded,
    required TResult Function(_MinerRemoved value) minerRemoved,
    required TResult Function(_MinerUpdated value) minerUpdated,
    required TResult Function(_LoadMinersRequested value) loadMinersRequested,
  }) {
    return minerAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MinerAdded value)? minerAdded,
    TResult Function(_MinerRemoved value)? minerRemoved,
    TResult Function(_MinerUpdated value)? minerUpdated,
    TResult Function(_LoadMinersRequested value)? loadMinersRequested,
  }) {
    return minerAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MinerAdded value)? minerAdded,
    TResult Function(_MinerRemoved value)? minerRemoved,
    TResult Function(_MinerUpdated value)? minerUpdated,
    TResult Function(_LoadMinersRequested value)? loadMinersRequested,
    required TResult orElse(),
  }) {
    if (minerAdded != null) {
      return minerAdded(this);
    }
    return orElse();
  }
}

abstract class _MinerAdded implements MinersEvent {
  const factory _MinerAdded({required MinerModel miner}) = _$_MinerAdded;

  MinerModel get miner;
  @JsonKey(ignore: true)
  _$MinerAddedCopyWith<_MinerAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MinerRemovedCopyWith<$Res> {
  factory _$MinerRemovedCopyWith(
          _MinerRemoved value, $Res Function(_MinerRemoved) then) =
      __$MinerRemovedCopyWithImpl<$Res>;
  $Res call({MinerModel miner});

  $MinerModelCopyWith<$Res> get miner;
}

/// @nodoc
class __$MinerRemovedCopyWithImpl<$Res> extends _$MinersEventCopyWithImpl<$Res>
    implements _$MinerRemovedCopyWith<$Res> {
  __$MinerRemovedCopyWithImpl(
      _MinerRemoved _value, $Res Function(_MinerRemoved) _then)
      : super(_value, (v) => _then(v as _MinerRemoved));

  @override
  _MinerRemoved get _value => super._value as _MinerRemoved;

  @override
  $Res call({
    Object? miner = freezed,
  }) {
    return _then(_MinerRemoved(
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

class _$_MinerRemoved implements _MinerRemoved {
  const _$_MinerRemoved({required this.miner});

  @override
  final MinerModel miner;

  @override
  String toString() {
    return 'MinersEvent.minerRemoved(miner: $miner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MinerRemoved &&
            const DeepCollectionEquality().equals(other.miner, miner));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(miner));

  @JsonKey(ignore: true)
  @override
  _$MinerRemovedCopyWith<_MinerRemoved> get copyWith =>
      __$MinerRemovedCopyWithImpl<_MinerRemoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MinerModel miner) minerAdded,
    required TResult Function(MinerModel miner) minerRemoved,
    required TResult Function(MinerModel miner) minerUpdated,
    required TResult Function() loadMinersRequested,
  }) {
    return minerRemoved(miner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MinerModel miner)? minerAdded,
    TResult Function(MinerModel miner)? minerRemoved,
    TResult Function(MinerModel miner)? minerUpdated,
    TResult Function()? loadMinersRequested,
  }) {
    return minerRemoved?.call(miner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MinerModel miner)? minerAdded,
    TResult Function(MinerModel miner)? minerRemoved,
    TResult Function(MinerModel miner)? minerUpdated,
    TResult Function()? loadMinersRequested,
    required TResult orElse(),
  }) {
    if (minerRemoved != null) {
      return minerRemoved(miner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MinerAdded value) minerAdded,
    required TResult Function(_MinerRemoved value) minerRemoved,
    required TResult Function(_MinerUpdated value) minerUpdated,
    required TResult Function(_LoadMinersRequested value) loadMinersRequested,
  }) {
    return minerRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MinerAdded value)? minerAdded,
    TResult Function(_MinerRemoved value)? minerRemoved,
    TResult Function(_MinerUpdated value)? minerUpdated,
    TResult Function(_LoadMinersRequested value)? loadMinersRequested,
  }) {
    return minerRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MinerAdded value)? minerAdded,
    TResult Function(_MinerRemoved value)? minerRemoved,
    TResult Function(_MinerUpdated value)? minerUpdated,
    TResult Function(_LoadMinersRequested value)? loadMinersRequested,
    required TResult orElse(),
  }) {
    if (minerRemoved != null) {
      return minerRemoved(this);
    }
    return orElse();
  }
}

abstract class _MinerRemoved implements MinersEvent {
  const factory _MinerRemoved({required MinerModel miner}) = _$_MinerRemoved;

  MinerModel get miner;
  @JsonKey(ignore: true)
  _$MinerRemovedCopyWith<_MinerRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MinerUpdatedCopyWith<$Res> {
  factory _$MinerUpdatedCopyWith(
          _MinerUpdated value, $Res Function(_MinerUpdated) then) =
      __$MinerUpdatedCopyWithImpl<$Res>;
  $Res call({MinerModel miner});

  $MinerModelCopyWith<$Res> get miner;
}

/// @nodoc
class __$MinerUpdatedCopyWithImpl<$Res> extends _$MinersEventCopyWithImpl<$Res>
    implements _$MinerUpdatedCopyWith<$Res> {
  __$MinerUpdatedCopyWithImpl(
      _MinerUpdated _value, $Res Function(_MinerUpdated) _then)
      : super(_value, (v) => _then(v as _MinerUpdated));

  @override
  _MinerUpdated get _value => super._value as _MinerUpdated;

  @override
  $Res call({
    Object? miner = freezed,
  }) {
    return _then(_MinerUpdated(
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

class _$_MinerUpdated implements _MinerUpdated {
  const _$_MinerUpdated({required this.miner});

  @override
  final MinerModel miner;

  @override
  String toString() {
    return 'MinersEvent.minerUpdated(miner: $miner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MinerUpdated &&
            const DeepCollectionEquality().equals(other.miner, miner));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(miner));

  @JsonKey(ignore: true)
  @override
  _$MinerUpdatedCopyWith<_MinerUpdated> get copyWith =>
      __$MinerUpdatedCopyWithImpl<_MinerUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MinerModel miner) minerAdded,
    required TResult Function(MinerModel miner) minerRemoved,
    required TResult Function(MinerModel miner) minerUpdated,
    required TResult Function() loadMinersRequested,
  }) {
    return minerUpdated(miner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MinerModel miner)? minerAdded,
    TResult Function(MinerModel miner)? minerRemoved,
    TResult Function(MinerModel miner)? minerUpdated,
    TResult Function()? loadMinersRequested,
  }) {
    return minerUpdated?.call(miner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MinerModel miner)? minerAdded,
    TResult Function(MinerModel miner)? minerRemoved,
    TResult Function(MinerModel miner)? minerUpdated,
    TResult Function()? loadMinersRequested,
    required TResult orElse(),
  }) {
    if (minerUpdated != null) {
      return minerUpdated(miner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MinerAdded value) minerAdded,
    required TResult Function(_MinerRemoved value) minerRemoved,
    required TResult Function(_MinerUpdated value) minerUpdated,
    required TResult Function(_LoadMinersRequested value) loadMinersRequested,
  }) {
    return minerUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MinerAdded value)? minerAdded,
    TResult Function(_MinerRemoved value)? minerRemoved,
    TResult Function(_MinerUpdated value)? minerUpdated,
    TResult Function(_LoadMinersRequested value)? loadMinersRequested,
  }) {
    return minerUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MinerAdded value)? minerAdded,
    TResult Function(_MinerRemoved value)? minerRemoved,
    TResult Function(_MinerUpdated value)? minerUpdated,
    TResult Function(_LoadMinersRequested value)? loadMinersRequested,
    required TResult orElse(),
  }) {
    if (minerUpdated != null) {
      return minerUpdated(this);
    }
    return orElse();
  }
}

abstract class _MinerUpdated implements MinersEvent {
  const factory _MinerUpdated({required MinerModel miner}) = _$_MinerUpdated;

  MinerModel get miner;
  @JsonKey(ignore: true)
  _$MinerUpdatedCopyWith<_MinerUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadMinersRequestedCopyWith<$Res> {
  factory _$LoadMinersRequestedCopyWith(_LoadMinersRequested value,
          $Res Function(_LoadMinersRequested) then) =
      __$LoadMinersRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadMinersRequestedCopyWithImpl<$Res>
    extends _$MinersEventCopyWithImpl<$Res>
    implements _$LoadMinersRequestedCopyWith<$Res> {
  __$LoadMinersRequestedCopyWithImpl(
      _LoadMinersRequested _value, $Res Function(_LoadMinersRequested) _then)
      : super(_value, (v) => _then(v as _LoadMinersRequested));

  @override
  _LoadMinersRequested get _value => super._value as _LoadMinersRequested;
}

/// @nodoc

class _$_LoadMinersRequested implements _LoadMinersRequested {
  const _$_LoadMinersRequested();

  @override
  String toString() {
    return 'MinersEvent.loadMinersRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadMinersRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MinerModel miner) minerAdded,
    required TResult Function(MinerModel miner) minerRemoved,
    required TResult Function(MinerModel miner) minerUpdated,
    required TResult Function() loadMinersRequested,
  }) {
    return loadMinersRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MinerModel miner)? minerAdded,
    TResult Function(MinerModel miner)? minerRemoved,
    TResult Function(MinerModel miner)? minerUpdated,
    TResult Function()? loadMinersRequested,
  }) {
    return loadMinersRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MinerModel miner)? minerAdded,
    TResult Function(MinerModel miner)? minerRemoved,
    TResult Function(MinerModel miner)? minerUpdated,
    TResult Function()? loadMinersRequested,
    required TResult orElse(),
  }) {
    if (loadMinersRequested != null) {
      return loadMinersRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MinerAdded value) minerAdded,
    required TResult Function(_MinerRemoved value) minerRemoved,
    required TResult Function(_MinerUpdated value) minerUpdated,
    required TResult Function(_LoadMinersRequested value) loadMinersRequested,
  }) {
    return loadMinersRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MinerAdded value)? minerAdded,
    TResult Function(_MinerRemoved value)? minerRemoved,
    TResult Function(_MinerUpdated value)? minerUpdated,
    TResult Function(_LoadMinersRequested value)? loadMinersRequested,
  }) {
    return loadMinersRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MinerAdded value)? minerAdded,
    TResult Function(_MinerRemoved value)? minerRemoved,
    TResult Function(_MinerUpdated value)? minerUpdated,
    TResult Function(_LoadMinersRequested value)? loadMinersRequested,
    required TResult orElse(),
  }) {
    if (loadMinersRequested != null) {
      return loadMinersRequested(this);
    }
    return orElse();
  }
}

abstract class _LoadMinersRequested implements MinersEvent {
  const factory _LoadMinersRequested() = _$_LoadMinersRequested;
}

/// @nodoc
class _$MinersStateTearOff {
  const _$MinersStateTearOff();

  _Initial initial({required List<MinerModel> miners}) {
    return _Initial(
      miners: miners,
    );
  }

  _LoadMinersInProgress loadMinersInProgress(
      {required List<MinerModel> miners, required int refreshSeconds}) {
    return _LoadMinersInProgress(
      miners: miners,
      refreshSeconds: refreshSeconds,
    );
  }

  _LoadMinersSuccess loadMinersSuccess({required List<MinerModel> miners}) {
    return _LoadMinersSuccess(
      miners: miners,
    );
  }
}

/// @nodoc
const $MinersState = _$MinersStateTearOff();

/// @nodoc
mixin _$MinersState {
  List<MinerModel> get miners => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MinerModel> miners) initial,
    required TResult Function(List<MinerModel> miners, int refreshSeconds)
        loadMinersInProgress,
    required TResult Function(List<MinerModel> miners) loadMinersSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<MinerModel> miners)? initial,
    TResult Function(List<MinerModel> miners, int refreshSeconds)?
        loadMinersInProgress,
    TResult Function(List<MinerModel> miners)? loadMinersSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MinerModel> miners)? initial,
    TResult Function(List<MinerModel> miners, int refreshSeconds)?
        loadMinersInProgress,
    TResult Function(List<MinerModel> miners)? loadMinersSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadMinersInProgress value) loadMinersInProgress,
    required TResult Function(_LoadMinersSuccess value) loadMinersSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadMinersInProgress value)? loadMinersInProgress,
    TResult Function(_LoadMinersSuccess value)? loadMinersSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadMinersInProgress value)? loadMinersInProgress,
    TResult Function(_LoadMinersSuccess value)? loadMinersSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MinersStateCopyWith<MinersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinersStateCopyWith<$Res> {
  factory $MinersStateCopyWith(
          MinersState value, $Res Function(MinersState) then) =
      _$MinersStateCopyWithImpl<$Res>;
  $Res call({List<MinerModel> miners});
}

/// @nodoc
class _$MinersStateCopyWithImpl<$Res> implements $MinersStateCopyWith<$Res> {
  _$MinersStateCopyWithImpl(this._value, this._then);

  final MinersState _value;
  // ignore: unused_field
  final $Res Function(MinersState) _then;

  @override
  $Res call({
    Object? miners = freezed,
  }) {
    return _then(_value.copyWith(
      miners: miners == freezed
          ? _value.miners
          : miners // ignore: cast_nullable_to_non_nullable
              as List<MinerModel>,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $MinersStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({List<MinerModel> miners});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$MinersStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? miners = freezed,
  }) {
    return _then(_Initial(
      miners: miners == freezed
          ? _value.miners
          : miners // ignore: cast_nullable_to_non_nullable
              as List<MinerModel>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.miners});

  @override
  final List<MinerModel> miners;

  @override
  String toString() {
    return 'MinersState.initial(miners: $miners)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.miners, miners));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(miners));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MinerModel> miners) initial,
    required TResult Function(List<MinerModel> miners, int refreshSeconds)
        loadMinersInProgress,
    required TResult Function(List<MinerModel> miners) loadMinersSuccess,
  }) {
    return initial(miners);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<MinerModel> miners)? initial,
    TResult Function(List<MinerModel> miners, int refreshSeconds)?
        loadMinersInProgress,
    TResult Function(List<MinerModel> miners)? loadMinersSuccess,
  }) {
    return initial?.call(miners);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MinerModel> miners)? initial,
    TResult Function(List<MinerModel> miners, int refreshSeconds)?
        loadMinersInProgress,
    TResult Function(List<MinerModel> miners)? loadMinersSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(miners);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadMinersInProgress value) loadMinersInProgress,
    required TResult Function(_LoadMinersSuccess value) loadMinersSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadMinersInProgress value)? loadMinersInProgress,
    TResult Function(_LoadMinersSuccess value)? loadMinersSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadMinersInProgress value)? loadMinersInProgress,
    TResult Function(_LoadMinersSuccess value)? loadMinersSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MinersState {
  const factory _Initial({required List<MinerModel> miners}) = _$_Initial;

  @override
  List<MinerModel> get miners;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadMinersInProgressCopyWith<$Res>
    implements $MinersStateCopyWith<$Res> {
  factory _$LoadMinersInProgressCopyWith(_LoadMinersInProgress value,
          $Res Function(_LoadMinersInProgress) then) =
      __$LoadMinersInProgressCopyWithImpl<$Res>;
  @override
  $Res call({List<MinerModel> miners, int refreshSeconds});
}

/// @nodoc
class __$LoadMinersInProgressCopyWithImpl<$Res>
    extends _$MinersStateCopyWithImpl<$Res>
    implements _$LoadMinersInProgressCopyWith<$Res> {
  __$LoadMinersInProgressCopyWithImpl(
      _LoadMinersInProgress _value, $Res Function(_LoadMinersInProgress) _then)
      : super(_value, (v) => _then(v as _LoadMinersInProgress));

  @override
  _LoadMinersInProgress get _value => super._value as _LoadMinersInProgress;

  @override
  $Res call({
    Object? miners = freezed,
    Object? refreshSeconds = freezed,
  }) {
    return _then(_LoadMinersInProgress(
      miners: miners == freezed
          ? _value.miners
          : miners // ignore: cast_nullable_to_non_nullable
              as List<MinerModel>,
      refreshSeconds: refreshSeconds == freezed
          ? _value.refreshSeconds
          : refreshSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LoadMinersInProgress implements _LoadMinersInProgress {
  const _$_LoadMinersInProgress(
      {required this.miners, required this.refreshSeconds});

  @override
  final List<MinerModel> miners;
  @override // required so each emit of this state is unique, for Bloc to be trigerred.
  final int refreshSeconds;

  @override
  String toString() {
    return 'MinersState.loadMinersInProgress(miners: $miners, refreshSeconds: $refreshSeconds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadMinersInProgress &&
            const DeepCollectionEquality().equals(other.miners, miners) &&
            const DeepCollectionEquality()
                .equals(other.refreshSeconds, refreshSeconds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(miners),
      const DeepCollectionEquality().hash(refreshSeconds));

  @JsonKey(ignore: true)
  @override
  _$LoadMinersInProgressCopyWith<_LoadMinersInProgress> get copyWith =>
      __$LoadMinersInProgressCopyWithImpl<_LoadMinersInProgress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MinerModel> miners) initial,
    required TResult Function(List<MinerModel> miners, int refreshSeconds)
        loadMinersInProgress,
    required TResult Function(List<MinerModel> miners) loadMinersSuccess,
  }) {
    return loadMinersInProgress(miners, refreshSeconds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<MinerModel> miners)? initial,
    TResult Function(List<MinerModel> miners, int refreshSeconds)?
        loadMinersInProgress,
    TResult Function(List<MinerModel> miners)? loadMinersSuccess,
  }) {
    return loadMinersInProgress?.call(miners, refreshSeconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MinerModel> miners)? initial,
    TResult Function(List<MinerModel> miners, int refreshSeconds)?
        loadMinersInProgress,
    TResult Function(List<MinerModel> miners)? loadMinersSuccess,
    required TResult orElse(),
  }) {
    if (loadMinersInProgress != null) {
      return loadMinersInProgress(miners, refreshSeconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadMinersInProgress value) loadMinersInProgress,
    required TResult Function(_LoadMinersSuccess value) loadMinersSuccess,
  }) {
    return loadMinersInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadMinersInProgress value)? loadMinersInProgress,
    TResult Function(_LoadMinersSuccess value)? loadMinersSuccess,
  }) {
    return loadMinersInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadMinersInProgress value)? loadMinersInProgress,
    TResult Function(_LoadMinersSuccess value)? loadMinersSuccess,
    required TResult orElse(),
  }) {
    if (loadMinersInProgress != null) {
      return loadMinersInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadMinersInProgress implements MinersState {
  const factory _LoadMinersInProgress(
      {required List<MinerModel> miners,
      required int refreshSeconds}) = _$_LoadMinersInProgress;

  @override
  List<MinerModel>
      get miners; // required so each emit of this state is unique, for Bloc to be trigerred.
  int get refreshSeconds;
  @override
  @JsonKey(ignore: true)
  _$LoadMinersInProgressCopyWith<_LoadMinersInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadMinersSuccessCopyWith<$Res>
    implements $MinersStateCopyWith<$Res> {
  factory _$LoadMinersSuccessCopyWith(
          _LoadMinersSuccess value, $Res Function(_LoadMinersSuccess) then) =
      __$LoadMinersSuccessCopyWithImpl<$Res>;
  @override
  $Res call({List<MinerModel> miners});
}

/// @nodoc
class __$LoadMinersSuccessCopyWithImpl<$Res>
    extends _$MinersStateCopyWithImpl<$Res>
    implements _$LoadMinersSuccessCopyWith<$Res> {
  __$LoadMinersSuccessCopyWithImpl(
      _LoadMinersSuccess _value, $Res Function(_LoadMinersSuccess) _then)
      : super(_value, (v) => _then(v as _LoadMinersSuccess));

  @override
  _LoadMinersSuccess get _value => super._value as _LoadMinersSuccess;

  @override
  $Res call({
    Object? miners = freezed,
  }) {
    return _then(_LoadMinersSuccess(
      miners: miners == freezed
          ? _value.miners
          : miners // ignore: cast_nullable_to_non_nullable
              as List<MinerModel>,
    ));
  }
}

/// @nodoc

class _$_LoadMinersSuccess implements _LoadMinersSuccess {
  const _$_LoadMinersSuccess({required this.miners});

  @override
  final List<MinerModel> miners;

  @override
  String toString() {
    return 'MinersState.loadMinersSuccess(miners: $miners)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadMinersSuccess &&
            const DeepCollectionEquality().equals(other.miners, miners));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(miners));

  @JsonKey(ignore: true)
  @override
  _$LoadMinersSuccessCopyWith<_LoadMinersSuccess> get copyWith =>
      __$LoadMinersSuccessCopyWithImpl<_LoadMinersSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MinerModel> miners) initial,
    required TResult Function(List<MinerModel> miners, int refreshSeconds)
        loadMinersInProgress,
    required TResult Function(List<MinerModel> miners) loadMinersSuccess,
  }) {
    return loadMinersSuccess(miners);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<MinerModel> miners)? initial,
    TResult Function(List<MinerModel> miners, int refreshSeconds)?
        loadMinersInProgress,
    TResult Function(List<MinerModel> miners)? loadMinersSuccess,
  }) {
    return loadMinersSuccess?.call(miners);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MinerModel> miners)? initial,
    TResult Function(List<MinerModel> miners, int refreshSeconds)?
        loadMinersInProgress,
    TResult Function(List<MinerModel> miners)? loadMinersSuccess,
    required TResult orElse(),
  }) {
    if (loadMinersSuccess != null) {
      return loadMinersSuccess(miners);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadMinersInProgress value) loadMinersInProgress,
    required TResult Function(_LoadMinersSuccess value) loadMinersSuccess,
  }) {
    return loadMinersSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadMinersInProgress value)? loadMinersInProgress,
    TResult Function(_LoadMinersSuccess value)? loadMinersSuccess,
  }) {
    return loadMinersSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadMinersInProgress value)? loadMinersInProgress,
    TResult Function(_LoadMinersSuccess value)? loadMinersSuccess,
    required TResult orElse(),
  }) {
    if (loadMinersSuccess != null) {
      return loadMinersSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadMinersSuccess implements MinersState {
  const factory _LoadMinersSuccess({required List<MinerModel> miners}) =
      _$_LoadMinersSuccess;

  @override
  List<MinerModel> get miners;
  @override
  @JsonKey(ignore: true)
  _$LoadMinersSuccessCopyWith<_LoadMinersSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
