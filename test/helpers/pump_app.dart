// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:two_miners_api/two_miners_api.dart';
import 'package:two_miners_monitor_oss/app/view/app.dart';
import 'package:two_miners_monitor_oss/l10n/l10n.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp({
    required CoinRepositories coinRepositories,
    required BeamerDelegate routerDelegate,
  }) {
    return pumpWidget(
      RepositoryProvider.value(
        value: coinRepositories,
        child: Blocs(
          child: MaterialApp.router(
            routeInformationParser: BeamerParser(),
            routerDelegate: routerDelegate,
            backButtonDispatcher: BeamerBackButtonDispatcher(
              delegate: routerDelegate,
            ),
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
          ),
        ),
      ),
    );
  }
}
