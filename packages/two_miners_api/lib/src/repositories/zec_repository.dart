import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:two_miners_api/two_miners_api.dart';

class ZECRepository extends BaseRepository {
  @override
  String get abbreviation => 'ZEC';

  @override
  double get blockReward => 2.5;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://explorer.zcha.in/blocks/$blockHeight';

  @override
  int get divisor => pow(10, 8).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/zec.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Zcash';

  @override
  double get poolFee => 0.01;

  @override
  String get server => 'https://zec.2miners.com/api';

  @override
  bool get soloMode => false;

  @override
  String txURL(String txID) => 'https://explorer.zcha.in/transactions/$txID';

  @override
  String get unit => 'S/s';
}

class ZECSoloRepository extends BaseRepository {
  @override
  String get abbreviation => 'ZEC';

  @override
  double get blockReward => 2.5;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://explorer.zcha.in/blocks/$blockHeight';

  @override
  int get divisor => pow(10, 8).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/zec.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Zcash SOLO';

  @override
  double get poolFee => 0.015;

  @override
  String get server => 'https://solo-zec.2miners.com/api';

  @override
  bool get soloMode => true;

  @override
  String txURL(String txID) => 'https://explorer.zcha.in/transactions/$txID';

  @override
  String get unit => 'S/s';
}
