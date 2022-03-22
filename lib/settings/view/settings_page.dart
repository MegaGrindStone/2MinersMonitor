import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_miners_monitor_oss/l10n/l10n.dart';
import 'package:two_miners_monitor_oss/settings/bloc/settings_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SettingsView();
  }
}

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
          title: Text(context.l10n.settingsNavBarTitle),
          expandedHeight: kToolbarHeight,
          floating: true,
        ),
        const SettingsList(),
      ],
    );
  }
}

class SettingsList extends StatelessWidget {
  const SettingsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(const [
        SettingsLanguage(),
        SettingsColorSeed(),
        SettingsThemeMode(),
        SettingsAbout(),
      ]),
    );
  }
}

class SettingsLanguage extends StatelessWidget {
  const SettingsLanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return ListTile(
          onTap: () {
            context.beamToNamed('/settings/language');
          },
          leading: const Icon(Icons.language),
          title: Text(
            context.l10n.settingsLanguageLabel,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
          subtitle: Text(
            context.l10n.languageName,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
          trailing: const Icon(Icons.chevron_right),
        );
      },
    );
  }
}

class SettingsColorSeed extends StatelessWidget {
  const SettingsColorSeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return ListTile(
          onTap: () {
            context.beamToNamed('/settings/color-seed');
          },
          leading: const Icon(Icons.color_lens),
          title: Text(
            context.l10n.settingsColorSeedLabel,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
          subtitle: Container(
            width: 15,
            height: 15,
            color: state.settings.colorSeed,
          ),
          trailing: const Icon(Icons.chevron_right),
        );
      },
    );
  }
}

class SettingsThemeMode extends StatelessWidget {
  const SettingsThemeMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return ListTile(
          onTap: () {
            context.beamToNamed('/settings/theme-mode');
          },
          leading: const Icon(Icons.brightness_2_outlined),
          title: Text(
            context.l10n.settingsThemeModeLabel,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
          subtitle: Text(
            state.settings.themeMode.name,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
          trailing: const Icon(Icons.chevron_right),
        );
      },
    );
  }
}

class SettingsAbout extends StatelessWidget {
  const SettingsAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        context.beamToNamed('/settings/about');
      },
      leading: const Icon(Icons.info),
      title: Text(
        context.l10n.settingsAboutLabel,
        style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
      ),
      trailing: const Icon(Icons.chevron_right),
    );
  }
}
