import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:two_miners_api/two_miners_api.dart';

class FLUXRepository extends BaseRepository {
  @override
  String get abbreviation => 'FLUX';

  @override
  double get blockReward => 37.5;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://explorer.runonflux.io/block-index/$blockHeight';

  @override
  int get divisor => pow(10, 8).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/flux.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Flux (ZelCash)';

  @override
  double get poolFee => 0.01;

  @override
  String get server => 'https://flux.2miners.com/api';

  @override
  bool get soloMode => false;

  @override
  String txURL(String txID) => 'https://explorer.runonflux.io/tx/$txID';

  @override
  String get unit => 'S/s';
}

class FLUXSoloRepository extends BaseRepository {
  @override
  String get abbreviation => 'FLUX';

  @override
  double get blockReward => 37.5;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://explorer.runonflux.io/block-index/$blockHeight';

  @override
  int get divisor => pow(10, 8).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/flux.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Flux (ZelCash) SOLO';

  @override
  double get poolFee => 0.015;

  @override
  String get server => 'https://solo-flux.2miners.com/api';

  @override
  bool get soloMode => true;

  @override
  String txURL(String txID) => 'https://explorer.runonflux.io/tx/$txID';

  @override
  String get unit => 'S/s';
}
