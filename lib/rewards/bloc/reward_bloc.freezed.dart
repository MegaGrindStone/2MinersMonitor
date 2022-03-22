// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reward_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RewardEventTearOff {
  const _$RewardEventTearOff();

  _RewardLoaded rewardLoaded(
      {required MinerModel miner, required RewardModel reward}) {
    return _RewardLoaded(
      miner: miner,
      reward: reward,
    );
  }
}

/// @nodoc
const $RewardEvent = _$RewardEventTearOff();

/// @nodoc
mixin _$RewardEvent {
  MinerModel get miner => throw _privateConstructorUsedError;
  RewardModel get reward => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MinerModel miner, RewardModel reward)
        rewardLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MinerModel miner, RewardModel reward)? rewardLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MinerModel miner, RewardModel reward)? rewardLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RewardLoaded value) rewardLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RewardLoaded value)? rewardLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RewardLoaded value)? rewardLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RewardEventCopyWith<RewardEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardEventCopyWith<$Res> {
  factory $RewardEventCopyWith(
          RewardEvent value, $Res Function(RewardEvent) then) =
      _$RewardEventCopyWithImpl<$Res>;
  $Res call({MinerModel miner, RewardModel reward});

  $MinerModelCopyWith<$Res> get miner;
  $RewardModelCopyWith<$Res> get reward;
}

/// @nodoc
class _$RewardEventCopyWithImpl<$Res> implements $RewardEventCopyWith<$Res> {
  _$RewardEventCopyWithImpl(this._value, this._then);

  final RewardEvent _value;
  // ignore: unused_field
  final $Res Function(RewardEvent) _then;

  @override
  $Res call({
    Object? miner = freezed,
    Object? reward = freezed,
  }) {
    return _then(_value.copyWith(
      miner: miner == freezed
          ? _value.miner
          : miner // ignore: cast_nullable_to_non_nullable
              as MinerModel,
      reward: reward == freezed
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as RewardModel,
    ));
  }

  @override
  $MinerModelCopyWith<$Res> get miner {
    return $MinerModelCopyWith<$Res>(_value.miner, (value) {
      return _then(_value.copyWith(miner: value));
    });
  }

  @override
  $RewardModelCopyWith<$Res> get reward {
    return $RewardModelCopyWith<$Res>(_value.reward, (value) {
      return _then(_value.copyWith(reward: value));
    });
  }
}

/// @nodoc
abstract class _$RewardLoadedCopyWith<$Res>
    implements $RewardEventCopyWith<$Res> {
  factory _$RewardLoadedCopyWith(
          _RewardLoaded value, $Res Function(_RewardLoaded) then) =
      __$RewardLoadedCopyWithImpl<$Res>;
  @override
  $Res call({MinerModel miner, RewardModel reward});

  @override
  $MinerModelCopyWith<$Res> get miner;
  @override
  $RewardModelCopyWith<$Res> get reward;
}

/// @nodoc
class __$RewardLoadedCopyWithImpl<$Res> extends _$RewardEventCopyWithImpl<$Res>
    implements _$RewardLoadedCopyWith<$Res> {
  __$RewardLoadedCopyWithImpl(
      _RewardLoaded _value, $Res Function(_RewardLoaded) _then)
      : super(_value, (v) => _then(v as _RewardLoaded));

  @override
  _RewardLoaded get _value => super._value as _RewardLoaded;

  @override
  $Res call({
    Object? miner = freezed,
    Object? reward = freezed,
  }) {
    return _then(_RewardLoaded(
      miner: miner == freezed
          ? _value.miner
          : miner // ignore: cast_nullable_to_non_nullable
              as MinerModel,
      reward: reward == freezed
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as RewardModel,
    ));
  }
}

/// @nodoc

class _$_RewardLoaded implements _RewardLoaded {
  const _$_RewardLoaded({required this.miner, required this.reward});

  @override
  final MinerModel miner;
  @override
  final RewardModel reward;

  @override
  String toString() {
    return 'RewardEvent.rewardLoaded(miner: $miner, reward: $reward)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RewardLoaded &&
            const DeepCollectionEquality().equals(other.miner, miner) &&
            const DeepCollectionEquality().equals(other.reward, reward));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(miner),
      const DeepCollectionEquality().hash(reward));

  @JsonKey(ignore: true)
  @override
  _$RewardLoadedCopyWith<_RewardLoaded> get copyWith =>
      __$RewardLoadedCopyWithImpl<_RewardLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MinerModel miner, RewardModel reward)
        rewardLoaded,
  }) {
    return rewardLoaded(miner, reward);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MinerModel miner, RewardModel reward)? rewardLoaded,
  }) {
    return rewardLoaded?.call(miner, reward);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MinerModel miner, RewardModel reward)? rewardLoaded,
    required TResult orElse(),
  }) {
    if (rewardLoaded != null) {
      return rewardLoaded(miner, reward);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RewardLoaded value) rewardLoaded,
  }) {
    return rewardLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RewardLoaded value)? rewardLoaded,
  }) {
    return rewardLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RewardLoaded value)? rewardLoaded,
    required TResult orElse(),
  }) {
    if (rewardLoaded != null) {
      return rewardLoaded(this);
    }
    return orElse();
  }
}

abstract class _RewardLoaded implements RewardEvent {
  const factory _RewardLoaded(
      {required MinerModel miner,
      required RewardModel reward}) = _$_RewardLoaded;

  @override
  MinerModel get miner;
  @override
  RewardModel get reward;
  @override
  @JsonKey(ignore: true)
  _$RewardLoadedCopyWith<_RewardLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RewardStateTearOff {
  const _$RewardStateTearOff();

  _Initial initial({required MinerModel miner, required RewardModel reward}) {
    return _Initial(
      miner: miner,
      reward: reward,
    );
  }

  _LoadRewardSuccess loadRewardSuccess(
      {required MinerModel miner, required RewardModel reward}) {
    return _LoadRewardSuccess(
      miner: miner,
      reward: reward,
    );
  }
}

/// @nodoc
const $RewardState = _$RewardStateTearOff();

/// @nodoc
mixin _$RewardState {
  MinerModel get miner => throw _privateConstructorUsedError;
  RewardModel get reward => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MinerModel miner, RewardModel reward) initial,
    required TResult Function(MinerModel miner, RewardModel reward)
        loadRewardSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MinerModel miner, RewardModel reward)? initial,
    TResult Function(MinerModel miner, RewardModel reward)? loadRewardSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MinerModel miner, RewardModel reward)? initial,
    TResult Function(MinerModel miner, RewardModel reward)? loadRewardSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadRewardSuccess value) loadRewardSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadRewardSuccess value)? loadRewardSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadRewardSuccess value)? loadRewardSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RewardStateCopyWith<RewardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardStateCopyWith<$Res> {
  factory $RewardStateCopyWith(
          RewardState value, $Res Function(RewardState) then) =
      _$RewardStateCopyWithImpl<$Res>;
  $Res call({MinerModel miner, RewardModel reward});

  $MinerModelCopyWith<$Res> get miner;
  $RewardModelCopyWith<$Res> get reward;
}

/// @nodoc
class _$RewardStateCopyWithImpl<$Res> implements $RewardStateCopyWith<$Res> {
  _$RewardStateCopyWithImpl(this._value, this._then);

  final RewardState _value;
  // ignore: unused_field
  final $Res Function(RewardState) _then;

  @override
  $Res call({
    Object? miner = freezed,
    Object? reward = freezed,
  }) {
    return _then(_value.copyWith(
      miner: miner == freezed
          ? _value.miner
          : miner // ignore: cast_nullable_to_non_nullable
              as MinerModel,
      reward: reward == freezed
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as RewardModel,
    ));
  }

  @override
  $MinerModelCopyWith<$Res> get miner {
    return $MinerModelCopyWith<$Res>(_value.miner, (value) {
      return _then(_value.copyWith(miner: value));
    });
  }

  @override
  $RewardModelCopyWith<$Res> get reward {
    return $RewardModelCopyWith<$Res>(_value.reward, (value) {
      return _then(_value.copyWith(reward: value));
    });
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $RewardStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({MinerModel miner, RewardModel reward});

  @override
  $MinerModelCopyWith<$Res> get miner;
  @override
  $RewardModelCopyWith<$Res> get reward;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$RewardStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? miner = freezed,
    Object? reward = freezed,
  }) {
    return _then(_Initial(
      miner: miner == freezed
          ? _value.miner
          : miner // ignore: cast_nullable_to_non_nullable
              as MinerModel,
      reward: reward == freezed
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as RewardModel,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.miner, required this.reward});

  @override
  final MinerModel miner;
  @override
  final RewardModel reward;

  @override
  String toString() {
    return 'RewardState.initial(miner: $miner, reward: $reward)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.miner, miner) &&
            const DeepCollectionEquality().equals(other.reward, reward));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(miner),
      const DeepCollectionEquality().hash(reward));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MinerModel miner, RewardModel reward) initial,
    required TResult Function(MinerModel miner, RewardModel reward)
        loadRewardSuccess,
  }) {
    return initial(miner, reward);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MinerModel miner, RewardModel reward)? initial,
    TResult Function(MinerModel miner, RewardModel reward)? loadRewardSuccess,
  }) {
    return initial?.call(miner, reward);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MinerModel miner, RewardModel reward)? initial,
    TResult Function(MinerModel miner, RewardModel reward)? loadRewardSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(miner, reward);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadRewardSuccess value) loadRewardSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadRewardSuccess value)? loadRewardSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadRewardSuccess value)? loadRewardSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RewardState {
  const factory _Initial(
      {required MinerModel miner, required RewardModel reward}) = _$_Initial;

  @override
  MinerModel get miner;
  @override
  RewardModel get reward;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadRewardSuccessCopyWith<$Res>
    implements $RewardStateCopyWith<$Res> {
  factory _$LoadRewardSuccessCopyWith(
          _LoadRewardSuccess value, $Res Function(_LoadRewardSuccess) then) =
      __$LoadRewardSuccessCopyWithImpl<$Res>;
  @override
  $Res call({MinerModel miner, RewardModel reward});

  @override
  $MinerModelCopyWith<$Res> get miner;
  @override
  $RewardModelCopyWith<$Res> get reward;
}

/// @nodoc
class __$LoadRewardSuccessCopyWithImpl<$Res>
    extends _$RewardStateCopyWithImpl<$Res>
    implements _$LoadRewardSuccessCopyWith<$Res> {
  __$LoadRewardSuccessCopyWithImpl(
      _LoadRewardSuccess _value, $Res Function(_LoadRewardSuccess) _then)
      : super(_value, (v) => _then(v as _LoadRewardSuccess));

  @override
  _LoadRewardSuccess get _value => super._value as _LoadRewardSuccess;

  @override
  $Res call({
    Object? miner = freezed,
    Object? reward = freezed,
  }) {
    return _then(_LoadRewardSuccess(
      miner: miner == freezed
          ? _value.miner
          : miner // ignore: cast_nullable_to_non_nullable
              as MinerModel,
      reward: reward == freezed
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as RewardModel,
    ));
  }
}

/// @nodoc

class _$_LoadRewardSuccess implements _LoadRewardSuccess {
  const _$_LoadRewardSuccess({required this.miner, required this.reward});

  @override
  final MinerModel miner;
  @override
  final RewardModel reward;

  @override
  String toString() {
    return 'RewardState.loadRewardSuccess(miner: $miner, reward: $reward)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadRewardSuccess &&
            const DeepCollectionEquality().equals(other.miner, miner) &&
            const DeepCollectionEquality().equals(other.reward, reward));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(miner),
      const DeepCollectionEquality().hash(reward));

  @JsonKey(ignore: true)
  @override
  _$LoadRewardSuccessCopyWith<_LoadRewardSuccess> get copyWith =>
      __$LoadRewardSuccessCopyWithImpl<_LoadRewardSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MinerModel miner, RewardModel reward) initial,
    required TResult Function(MinerModel miner, RewardModel reward)
        loadRewardSuccess,
  }) {
    return loadRewardSuccess(miner, reward);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MinerModel miner, RewardModel reward)? initial,
    TResult Function(MinerModel miner, RewardModel reward)? loadRewardSuccess,
  }) {
    return loadRewardSuccess?.call(miner, reward);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MinerModel miner, RewardModel reward)? initial,
    TResult Function(MinerModel miner, RewardModel reward)? loadRewardSuccess,
    required TResult orElse(),
  }) {
    if (loadRewardSuccess != null) {
      return loadRewardSuccess(miner, reward);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadRewardSuccess value) loadRewardSuccess,
  }) {
    return loadRewardSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadRewardSuccess value)? loadRewardSuccess,
  }) {
    return loadRewardSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadRewardSuccess value)? loadRewardSuccess,
    required TResult orElse(),
  }) {
    if (loadRewardSuccess != null) {
      return loadRewardSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadRewardSuccess implements RewardState {
  const factory _LoadRewardSuccess(
      {required MinerModel miner,
      required RewardModel reward}) = _$_LoadRewardSuccess;

  @override
  MinerModel get miner;
  @override
  RewardModel get reward;
  @override
  @JsonKey(ignore: true)
  _$LoadRewardSuccessCopyWith<_LoadRewardSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
