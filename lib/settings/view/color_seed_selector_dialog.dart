import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_miners_monitor_oss/l10n/l10n.dart';
import 'package:two_miners_monitor_oss/settings/bloc/settings_bloc.dart';

class ColorSeedSelectorDialog extends StatelessWidget {
  const ColorSeedSelectorDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsBloc, SettingsState>(
      listener: (context, state) {
        // state.whenOrNull(
        //   saveSettingSuccess: (_) => context.popBeamLocation(),
        // );
      },
      child: const ColorSeedSelectorView(),
    );
  }
}

class ColorSeedSelectorView extends StatelessWidget {
  const ColorSeedSelectorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        context.l10n.colorSeedSelectorTitle,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
      content: const ColorSeedSelectorPicker(),
      // actions: const [ColorSeedSelectorSaveButton()],
    );
  }
}

class ColorSeedSelectorPicker extends StatelessWidget {
  const ColorSeedSelectorPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return ColorPicker(
          color: state.settings.colorSeed,
          pickersEnabled: const <ColorPickerType, bool>{
            ColorPickerType.accent: false,
            ColorPickerType.wheel: true,
            ColorPickerType.custom: true,
          },
          onColorChanged: (color) => context
              .read<SettingsBloc>()
              .add(SettingsEvent.colorSeedChanged(colorSeed: color)),
        );
      },
    );
  }
}

class ColorSeedSelectorSaveButton extends StatelessWidget {
  const ColorSeedSelectorSaveButton({Key? key}) : super(key: key);

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
