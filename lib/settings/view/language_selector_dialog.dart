import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_miners_monitor_oss/l10n/l10n.dart';
import 'package:two_miners_monitor_oss/settings/bloc/settings_bloc.dart';
import 'package:two_miners_monitor_oss/settings/model/settings_model.dart';

class LanguageSelectorDialog extends StatelessWidget {
  const LanguageSelectorDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsBloc, SettingsState>(
      listener: (context, state) {
        // state.whenOrNull(
        //   saveSettingSuccess: (_) => context.popBeamLocation(),
        // );
      },
      child: const LanguageSelectorView(),
    );
  }
}

class LanguageSelectorView extends StatelessWidget {
  const LanguageSelectorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        context.l10n.languageSelectorTitle,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
      content: const LanguageSelectorDropdown(),
      // actions: const [LanguageSelectorSaveButton()],
    );
  }
}

class LanguageSelectorDropdown extends StatelessWidget {
  const LanguageSelectorDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return FutureBuilder<List<AppLocalizations>>(
          future: _loadl10ns(),
          builder: (context, snapshots) {
            if (snapshots.connectionState == ConnectionState.done) {
              final l10ns = snapshots.data!;
              return DropdownButton<Locale>(
                value: state.settings.locale,
                items: l10ns.map(
                  (l10n) {
                    return DropdownMenuItem<Locale>(
                      value: localeFromString(l10n.localeName),
                      child: Text(
                        l10n.languageName,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                      ),
                    );
                  },
                ).toList(),
                onChanged: (val) {
                  if (val != null) {
                    context.read<SettingsBloc>().add(
                          SettingsEvent.localeChanged(locale: val),
                        );
                  }
                },
              );
            }
            return const SizedBox();
          },
        );
      },
    );
  }

  Future<List<AppLocalizations>> _loadl10ns() async {
    final l10ns = <AppLocalizations>[];
    for (final locale in AppLocalizations.supportedLocales) {
      final l10n = await AppLocalizations.delegate.load(locale);
      l10ns.add(l10n);
    }
    return l10ns;
  }
}

class LanguageSelectorSaveButton extends StatelessWidget {
  const LanguageSelectorSaveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<SettingsBloc>().add(const SettingsEvent.settingsSaved());
      },
      child: Text(context.l10n.saveButton),
    );
  }
}
