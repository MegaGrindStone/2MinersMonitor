import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:two_miners_monitor_oss/extension.dart';

part 'worker_model.freezed.dart';

@freezed
class WorkerModel with _$WorkerModel {
  const factory WorkerModel({
    required String name,
    required double currentHashrate,
    required double averageHashrate,
    required DateTime lastShare,
    required bool isOffline,
    required String unit,
  }) = _WorkerModel;
  const WorkerModel._();

  String get currentHashrateWithUnit => currentHashrate.hashrateWithUnit(unit);
  String get averageHashrateWithUnit => averageHashrate.hashrateWithUnit(unit);
}
