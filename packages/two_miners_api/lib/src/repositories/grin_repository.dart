import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:two_miners_api/two_miners_api.dart';

class GRINRepository extends BaseRepository {
  @override
  String get abbreviation => 'GRIN';

  @override
  double get blockReward => 60;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://grinscan.net/block/$blockHeight';

  @override
  int get divisor => pow(10, 9).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/grin.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'GRIN';

  @override
  double get poolFee => 0.01;

  @override
  String get server => 'https://grin.2miners.com/api';

  @override
  bool get soloMode => false;

  @override
  String txURL(String txID) => 'https://grinscan.net/kernel/$txID';

  @override
  String get unit => 'Gps';
}

class GRINSoloRepository extends BaseRepository {
  @override
  String get abbreviation => 'GRIN';

  @override
  double get blockReward => 60;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://grinscan.net/block/$blockHeight';

  @override
  int get divisor => pow(10, 9).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/grin.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'GRIN SOLO';

  @override
  double get poolFee => 0.015;

  @override
  String get server => 'https://solo-grin.2miners.com/api';

  @override
  bool get soloMode => true;

  @override
  String txURL(String txID) => 'https://grinscan.net/kernel/$txID';

  @override
  String get unit => 'Gps';
}
