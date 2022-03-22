// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PayoutEventTearOff {
  const _$PayoutEventTearOff();

  _PayoutLoaded payoutLoaded(
      {required MinerModel miner, required PayoutModel payout}) {
    return _PayoutLoaded(
      miner: miner,
      payout: payout,
    );
  }
}

/// @nodoc
const $PayoutEvent = _$PayoutEventTearOff();

/// @nodoc
mixin _$PayoutEvent {
  MinerModel get miner => throw _privateConstructorUsedError;
  PayoutModel get payout => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MinerModel miner, PayoutModel payout)
        payoutLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MinerModel miner, PayoutModel payout)? payoutLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MinerModel miner, PayoutModel payout)? payoutLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PayoutLoaded value) payoutLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PayoutLoaded value)? payoutLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayoutLoaded value)? payoutLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PayoutEventCopyWith<PayoutEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutEventCopyWith<$Res> {
  factory $PayoutEventCopyWith(
          PayoutEvent value, $Res Function(PayoutEvent) then) =
      _$PayoutEventCopyWithImpl<$Res>;
  $Res call({MinerModel miner, PayoutModel payout});

  $MinerModelCopyWith<$Res> get miner;
  $PayoutModelCopyWith<$Res> get payout;
}

/// @nodoc
class _$PayoutEventCopyWithImpl<$Res> implements $PayoutEventCopyWith<$Res> {
  _$PayoutEventCopyWithImpl(this._value, this._then);

  final PayoutEvent _value;
  // ignore: unused_field
  final $Res Function(PayoutEvent) _then;

  @override
  $Res call({
    Object? miner = freezed,
    Object? payout = freezed,
  }) {
    return _then(_value.copyWith(
      miner: miner == freezed
          ? _value.miner
          : miner // ignore: cast_nullable_to_non_nullable
              as MinerModel,
      payout: payout == freezed
          ? _value.payout
          : payout // ignore: cast_nullable_to_non_nullable
              as PayoutModel,
    ));
  }

  @override
  $MinerModelCopyWith<$Res> get miner {
    return $MinerModelCopyWith<$Res>(_value.miner, (value) {
      return _then(_value.copyWith(miner: value));
    });
  }

  @override
  $PayoutModelCopyWith<$Res> get payout {
    return $PayoutModelCopyWith<$Res>(_value.payout, (value) {
      return _then(_value.copyWith(payout: value));
    });
  }
}

/// @nodoc
abstract class _$PayoutLoadedCopyWith<$Res>
    implements $PayoutEventCopyWith<$Res> {
  factory _$PayoutLoadedCopyWith(
          _PayoutLoaded value, $Res Function(_PayoutLoaded) then) =
      __$PayoutLoadedCopyWithImpl<$Res>;
  @override
  $Res call({MinerModel miner, PayoutModel payout});

  @override
  $MinerModelCopyWith<$Res> get miner;
  @override
  $PayoutModelCopyWith<$Res> get payout;
}

/// @nodoc
class __$PayoutLoadedCopyWithImpl<$Res> extends _$PayoutEventCopyWithImpl<$Res>
    implements _$PayoutLoadedCopyWith<$Res> {
  __$PayoutLoadedCopyWithImpl(
      _PayoutLoaded _value, $Res Function(_PayoutLoaded) _then)
      : super(_value, (v) => _then(v as _PayoutLoaded));

  @override
  _PayoutLoaded get _value => super._value as _PayoutLoaded;

  @override
  $Res call({
    Object? miner = freezed,
    Object? payout = freezed,
  }) {
    return _then(_PayoutLoaded(
      miner: miner == freezed
          ? _value.miner
          : miner // ignore: cast_nullable_to_non_nullable
              as MinerModel,
      payout: payout == freezed
          ? _value.payout
          : payout // ignore: cast_nullable_to_non_nullable
              as PayoutModel,
    ));
  }
}

/// @nodoc

class _$_PayoutLoaded implements _PayoutLoaded {
  const _$_PayoutLoaded({required this.miner, required this.payout});

  @override
  final MinerModel miner;
  @override
  final PayoutModel payout;

  @override
  String toString() {
    return 'PayoutEvent.payoutLoaded(miner: $miner, payout: $payout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PayoutLoaded &&
            const DeepCollectionEquality().equals(other.miner, miner) &&
            const DeepCollectionEquality().equals(other.payout, payout));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(miner),
      const DeepCollectionEquality().hash(payout));

  @JsonKey(ignore: true)
  @override
  _$PayoutLoadedCopyWith<_PayoutLoaded> get copyWith =>
      __$PayoutLoadedCopyWithImpl<_PayoutLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MinerModel miner, PayoutModel payout)
        payoutLoaded,
  }) {
    return payoutLoaded(miner, payout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MinerModel miner, PayoutModel payout)? payoutLoaded,
  }) {
    return payoutLoaded?.call(miner, payout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MinerModel miner, PayoutModel payout)? payoutLoaded,
    required TResult orElse(),
  }) {
    if (payoutLoaded != null) {
      return payoutLoaded(miner, payout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PayoutLoaded value) payoutLoaded,
  }) {
    return payoutLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PayoutLoaded value)? payoutLoaded,
  }) {
    return payoutLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayoutLoaded value)? payoutLoaded,
    required TResult orElse(),
  }) {
    if (payoutLoaded != null) {
      return payoutLoaded(this);
    }
    return orElse();
  }
}

abstract class _PayoutLoaded implements PayoutEvent {
  const factory _PayoutLoaded(
      {required MinerModel miner,
      required PayoutModel payout}) = _$_PayoutLoaded;

  @override
  MinerModel get miner;
  @override
  PayoutModel get payout;
  @override
  @JsonKey(ignore: true)
  _$PayoutLoadedCopyWith<_PayoutLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PayoutStateTearOff {
  const _$PayoutStateTearOff();

  _Initial initial({required MinerModel miner, required PayoutModel payout}) {
    return _Initial(
      miner: miner,
      payout: payout,
    );
  }

  _LoadPayoutSuccess loadPayoutSuccess(
      {required MinerModel miner, required PayoutModel payout}) {
    return _LoadPayoutSuccess(
      miner: miner,
      payout: payout,
    );
  }
}

/// @nodoc
const $PayoutState = _$PayoutStateTearOff();

/// @nodoc
mixin _$PayoutState {
  MinerModel get miner => throw _privateConstructorUsedError;
  PayoutModel get payout => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MinerModel miner, PayoutModel payout) initial,
    required TResult Function(MinerModel miner, PayoutModel payout)
        loadPayoutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MinerModel miner, PayoutModel payout)? initial,
    TResult Function(MinerModel miner, PayoutModel payout)? loadPayoutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MinerModel miner, PayoutModel payout)? initial,
    TResult Function(MinerModel miner, PayoutModel payout)? loadPayoutSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadPayoutSuccess value) loadPayoutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadPayoutSuccess value)? loadPayoutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadPayoutSuccess value)? loadPayoutSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PayoutStateCopyWith<PayoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutStateCopyWith<$Res> {
  factory $PayoutStateCopyWith(
          PayoutState value, $Res Function(PayoutState) then) =
      _$PayoutStateCopyWithImpl<$Res>;
  $Res call({MinerModel miner, PayoutModel payout});

  $MinerModelCopyWith<$Res> get miner;
  $PayoutModelCopyWith<$Res> get payout;
}

/// @nodoc
class _$PayoutStateCopyWithImpl<$Res> implements $PayoutStateCopyWith<$Res> {
  _$PayoutStateCopyWithImpl(this._value, this._then);

  final PayoutState _value;
  // ignore: unused_field
  final $Res Function(PayoutState) _then;

  @override
  $Res call({
    Object? miner = freezed,
    Object? payout = freezed,
  }) {
    return _then(_value.copyWith(
      miner: miner == freezed
          ? _value.miner
          : miner // ignore: cast_nullable_to_non_nullable
              as MinerModel,
      payout: payout == freezed
          ? _value.payout
          : payout // ignore: cast_nullable_to_non_nullable
              as PayoutModel,
    ));
  }

  @override
  $MinerModelCopyWith<$Res> get miner {
    return $MinerModelCopyWith<$Res>(_value.miner, (value) {
      return _then(_value.copyWith(miner: value));
    });
  }

  @override
  $PayoutModelCopyWith<$Res> get payout {
    return $PayoutModelCopyWith<$Res>(_value.payout, (value) {
      return _then(_value.copyWith(payout: value));
    });
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $PayoutStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({MinerModel miner, PayoutModel payout});

  @override
  $MinerModelCopyWith<$Res> get miner;
  @override
  $PayoutModelCopyWith<$Res> get payout;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PayoutStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? miner = freezed,
    Object? payout = freezed,
  }) {
    return _then(_Initial(
      miner: miner == freezed
          ? _value.miner
          : miner // ignore: cast_nullable_to_non_nullable
              as MinerModel,
      payout: payout == freezed
          ? _value.payout
          : payout // ignore: cast_nullable_to_non_nullable
              as PayoutModel,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.miner, required this.payout});

  @override
  final MinerModel miner;
  @override
  final PayoutModel payout;

  @override
  String toString() {
    return 'PayoutState.initial(miner: $miner, payout: $payout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.miner, miner) &&
            const DeepCollectionEquality().equals(other.payout, payout));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(miner),
      const DeepCollectionEquality().hash(payout));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MinerModel miner, PayoutModel payout) initial,
    required TResult Function(MinerModel miner, PayoutModel payout)
        loadPayoutSuccess,
  }) {
    return initial(miner, payout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MinerModel miner, PayoutModel payout)? initial,
    TResult Function(MinerModel miner, PayoutModel payout)? loadPayoutSuccess,
  }) {
    return initial?.call(miner, payout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MinerModel miner, PayoutModel payout)? initial,
    TResult Function(MinerModel miner, PayoutModel payout)? loadPayoutSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(miner, payout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadPayoutSuccess value) loadPayoutSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadPayoutSuccess value)? loadPayoutSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadPayoutSuccess value)? loadPayoutSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PayoutState {
  const factory _Initial(
      {required MinerModel miner, required PayoutModel payout}) = _$_Initial;

  @override
  MinerModel get miner;
  @override
  PayoutModel get payout;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadPayoutSuccessCopyWith<$Res>
    implements $PayoutStateCopyWith<$Res> {
  factory _$LoadPayoutSuccessCopyWith(
          _LoadPayoutSuccess value, $Res Function(_LoadPayoutSuccess) then) =
      __$LoadPayoutSuccessCopyWithImpl<$Res>;
  @override
  $Res call({MinerModel miner, PayoutModel payout});

  @override
  $MinerModelCopyWith<$Res> get miner;
  @override
  $PayoutModelCopyWith<$Res> get payout;
}

/// @nodoc
class __$LoadPayoutSuccessCopyWithImpl<$Res>
    extends _$PayoutStateCopyWithImpl<$Res>
    implements _$LoadPayoutSuccessCopyWith<$Res> {
  __$LoadPayoutSuccessCopyWithImpl(
      _LoadPayoutSuccess _value, $Res Function(_LoadPayoutSuccess) _then)
      : super(_value, (v) => _then(v as _LoadPayoutSuccess));

  @override
  _LoadPayoutSuccess get _value => super._value as _LoadPayoutSuccess;

  @override
  $Res call({
    Object? miner = freezed,
    Object? payout = freezed,
  }) {
    return _then(_LoadPayoutSuccess(
      miner: miner == freezed
          ? _value.miner
          : miner // ignore: cast_nullable_to_non_nullable
              as MinerModel,
      payout: payout == freezed
          ? _value.payout
          : payout // ignore: cast_nullable_to_non_nullable
              as PayoutModel,
    ));
  }
}

/// @nodoc

class _$_LoadPayoutSuccess implements _LoadPayoutSuccess {
  const _$_LoadPayoutSuccess({required this.miner, required this.payout});

  @override
  final MinerModel miner;
  @override
  final PayoutModel payout;

  @override
  String toString() {
    return 'PayoutState.loadPayoutSuccess(miner: $miner, payout: $payout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadPayoutSuccess &&
            const DeepCollectionEquality().equals(other.miner, miner) &&
            const DeepCollectionEquality().equals(other.payout, payout));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(miner),
      const DeepCollectionEquality().hash(payout));

  @JsonKey(ignore: true)
  @override
  _$LoadPayoutSuccessCopyWith<_LoadPayoutSuccess> get copyWith =>
      __$LoadPayoutSuccessCopyWithImpl<_LoadPayoutSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MinerModel miner, PayoutModel payout) initial,
    required TResult Function(MinerModel miner, PayoutModel payout)
        loadPayoutSuccess,
  }) {
    return loadPayoutSuccess(miner, payout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MinerModel miner, PayoutModel payout)? initial,
    TResult Function(MinerModel miner, PayoutModel payout)? loadPayoutSuccess,
  }) {
    return loadPayoutSuccess?.call(miner, payout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MinerModel miner, PayoutModel payout)? initial,
    TResult Function(MinerModel miner, PayoutModel payout)? loadPayoutSuccess,
    required TResult orElse(),
  }) {
    if (loadPayoutSuccess != null) {
      return loadPayoutSuccess(miner, payout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadPayoutSuccess value) loadPayoutSuccess,
  }) {
    return loadPayoutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadPayoutSuccess value)? loadPayoutSuccess,
  }) {
    return loadPayoutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadPayoutSuccess value)? loadPayoutSuccess,
    required TResult orElse(),
  }) {
    if (loadPayoutSuccess != null) {
      return loadPayoutSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadPayoutSuccess implements PayoutState {
  const factory _LoadPayoutSuccess(
      {required MinerModel miner,
      required PayoutModel payout}) = _$_LoadPayoutSuccess;

  @override
  MinerModel get miner;
  @override
  PayoutModel get payout;
  @override
  @JsonKey(ignore: true)
  _$LoadPayoutSuccessCopyWith<_LoadPayoutSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
