import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:two_miners_api/two_miners_api.dart';

class EXPRepository extends BaseRepository {
  @override
  String get abbreviation => 'EXP';

  @override
  double get blockReward => 4;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://explorer.expanse.tech/block/$blockHeight';

  @override
  int get divisor => pow(10, 9).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/exp.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Expanse';

  @override
  double get poolFee => 0.01;

  @override
  String get server => 'https://exp.2miners.com/api';

  @override
  bool get soloMode => false;

  @override
  String txURL(String txID) => 'https://explorer.expanse.tech/tx/$txID';

  @override
  String get unit => 'H/s';
}

class EXPSoloRepository extends BaseRepository {
  @override
  String get abbreviation => 'EXP';

  @override
  double get blockReward => 4;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://explorer.expanse.tech/block/$blockHeight';

  @override
  int get divisor => pow(10, 9).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/exp.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Expanse SOLO';

  @override
  double get poolFee => 0.015;

  @override
  String get server => 'https://solo-exp.2miners.com/api';

  @override
  bool get soloMode => true;

  @override
  String txURL(String txID) => 'https://explorer.expanse.tech/tx/$txID';

  @override
  String get unit => 'H/s';
}
