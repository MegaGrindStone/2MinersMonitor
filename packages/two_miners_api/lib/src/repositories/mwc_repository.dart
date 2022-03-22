import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:two_miners_api/two_miners_api.dart';

class MWCRepository extends BaseRepository {
  @override
  String get abbreviation => 'MWC';

  @override
  double get blockReward => 0.15;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://explorer.mwc.mw/#$blockHeight';

  @override
  int get divisor => pow(10, 9).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/mwc.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'MimbleWimbleCoin';

  @override
  double get poolFee => 0.01;

  @override
  String get server => 'https://mwc.2miners.com/api';

  @override
  bool get soloMode => false;

  @override
  String txURL(String txID) => 'https://explorer.mwc.mw/#$txID';

  @override
  String get unit => 'Gps';
}

class MWCSoloRepository extends BaseRepository {
  @override
  String get abbreviation => 'MWC';

  @override
  double get blockReward => 0.15;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://explorer.mwc.mw/#$blockHeight';

  @override
  int get divisor => pow(10, 9).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/mwc.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'MimbleWimbleCoin SOLO';

  @override
  double get poolFee => 0.015;

  @override
  String get server => 'https://solo-mwc.2miners.com/api';

  @override
  bool get soloMode => true;

  @override
  String txURL(String txID) => 'https://explorer.mwc.mw/#$txID';

  @override
  String get unit => 'Gps';
}
