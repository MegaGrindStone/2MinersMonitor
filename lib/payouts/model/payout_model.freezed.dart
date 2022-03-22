// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payout_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PayoutModelTearOff {
  const _$PayoutModelTearOff();

  _Payout call(
      {required double amount,
      required DateTime time,
      required String txID,
      double? txFee}) {
    return _Payout(
      amount: amount,
      time: time,
      txID: txID,
      txFee: txFee,
    );
  }
}

/// @nodoc
const $PayoutModel = _$PayoutModelTearOff();

/// @nodoc
mixin _$PayoutModel {
  double get amount => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;
  String get txID => throw _privateConstructorUsedError;
  double? get txFee => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PayoutModelCopyWith<PayoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutModelCopyWith<$Res> {
  factory $PayoutModelCopyWith(
          PayoutModel value, $Res Function(PayoutModel) then) =
      _$PayoutModelCopyWithImpl<$Res>;
  $Res call({double amount, DateTime time, String txID, double? txFee});
}

/// @nodoc
class _$PayoutModelCopyWithImpl<$Res> implements $PayoutModelCopyWith<$Res> {
  _$PayoutModelCopyWithImpl(this._value, this._then);

  final PayoutModel _value;
  // ignore: unused_field
  final $Res Function(PayoutModel) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? time = freezed,
    Object? txID = freezed,
    Object? txFee = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      txID: txID == freezed
          ? _value.txID
          : txID // ignore: cast_nullable_to_non_nullable
              as String,
      txFee: txFee == freezed
          ? _value.txFee
          : txFee // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$PayoutCopyWith<$Res> implements $PayoutModelCopyWith<$Res> {
  factory _$PayoutCopyWith(_Payout value, $Res Function(_Payout) then) =
      __$PayoutCopyWithImpl<$Res>;
  @override
  $Res call({double amount, DateTime time, String txID, double? txFee});
}

/// @nodoc
class __$PayoutCopyWithImpl<$Res> extends _$PayoutModelCopyWithImpl<$Res>
    implements _$PayoutCopyWith<$Res> {
  __$PayoutCopyWithImpl(_Payout _value, $Res Function(_Payout) _then)
      : super(_value, (v) => _then(v as _Payout));

  @override
  _Payout get _value => super._value as _Payout;

  @override
  $Res call({
    Object? amount = freezed,
    Object? time = freezed,
    Object? txID = freezed,
    Object? txFee = freezed,
  }) {
    return _then(_Payout(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      txID: txID == freezed
          ? _value.txID
          : txID // ignore: cast_nullable_to_non_nullable
              as String,
      txFee: txFee == freezed
          ? _value.txFee
          : txFee // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_Payout implements _Payout {
  const _$_Payout(
      {required this.amount,
      required this.time,
      required this.txID,
      this.txFee});

  @override
  final double amount;
  @override
  final DateTime time;
  @override
  final String txID;
  @override
  final double? txFee;

  @override
  String toString() {
    return 'PayoutModel(amount: $amount, time: $time, txID: $txID, txFee: $txFee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Payout &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.txID, txID) &&
            const DeepCollectionEquality().equals(other.txFee, txFee));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(txID),
      const DeepCollectionEquality().hash(txFee));

  @JsonKey(ignore: true)
  @override
  _$PayoutCopyWith<_Payout> get copyWith =>
      __$PayoutCopyWithImpl<_Payout>(this, _$identity);
}

abstract class _Payout implements PayoutModel {
  const factory _Payout(
      {required double amount,
      required DateTime time,
      required String txID,
      double? txFee}) = _$_Payout;

  @override
  double get amount;
  @override
  DateTime get time;
  @override
  String get txID;
  @override
  double? get txFee;
  @override
  @JsonKey(ignore: true)
  _$PayoutCopyWith<_Payout> get copyWith => throw _privateConstructorUsedError;
}
