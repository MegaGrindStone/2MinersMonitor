import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:two_miners_api/two_miners_api.dart';

class BEAMRepository extends BaseRepository {
  @override
  String get abbreviation => 'BEAM';

  @override
  double get blockReward => 40;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://explorer.beam.mw/block/$blockHash';

  @override
  int get divisor => pow(10, 8).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/beam.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Beam';

  @override
  double get poolFee => 0.01;

  @override
  String get server => 'https://beam.2miners.com/api';

  @override
  bool get soloMode => false;

  @override
  String txURL(String txID) => '';

  @override
  String get unit => 'S/s';
}

class BEAMSoloRepository extends BaseRepository {
  @override
  String get abbreviation => 'BEAM';

  @override
  double get blockReward => 40;

  @override
  String blockURL({String? blockHash, String? blockHeight}) =>
      'https://explorer.beam.mw/block/$blockHash';

  @override
  int get divisor => pow(10, 8).toInt();

  @override
  bool get dynamicReward => false;

  @override
  Widget get logo => SvgPicture.asset(
        'assets/beam.svg',
        package: 'two_miners_api',
      );

  @override
  String get name => 'Beam SOLO';

  @override
  double get poolFee => 0.015;

  @override
  String get server => 'https://solo-beam.2miners.com/api';

  @override
  bool get soloMode => true;

  @override
  String txURL(String txID) => '';

  @override
  String get unit => 'S/s';
}
