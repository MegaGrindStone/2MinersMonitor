part of 'payout_bloc.dart';

@freezed
class PayoutEvent with _$PayoutEvent {
  const factory PayoutEvent.payoutLoaded({
    required MinerModel miner,
    required PayoutModel payout,
  }) = _PayoutLoaded;
}
