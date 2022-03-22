import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:two_miners_api/two_miners_api.dart';

class ETPRepository extends BaseRepository {
  @override
  String get abbreviation => 'ETP';

  @override
  double get blockReward => 1.35;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://explorer.mvs.org/#!/blk/$blockHeight';

  @override
  int get divisor => pow(10, 8).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/etp.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Metaverse';

  @override
  double get poolFee => 0.01;

  @override
  String get server => 'https://etp.2miners.com/api';

  @override
  bool get soloMode => false;

  @override
  String txURL(String txID) => 'https://explorer.mvs.org/#!/tx/$txID';

  @override
  String get unit => 'H/s';
}

class ETPSoloRepository extends BaseRepository {
  @override
  String get abbreviation => 'ETP';

  @override
  double get blockReward => 1.35;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://explorer.mvs.org/#!/blk/$blockHeight';

  @override
  int get divisor => pow(10, 8).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/etp.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Metaverse SOLO';

  @override
  double get poolFee => 0.015;

  @override
  String get server => 'https://solo-etp.2miners.com/api';

  @override
  bool get soloMode => true;

  @override
  String txURL(String txID) => 'https://explorer.mvs.org/#!/tx/$txID';

  @override
  String get unit => 'H/s';
}
