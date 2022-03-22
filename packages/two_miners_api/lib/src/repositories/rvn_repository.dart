import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:two_miners_api/two_miners_api.dart';

class RVNRepository extends BaseRepository {
  @override
  String get abbreviation => 'RVN';

  @override
  double get blockReward => 2500;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://rvn.cryptoscope.io/block/?blockheight=$blockHeight';

  @override
  int get divisor => pow(10, 8).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/rvn.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Ravencoin';

  @override
  double get poolFee => 0.01;

  @override
  String get server => 'https://rvn.2miners.com/api';

  @override
  bool get soloMode => false;

  @override
  String txURL(String txID) => 'https://rvn.cryptoscope.io/tx/?txid=$txID';

  @override
  String get unit => 'H/s';
}

class RVNSoloRepository extends BaseRepository {
  @override
  String get abbreviation => 'RVN';

  @override
  double get blockReward => 2500;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://rvn.cryptoscope.io/block/?blockheight=$blockHeight';

  @override
  int get divisor => pow(10, 8).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/rvn.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Ravencoin SOLO';

  @override
  double get poolFee => 0.015;

  @override
  String get server => 'https://solo-rvn.2miners.com/api';

  @override
  bool get soloMode => true;

  @override
  String txURL(String txID) => 'https://rvn.cryptoscope.io/tx/?txid=$txID';

  @override
  String get unit => 'H/s';
}
