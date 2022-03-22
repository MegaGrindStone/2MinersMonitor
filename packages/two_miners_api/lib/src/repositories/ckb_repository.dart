import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:two_miners_api/two_miners_api.dart';

class CKBRepository extends BaseRepository {
  @override
  String get abbreviation => 'CKB';

  @override
  double get blockReward => 1241.59;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://explorer.nervos.org/block/$blockHash';

  @override
  int get divisor => pow(10, 8).toInt();

  @override
  bool get dynamicReward => true;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/ckb.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Nervos';

  @override
  double get poolFee => 0.01;

  @override
  String get server => 'https://ckb.2miners.com/api';

  @override
  bool get soloMode => false;

  @override
  String txURL(String txID) => 'https://explorer.nervos.org/transaction/$txID';

  @override
  String get unit => 'H/s';
}

class CKBSoloRepository extends BaseRepository {
  @override
  String get abbreviation => 'CKB';

  @override
  double get blockReward => 1241.59;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://explorer.nervos.org/block/$blockHash';

  @override
  int get divisor => pow(10, 8).toInt();

  @override
  bool get dynamicReward => true;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/ckb.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Nervos SOLO';

  @override
  double get poolFee => 0.015;

  @override
  String get server => 'https://solo-ckb.2miners.com/api';

  @override
  bool get soloMode => true;

  @override
  String txURL(String txID) => 'https://explorer.nervos.org/transaction/$txID';

  @override
  String get unit => 'H/s';
}
