import 'package:two_miners_api/two_miners_api.dart';
import 'package:two_miners_monitor_oss/miners/model/miner_model.dart';

class StatTicker {
  const StatTicker();

  Stream<Map<RepositoryIndex, StatsReturnModel?>> tick({
    required List<MinerModel> miners,
  }) async* {
    yield await compute(miners);
    yield* Stream.periodic(
      const Duration(seconds: 60),
      (_) => compute(miners),
    ).asyncMap((event) async => event);
  }

  Future<Map<RepositoryIndex, StatsReturnModel?>> compute(
    List<MinerModel> miners,
  ) async {
    final statMap = <RepositoryIndex, StatsReturnModel?>{};
    for (final miner in miners) {
      try {
        statMap[miner.repositoryIndex] = await miner.repository?.stats();
      } catch (_) {
        rethrow;
      }
    }
    return statMap;
  }
}
