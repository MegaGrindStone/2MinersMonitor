import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:two_miners_monitor_oss/miners/bloc/miner_bloc.dart';
import 'package:two_miners_monitor_oss/miners/model/miner_model.dart';
import 'package:two_miners_monitor_oss/payouts/model/payout_model.dart';

part 'payout_event.dart';
part 'payout_state.dart';
part 'payout_bloc.freezed.dart';

class PayoutBloc extends Bloc<PayoutEvent, PayoutState> {
  PayoutBloc({
    required MinerBloc minerBloc,
    required MinerModel miner,
    required PayoutModel payout,
  })  : _minerBloc = minerBloc,
        super(_Initial(miner: miner, payout: payout)) {
    _minerBlocSubscription = _minerBloc.stream.listen((state) {
      state.whenOrNull(
        initial: (miner) => add(_PayoutLoaded(miner: miner, payout: payout)),
        loadMinerSuccess: (miner) =>
            add(_PayoutLoaded(miner: miner, payout: payout)),
      );
    });
    on<_PayoutLoaded>(_onPayoutLoaded);
  }

  final MinerBloc _minerBloc;
  late final StreamSubscription _minerBlocSubscription;

  void _onPayoutLoaded(_PayoutLoaded event, Emitter<PayoutState> emit) {
    emit(_LoadPayoutSuccess(miner: event.miner, payout: event.payout));
  }

  @override
  Future<void> close() {
    _minerBlocSubscription.cancel();
    return super.close();
  }
}
