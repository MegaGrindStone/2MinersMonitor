part of 'payout_bloc.dart';

@freezed
class PayoutState with _$PayoutState {
  const factory PayoutState.initial({
    required MinerModel miner,
    required PayoutModel payout,
  }) = _Initial;

  const factory PayoutState.loadPayoutSuccess({
    required MinerModel miner,
    required PayoutModel payout,
  }) = _LoadPayoutSuccess;
}
