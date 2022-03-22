import 'package:intl/intl.dart';

extension CustomDouble on double {
  String hashrateWithUnit(String unit) {
    if (this <= 1000) {
      return '$hashrate $unit';
    }
    if (this <= 1000 * 1000) {
      return '${(this / 1000).hashrate} K$unit';
    }
    if (this <= 1000 * 1000 * 1000) {
      return '${(this / (1000 * 1000)).hashrate} M$unit';
    }
    if (this <= 1000 * 1000 * 1000 * 1000) {
      return '${(this / (1000 * 1000 * 1000)).hashrate} G$unit';
    }
    if (this <= 1000 * 1000 * 1000 * 1000 * 1000) {
      return '${(this / (1000 * 1000 * 1000 * 1000)).hashrate} T$unit';
    }
    if (this <= 1000 * 1000 * 1000 * 1000 * 1000 * 1000) {
      return '${(this / (1000 * 1000 * 1000 * 1000 * 1000)).hashrate} P$unit';
    }
    return '0.00 $unit';
  }

  String get hashrate => NumberFormat('###0.##').format(this);

  String get money => NumberFormat('###0.######').format(this);

  String get percentage => '${NumberFormat('###0.####').format(this)}  %';
}

extension CustomInt on int {
  String get number => NumberFormat().format(this);
}

extension Address on String {
  String get shortenAddress => '${substring(0, 5)}...${substring(length - 5)}';
}
