import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:two_miners_api/two_miners_api.dart';

class CTXCRepository extends BaseRepository {
  @override
  String get abbreviation => 'CTXC';

  @override
  double get blockReward => 7;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://cerebro.cortexlabs.ai/#/block/$blockHeight';

  @override
  int get divisor => pow(10, 9).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/ctxc.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Cortex';

  @override
  double get poolFee => 0.01;

  @override
  String get server => 'https://ctxc.2miners.com/api';

  @override
  bool get soloMode => false;

  @override
  String txURL(String txID) => 'https://cerebro.cortexlabs.ai/#/tx/$txID';

  @override
  String get unit => 'Gps';
}

class CTXCSoloRepository extends BaseRepository {
  @override
  String get abbreviation => 'CTXC';

  @override
  double get blockReward => 7;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://cerebro.cortexlabs.ai/#/block/$blockHeight';

  @override
  int get divisor => pow(10, 9).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/ctxc.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Cortex SOLO';

  @override
  double get poolFee => 0.015;

  @override
  String get server => 'https://solo-ctxc.2miners.com/api';

  @override
  bool get soloMode => true;

  @override
  String txURL(String txID) => 'https://cerebro.cortexlabs.ai/#/tx/$txID';

  @override
  String get unit => 'Gps';
}
