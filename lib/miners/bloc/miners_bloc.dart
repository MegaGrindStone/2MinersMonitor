import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:two_miners_api/two_miners_api.dart';
import 'package:two_miners_monitor_oss/miners/model/miner_model.dart';

part 'miners_event.dart';
part 'miners_state.dart';
part 'miners_bloc.freezed.dart';

class MinersBloc extends HydratedBloc<MinersEvent, MinersState> {
  MinersBloc({required CoinRepositories coinRepositories})
      : _coinRepositories = coinRepositories,
        super(const _Initial(miners: [])) {
    on<_MinerAdded>(_onMinerAdded);
    on<_MinerRemoved>(_onMinerRemoved);
    on<_MinerUpdated>(_onMinerUpdated);
    on<_LoadMinersRequested>(_onLoadMinersRequested);
  }

  final CoinRepositories _coinRepositories;

  var _lastRefresh = DateTime.now();

  final _refreshCooldown = 1; // in second;

  void _onMinerAdded(_MinerAdded event, Emitter<MinersState> emit) {
    // if miner already exist, ignore it
    final isFound =
        state.miners.indexWhere((miner) => event.miner == miner) != -1;
    if (isFound) return;
    final miners = <MinerModel>[...state.miners, event.miner];
    emit(_LoadMinersSuccess(miners: miners));
  }

  void _onMinerRemoved(_MinerRemoved event, Emitter<MinersState> emit) {
    final miners = <MinerModel>[...state.miners]..remove(event.miner);
    emit(_LoadMinersSuccess(miners: miners));
  }

  void _onMinerUpdated(_MinerUpdated event, Emitter<MinersState> emit) {
    final miners = <MinerModel>[...state.miners];
    for (var i = 0; i < miners.length; i++) {
      if (miners[i] == event.miner) {
        miners[i] = event.miner.copyWith();
      }
    }
    emit(_LoadMinersSuccess(miners: miners));
  }

  void _onLoadMinersRequested(
    _LoadMinersRequested event,
    Emitter<MinersState> emit,
  ) {
    final now = DateTime.now();
    final diff = now.difference(_lastRefresh).inSeconds;
    if (diff < _refreshCooldown) {
      return;
    }
    _lastRefresh = now;
    emit(
      _LoadMinersInProgress(
        miners: state.miners,
        refreshSeconds: now.second,
      ),
    );
  }

  @override
  MinersState? fromJson(Map<String, dynamic> json) => MinersState.initial(
        miners: ((json['miners'] as List<dynamic>?) ?? <dynamic>[])
            .map((dynamic e) => e as Map<String, dynamic>)
            .map(
              (j) => MinerModel.fromJson(j).copyWith(
                repository: _coinRepositories.repositories[RepositoryIndex
                    .values
                    .byName(j['repositoryIndex'] as String)],
              ),
            )
            .toList(),
      );

  @override
  Map<String, dynamic>? toJson(MinersState state) => state.whenOrNull(
        loadMinersSuccess: (miners) =>
            <String, dynamic>{'miners': miners.map((e) => e.toJson()).toList()},
      );
}
