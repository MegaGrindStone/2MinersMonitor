import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:two_miners_api/src/repositories/base_repository.dart';

class ETHRepository extends BaseRepository {
  @override
  Widget get logo => SvgPicture.asset(
        'assets/eth.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Ethereum';

  @override
  String get server => 'https://eth.2miners.com/api';

  @override
  String get abbreviation => 'ETH';

  @override
  int get divisor => pow(10, 9).toInt();

  @override
  String get unit => 'H/s';

  @override
  bool get soloMode => false;

  @override
  double get poolFee => 0.01;

  @override
  double get blockReward => 2;

  @override
  bool get dynamicReward => false;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://etherscan.io/block/$blockHeight';

  @override
  String txURL(String txID) => 'https://etherscan.io/tx/$txID';
}

class ETHSoloRepository extends BaseRepository {
  @override
  Widget get logo => SvgPicture.asset(
        'assets/eth.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Ethereum SOLO';

  @override
  String get server => 'https://solo-eth.2miners.com/api';

  @override
  String get abbreviation => 'ETH';

  @override
  int get divisor => pow(10, 9).toInt();

  @override
  String get unit => 'H/s';

  @override
  bool get soloMode => true;

  @override
  double get poolFee => 0.015;

  @override
  double get blockReward => 2;

  @override
  bool get dynamicReward => false;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://etherscan.io/block/$blockHeight';

  @override
  String txURL(String txID) => 'https://etherscan.io/tx/$txID';
}
