// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) {
  return _PaymentModel.fromJson(json);
}

/// @nodoc
class _$PaymentModelTearOff {
  const _$PaymentModelTearOff();

  _PaymentModel call({int? amount, int? timestamp, String? tx, int? txFee}) {
    return _PaymentModel(
      amount: amount,
      timestamp: timestamp,
      tx: tx,
      txFee: txFee,
    );
  }

  PaymentModel fromJson(Map<String, Object?> json) {
    return PaymentModel.fromJson(json);
  }
}

/// @nodoc
const $PaymentModel = _$PaymentModelTearOff();

/// @nodoc
mixin _$PaymentModel {
  int? get amount => throw _privateConstructorUsedError;
  int? get timestamp => throw _privateConstructorUsedError;
  String? get tx => throw _privateConstructorUsedError;
  int? get txFee => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentModelCopyWith<PaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentModelCopyWith<$Res> {
  factory $PaymentModelCopyWith(
          PaymentModel value, $Res Function(PaymentModel) then) =
      _$PaymentModelCopyWithImpl<$Res>;
  $Res call({int? amount, int? timestamp, String? tx, int? txFee});
}

/// @nodoc
class _$PaymentModelCopyWithImpl<$Res> implements $PaymentModelCopyWith<$Res> {
  _$PaymentModelCopyWithImpl(this._value, this._then);

  final PaymentModel _value;
  // ignore: unused_field
  final $Res Function(PaymentModel) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? timestamp = freezed,
    Object? tx = freezed,
    Object? txFee = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      tx: tx == freezed
          ? _value.tx
          : tx // ignore: cast_nullable_to_non_nullable
              as String?,
      txFee: txFee == freezed
          ? _value.txFee
          : txFee // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$PaymentModelCopyWith<$Res>
    implements $PaymentModelCopyWith<$Res> {
  factory _$PaymentModelCopyWith(
          _PaymentModel value, $Res Function(_PaymentModel) then) =
      __$PaymentModelCopyWithImpl<$Res>;
  @override
  $Res call({int? amount, int? timestamp, String? tx, int? txFee});
}

/// @nodoc
class __$PaymentModelCopyWithImpl<$Res> extends _$PaymentModelCopyWithImpl<$Res>
    implements _$PaymentModelCopyWith<$Res> {
  __$PaymentModelCopyWithImpl(
      _PaymentModel _value, $Res Function(_PaymentModel) _then)
      : super(_value, (v) => _then(v as _PaymentModel));

  @override
  _PaymentModel get _value => super._value as _PaymentModel;

  @override
  $Res call({
    Object? amount = freezed,
    Object? timestamp = freezed,
    Object? tx = freezed,
    Object? txFee = freezed,
  }) {
    return _then(_PaymentModel(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      tx: tx == freezed
          ? _value.tx
          : tx // ignore: cast_nullable_to_non_nullable
              as String?,
      txFee: txFee == freezed
          ? _value.txFee
          : txFee // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentModel implements _PaymentModel {
  const _$_PaymentModel({this.amount, this.timestamp, this.tx, this.txFee});

  factory _$_PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentModelFromJson(json);

  @override
  final int? amount;
  @override
  final int? timestamp;
  @override
  final String? tx;
  @override
  final int? txFee;

  @override
  String toString() {
    return 'PaymentModel(amount: $amount, timestamp: $timestamp, tx: $tx, txFee: $txFee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentModel &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality().equals(other.tx, tx) &&
            const DeepCollectionEquality().equals(other.txFee, txFee));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(tx),
      const DeepCollectionEquality().hash(txFee));

  @JsonKey(ignore: true)
  @override
  _$PaymentModelCopyWith<_PaymentModel> get copyWith =>
      __$PaymentModelCopyWithImpl<_PaymentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentModelToJson(this);
  }
}

abstract class _PaymentModel implements PaymentModel {
  const factory _PaymentModel(
      {int? amount, int? timestamp, String? tx, int? txFee}) = _$_PaymentModel;

  factory _PaymentModel.fromJson(Map<String, dynamic> json) =
      _$_PaymentModel.fromJson;

  @override
  int? get amount;
  @override
  int? get timestamp;
  @override
  String? get tx;
  @override
  int? get txFee;
  @override
  @JsonKey(ignore: true)
  _$PaymentModelCopyWith<_PaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
