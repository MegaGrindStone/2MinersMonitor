// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentModel _$$_PaymentModelFromJson(Map<String, dynamic> json) =>
    _$_PaymentModel(
      amount: json['amount'] as int?,
      timestamp: json['timestamp'] as int?,
      tx: json['tx'] as String?,
      txFee: json['txFee'] as int?,
    );

Map<String, dynamic> _$$_PaymentModelToJson(_$_PaymentModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'timestamp': instance.timestamp,
      'tx': instance.tx,
      'txFee': instance.txFee,
    };
