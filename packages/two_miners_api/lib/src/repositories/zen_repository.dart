import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:two_miners_api/two_miners_api.dart';

class ZENRepository extends BaseRepository {
  @override
  String get abbreviation => 'ZEN';

  @override
  double get blockReward => 3.75;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://explorer.zensystem.io/block-index/$blockHeight';

  @override
  int get divisor => pow(10, 8).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/zen.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Zencash';

  @override
  double get poolFee => 0.01;

  @override
  String get server => 'https://zen.2miners.com/api';

  @override
  bool get soloMode => false;

  @override
  String txURL(String txID) => 'https://explorer.zensystem.io/tx/$txID';

  @override
  String get unit => 'S/s';
}

class ZENSoloRepository extends BaseRepository {
  @override
  String get abbreviation => 'ZEN';

  @override
  double get blockReward => 3.75;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://explorer.zensystem.io/block-index/$blockHeight';

  @override
  int get divisor => pow(10, 8).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/zen.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Zencash SOLO';

  @override
  double get poolFee => 0.051;

  @override
  String get server => 'https://solo-zen.2miners.com/api';

  @override
  bool get soloMode => true;

  @override
  String txURL(String txID) => 'https://explorer.zensystem.io/tx/$txID';

  @override
  String get unit => 'S/s';
}
