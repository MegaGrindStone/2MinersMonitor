import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:two_miners_monitor_oss/miners/bloc/miner_bloc.dart';
import 'package:two_miners_monitor_oss/miners/model/miner_model.dart';
import 'package:two_miners_monitor_oss/rewards/model/reward_model.dart';

part 'reward_event.dart';
part 'reward_state.dart';
part 'reward_bloc.freezed.dart';

class RewardBloc extends Bloc<RewardEvent, RewardState> {
  RewardBloc({
    required MinerBloc minerBloc,
    required MinerModel miner,
    required RewardModel reward,
  })  : _minerBloc = minerBloc,
        super(_Initial(miner: miner, reward: reward)) {
    _minerBlocSubscription = _minerBloc.stream.listen((state) {
      state.whenOrNull(
        initial: (miner) => add(_RewardLoaded(miner: miner, reward: reward)),
        loadMinerSuccess: (miner) =>
            add(_RewardLoaded(miner: miner, reward: reward)),
      );
    });
    on<_RewardLoaded>(_onRewardLoaded);
  }
  final MinerBloc _minerBloc;
  late final StreamSubscription _minerBlocSubscription;

  void _onRewardLoaded(_RewardLoaded event, Emitter<RewardState> emit) {
    emit(_LoadRewardSuccess(miner: event.miner, reward: event.reward));
  }

  @override
  Future<void> close() {
    _minerBlocSubscription.cancel();
    return super.close();
  }
}
