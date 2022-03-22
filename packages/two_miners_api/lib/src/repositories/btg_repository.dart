import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:two_miners_api/two_miners_api.dart';

class BTGRepository extends BaseRepository {
  @override
  String get abbreviation => 'BTG';

  @override
  double get blockReward => 6.25;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://explorer.bitcoingold.org/insight/block-index/$blockHeight';

  @override
  int get divisor => pow(10, 8).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/btg.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Bitcoin GOLD';

  @override
  double get poolFee => 0.01;

  @override
  String get server => 'https://btg.2miners.com/api';

  @override
  bool get soloMode => false;

  @override
  String txURL(String txID) =>
      'https://explorer.bitcoingold.org/insight/tx/$txID';

  @override
  String get unit => 'S/s';
}

class BTGSoloRepository extends BaseRepository {
  @override
  String get abbreviation => 'BTG';

  @override
  double get blockReward => 6.25;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://explorer.bitcoingold.org/insight/block-index/$blockHeight';

  @override
  int get divisor => pow(10, 8).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/btg.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Bitcoin GOLD SOLO';

  @override
  double get poolFee => 0.015;

  @override
  String get server => 'https://solo-btg.2miners.com/api';

  @override
  bool get soloMode => true;

  @override
  String txURL(String txID) =>
      'https://explorer.bitcoingold.org/insight/tx/$txID';

  @override
  String get unit => 'S/s';
}
