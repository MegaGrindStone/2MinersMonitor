// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:two_miners_api/two_miners_api.dart';
import 'package:two_miners_monitor_oss/app/bloc/stats_bloc.dart';
import 'package:two_miners_monitor_oss/app/model/start_ticker.dart';
import 'package:two_miners_monitor_oss/home/location/home_location.dart';
import 'package:two_miners_monitor_oss/l10n/l10n.dart';
import 'package:two_miners_monitor_oss/miners/bloc/miners_bloc.dart';
import 'package:two_miners_monitor_oss/settings/bloc/settings_bloc.dart';

enum AppFlavour {
  dev,
  stg,
  prod,
}

class App extends StatefulWidget {
  const App({Key? key, required this.flavour}) : super(key: key);

  final AppFlavour flavour;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final routerDelegate = BeamerDelegate(
    transitionDelegate: const NoAnimationTransitionDelegate(),
    locationBuilder: (routeInformation, _) => HomeLocation(routeInformation),
  );

  @override
  Widget build(BuildContext context) {
    return _AppView(flavour: widget.flavour, routerDelegate: routerDelegate);
  }
}

class _AppView extends StatelessWidget {
  _AppView({
    Key? key,
    required this.flavour,
    required this.routerDelegate,
  }) : super(key: key);

  final AppFlavour flavour;
  final BeamerDelegate routerDelegate;

  final Map<String, timeago.LookupMessages> timeagoMap = {
    'ar': timeago.ArMessages(),
    'de': timeago.DeMessages(),
    'en': timeago.EnMessages(),
    'es': timeago.EsMessages(),
    'fr': timeago.FrMessages(),
    'hu': timeago.HuMessages(),
    'id': timeago.IdMessages(),
    'it': timeago.ItMessages(),
    'ja': timeago.JaMessages(),
    'ko': timeago.KoMessages(),
    'pl': timeago.PlMessages(),
    'pt': timeago.PtBrMessages(),
    'pt_BR': timeago.PtBrMessages(),
    'ru': timeago.RuMessages(),
    'th': timeago.ThMessages(),
    'tr': timeago.TrMessages(),
    'uk': timeago.UkMessages(),
    'vi': timeago.ViMessages(),
    'zh': timeago.ZhCnMessages(),
  };

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => CoinRepositories(),
      child: Blocs(
        child: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            Intl.defaultLocale = state.settings.locale.toLanguageTag();
            timeago.setLocaleMessages(
              state.settings.locale.toLanguageTag(),
              timeagoMap[state.settings.locale.toLanguageTag()] ??
                  timeago.EnMessages(),
            );
            return MaterialApp.router(
              routeInformationParser: BeamerParser(),
              routerDelegate: routerDelegate,
              backButtonDispatcher: BeamerBackButtonDispatcher(
                delegate: routerDelegate,
              ),
              debugShowCheckedModeBanner: flavour == AppFlavour.dev,
              theme: ThemeData(
                useMaterial3: true,
                colorSchemeSeed: state.settings.colorSeed,
                brightness: Brightness.light,
                textTheme: GoogleFonts.carroisGothicTextTheme(
                  Theme.of(context).textTheme,
                ),
              ),
              darkTheme: ThemeData(
                useMaterial3: true,
                colorSchemeSeed: state.settings.colorSeed,
                brightness: Brightness.dark,
                textTheme: GoogleFonts.carroisGothicTextTheme(
                  Theme.of(context).textTheme,
                ),
              ),
              themeMode: state.settings.themeMode,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              locale: state.settings.locale,
              supportedLocales: AppLocalizations.supportedLocales,
            );
          },
        ),
      ),
    );
  }
}

class Blocs extends StatelessWidget {
  const Blocs({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SettingsBloc()),
        BlocProvider(
          create: (context) => MinersBloc(coinRepositories: context.read()),
        ),
        BlocProvider(
          create: (context) => StatsBloc(
            ticker: const StatTicker(),
          ),
        )
      ],
      child: BlocBuilder<MinersBloc, MinersState>(
        builder: (context, state) {
          state.whenOrNull(
            loadMinersSuccess: (miners) {
              context.read<StatsBloc>().add(StatsEvent.started(miners: miners));
            },
          );
          return child;
        },
      ),
    );
  }
}
