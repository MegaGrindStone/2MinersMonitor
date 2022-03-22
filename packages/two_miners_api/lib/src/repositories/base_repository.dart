import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:two_miners_api/two_miners_api.dart';

abstract class BaseRepository {
  String get server;
  String get name;
  String get abbreviation;
  Widget get logo;
  int get divisor;
  String get unit;
  bool get soloMode;
  double get poolFee;
  // This value will be ignored, when dynamicReward set to true.
  double get blockReward;
  // When this true, blockReward is changing according to it's own algo 
  // with short interval. We could fetch the reward from StatsRequest 
  // (eg. https://xmr.2miners.com/api/stats), under key "nodes[0].blockReward". 
  // If there's none, most likely this value should be false.
  bool get dynamicReward;

  Future<AccountReturnModel> accounts(String walletID) async {
    try {
      final response = await http.get(Uri.parse('$server/accounts/$walletID'));
      if (response.statusCode == 200) {
        return AccountReturnModel.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>,
        );
      } else {
        throw ExceptionModel(httpStatusCode: response.statusCode, message: '');
      }
    } catch (_) {
      rethrow;
    }
  }

  Future<StatsReturnModel> stats() async {
    try {
      final response = await http.get(Uri.parse('$server/stats'));
      if (response.statusCode == 200) {
        return StatsReturnModel.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>,
        );
      } else {
        throw ExceptionModel(httpStatusCode: response.statusCode, message: '');
      }
    } catch (_) {
      rethrow;
    }
  }

  double poolReward(int dynamicReward) =>
      this.dynamicReward ? dynamicReward / divisor : blockReward;

  String blockURL({String? blockHash, String? blockHeight});
  String txURL(String txID);
}
