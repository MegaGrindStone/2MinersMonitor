import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:two_miners_api/two_miners_api.dart';

class ETCRepository extends BaseRepository {
  @override
  String get abbreviation => 'ETC';

  @override
  double get blockReward => 3.2;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://etcblockexplorer.com/block/$blockHeight';

  @override
  int get divisor => pow(10, 9).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/etc.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Ethereum Classic';

  @override
  double get poolFee => 0.01;

  @override
  String get server => 'https://etc.2miners.com/api';

  @override
  bool get soloMode => false;

  @override
  String txURL(String txID) => 'https://etcblockexplorer.com/tx/$txID';

  @override
  String get unit => 'H/s';
}

class ETCSoloRepository extends BaseRepository {
  @override
  String get abbreviation => 'ETC';

  @override
  double get blockReward => 3.2;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://etcblockexplorer.com/block/$blockHeight';

  @override
  int get divisor => pow(10, 9).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/etc.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Ethereum Classic SOLO';

  @override
  double get poolFee => 0.015;

  @override
  String get server => 'https://solo-etc.2miners.com/api';

  @override
  bool get soloMode => true;

  @override
  String txURL(String txID) => 'https://etcblockexplorer.com/tx/$txID';

  @override
  String get unit => 'H/s';
}
