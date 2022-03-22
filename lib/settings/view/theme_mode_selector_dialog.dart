import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_miners_monitor_oss/l10n/l10n.dart';
import 'package:two_miners_monitor_oss/settings/bloc/settings_bloc.dart';

class ThemeModeSelectorDialog extends StatelessWidget {
  const ThemeModeSelectorDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsBloc, SettingsState>(
      listener: (context, state) {
        state.whenOrNull(
          saveSettingSuccess: (_) => context.popToNamed('/settings'),
        );
      },
      child: const ThemeModeSelectorView(),
    );
  }
}

class ThemeModeSelectorView extends StatelessWidget {
  const ThemeModeSelectorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        context.l10n.themeModeSelectorTitle,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
      content: const ThemeModeSelectorDropdown(),
      actions: const [ThemeModeSelectorSaveButton()],
    );
  }
}

class ThemeModeSelectorDropdown extends StatelessWidget {
  const ThemeModeSelectorDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return DropdownButton<ThemeMode>(
          value: state.settings.themeMode,
          items: ThemeMode.values.map(
            (themeMode) {
              return DropdownMenuItem<ThemeMode>(
                value: themeMode,
                child: Text(
                  themeMode.name,
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
                    SettingsEvent.themeModeChanged(themeMode: val),
                  );
            }
          },
        );
      },
    );
  }
}

class ThemeModeSelectorSaveButton extends StatelessWidget {
  const ThemeModeSelectorSaveButton({Key? key}) : super(key: key);

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
