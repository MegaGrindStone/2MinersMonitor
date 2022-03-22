import 'package:freezed_annotation/freezed_annotation.dart';

part 'payout_model.freezed.dart';

@freezed
class PayoutModel with _$PayoutModel {
  const factory PayoutModel({
    required double amount,
    required DateTime time,
    required String txID,
    double? txFee,
  }) = _Payout;
}
