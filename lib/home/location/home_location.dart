import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_miners_api/two_miners_api.dart';
import 'package:two_miners_monitor_oss/home/view/home_page.dart';
import 'package:two_miners_monitor_oss/miners/view/add_miner_page.dart';
import 'package:two_miners_monitor_oss/miners/view/miner_info_page.dart';
import 'package:two_miners_monitor_oss/miners/view/miners_page.dart';
import 'package:two_miners_monitor_oss/payouts/view/payouts_page.dart';
import 'package:two_miners_monitor_oss/rewards/view/rewards_page.dart';
import 'package:two_miners_monitor_oss/settings/bloc/settings_bloc.dart';
import 'package:two_miners_monitor_oss/settings/view/about_page.dart';
import 'package:two_miners_monitor_oss/settings/view/color_seed_selector_dialog.dart';
import 'package:two_miners_monitor_oss/settings/view/language_selector_dialog.dart';
import 'package:two_miners_monitor_oss/settings/view/oss_license_page.dart';
import 'package:two_miners_monitor_oss/settings/view/settings_page.dart';
import 'package:two_miners_monitor_oss/settings/view/theme_mode_selector_dialog.dart';
import 'package:two_miners_monitor_oss/workers/view/workers_page.dart';

class HomeLocation extends BeamLocation<BeamState> {
  HomeLocation(RouteInformation routeInformation) : super(routeInformation);

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return <BeamPage>[
      BeamPage(
        key: const ValueKey<String>('home'),
        type: BeamPageType.noTransition,
        child: BlocBuilder<SettingsBloc, SettingsState>(
          // Build each time settings changed.
          builder: (context, state) {
            return HomePage(key: ValueKey<String>(state.settings.toString()));
          },
        ),
      ),
    ];
  }

  @override
  List<Pattern> get pathPatterns => ['/*'];
}

// One location to rule them all! Already tried with multiple location,
// and its fail miserably :(.
class HomeContentsLocation extends BeamLocation<BeamState> {
  HomeContentsLocation(RouteInformation routeInformation)
      : super(routeInformation);

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    final pages = <BeamPage>[
      const BeamPage(
        key: ValueKey<String>('miners'),
        type: BeamPageType.fadeTransition,
        child: MinersPage(),
      ),
      if (state.pathPatternSegments.contains('workers'))
        const BeamPage(
          key: ValueKey<String>('workers'),
          type: BeamPageType.fadeTransition,
          child: WorkersPage(),
        ),
      if (state.pathPatternSegments.contains('rewards'))
        const BeamPage(
          key: ValueKey<String>('rewards'),
          type: BeamPageType.fadeTransition,
          child: RewardsPage(),
        ),
      if (state.pathPatternSegments.contains('payouts'))
        const BeamPage(
          key: ValueKey<String>('payouts'),
          type: BeamPageType.fadeTransition,
          child: PayoutsPage(),
        ),
      if (state.pathPatternSegments.contains('settings'))
        const BeamPage(
          key: ValueKey<String>('settings'),
          type: BeamPageType.fadeTransition,
          child: SettingsPage(),
        ),
    ];

    if (state.pathPatternSegments.contains('miners')) {
      if (state.pathPatternSegments.contains('add')) {
        pages.add(
          const BeamPage(
            key: ValueKey<String>('add-miner'),
            type: BeamPageType.scaleTransition,
            child: AddMinerPage(),
          ),
        );
      }
      if ((state.pathPatternSegments.contains('detail')) &&
          (state.queryParameters.containsKey('repositoryIndex')) &&
          (state.queryParameters.containsKey('walletID'))) {
        final repositoryIndex = RepositoryIndex.values.firstWhere(
          (element) => state.queryParameters['repositoryIndex'] == element.name,
          orElse: () => RepositoryIndex.eth,
        );
        final walletID = state.queryParameters['walletID'];

        pages.add(
          BeamPage(
            key: ValueKey<String>('miners$repositoryIndex$walletID'),
            type: BeamPageType.slideRightTransition,
            child: MinerInfoPage(
              repositoryIndex: repositoryIndex,
              walletID: walletID ?? '',
            ),
          ),
        );
      }
    }

    if (state.pathPatternSegments.contains('settings')) {
      pages.addAll([
        if (state.pathPatternSegments.contains('language'))
          BeamPage(
            key: const ValueKey('settings-lang'),
            routeBuilder: (context, settings, child) => DialogRoute<void>(
              context: context,
              builder: (context) => child,
              settings: settings,
            ),
            child: const LanguageSelectorDialog(),
          ),
        if (state.pathPatternSegments.contains('color-seed'))
          BeamPage(
            key: const ValueKey('settings-color-seed'),
            routeBuilder: (context, settings, child) => DialogRoute<void>(
              context: context,
              builder: (context) => child,
              settings: settings,
            ),
            child: const ColorSeedSelectorDialog(),
          ),
        if (state.pathPatternSegments.contains('theme-mode'))
          BeamPage(
            key: const ValueKey('settings-theme-mode'),
            routeBuilder: (context, settings, child) => DialogRoute<void>(
              context: context,
              builder: (context) => child,
              settings: settings,
            ),
            child: const ThemeModeSelectorDialog(),
          ),
        if (state.pathPatternSegments.contains('about'))
          const BeamPage(
            key: ValueKey<String>('about'),
            type: BeamPageType.slideRightTransition,
            child: AboutPage(),
          ),
        if (state.pathPatternSegments.contains('oss-license'))
          const BeamPage(
            key: ValueKey<String>('oss-license'),
            type: BeamPageType.slideRightTransition,
            child: OSSLicensesPage(),
          ),
      ]);
    }

    return pages;
  }

  @override
  List<Pattern> get pathPatterns =>
      ['/miners/*', '/workers/*', '/rewards/*', '/payouts/*', '/settings/*'];
}
