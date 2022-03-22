import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:two_miners_api/two_miners_api.dart';

class AERepository extends BaseRepository {
  @override
  String get abbreviation => 'AE';

  @override
  double get blockReward => 83.75;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://www.aeknow.org/block/height/$blockHeight';

  @override
  int get divisor => pow(10, 8).toInt();

  @override
  bool get dynamicReward => true;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/ae.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Aeternity';

  @override
  double get poolFee => 0.01;

  @override
  String get server => 'https://ae.2miners.com/api';

  @override
  bool get soloMode => false;

  @override
  String txURL(String txID) => 'https://www.aeknow.org/block/transaction/$txID';

  @override
  String get unit => 'Gps';
}

class AESoloRepository extends BaseRepository {
  @override
  String get abbreviation => 'AE';

  @override
  double get blockReward => 83.75;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://www.aeknow.org/block/height/$blockHeight';

  @override
  int get divisor => pow(10, 8).toInt();

  @override
  bool get dynamicReward => true;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/ae.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Aeternity SOLO';

  @override
  double get poolFee => 0.015;

  @override
  String get server => 'https://solo-ae.2miners.com/api';

  @override
  bool get soloMode => true;

  @override
  String txURL(String txID) => 'https://www.aeknow.org/block/transaction/$txID';

  @override
  String get unit => 'Gps';
}
