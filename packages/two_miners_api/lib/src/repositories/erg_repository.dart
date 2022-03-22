import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:two_miners_api/two_miners_api.dart';

class ERGRepository extends BaseRepository {
  @override
  String get abbreviation => 'ERG';

  @override
  double get blockReward => 66;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://explorer.ergoplatform.com/en/blocks/$blockHash';

  @override
  int get divisor => pow(10, 9).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/erg.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Ergo';

  @override
  double get poolFee => 0.01;

  @override
  String get server => 'https://erg.2miners.com/api';

  @override
  bool get soloMode => false;

  @override
  String txURL(String txID) =>
      'https://explorer.ergoplatform.com/en/transactions/$txID';

  @override
  String get unit => 'H/s';
}

class ERGSoloRepository extends BaseRepository {
  @override
  String get abbreviation => 'ERG';

  @override
  double get blockReward => 66;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://explorer.ergoplatform.com/en/blocks/$blockHash';

  @override
  int get divisor => pow(10, 9).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/erg.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Ergo SOLO';

  @override
  double get poolFee => 0.015;

  @override
  String get server => 'https://solo-erg.2miners.com/api';

  @override
  bool get soloMode => true;

  @override
  String txURL(String txID) =>
      'https://explorer.ergoplatform.com/en/transactions/$txID';

  @override
  String get unit => 'H/s';
}
