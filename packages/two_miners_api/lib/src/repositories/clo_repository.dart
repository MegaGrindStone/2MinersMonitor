import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:two_miners_api/two_miners_api.dart';

class CLORepository extends BaseRepository {
  @override
  String get abbreviation => 'CLO';

  @override
  double get blockReward => 38.88;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://explorer.callisto.network/blocks/$blockHeight';

  @override
  int get divisor => pow(10, 9).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/clo.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Callisto';

  @override
  double get poolFee => 0.01;

  @override
  String get server => 'https://clo.2miners.com/api';

  @override
  bool get soloMode => false;

  @override
  String txURL(String txID) => 'https://explorer.callisto.network/tx/$txID';

  @override
  String get unit => 'H/s';
}

class CLOSoloRepository extends BaseRepository {
  @override
  String get abbreviation => 'CLO';

  @override
  double get blockReward => 38.88;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://explorer.callisto.network/blocks/$blockHeight';

  @override
  int get divisor => pow(10, 9).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/clo.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Callisto SOLO';

  @override
  double get poolFee => 0.015;

  @override
  String get server => 'https://solo-clo.2miners.com/api';

  @override
  bool get soloMode => true;

  @override
  String txURL(String txID) => 'https://explorer.callisto.network/tx/$txID';

  @override
  String get unit => 'H/s';
}
