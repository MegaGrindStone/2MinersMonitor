import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:two_miners_monitor_oss/l10n/l10n.dart';
import 'package:two_miners_monitor_oss/settings/model/settings_model.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends HydratedBloc<SettingsEvent, SettingsState> {
  SettingsBloc()
      : super(
          _Initial(
            settings: SettingsModel(
              locale: _selectLocale(),
              colorSeed: const Color.fromARGB(255, 255, 85, 0),
              themeMode: ThemeMode.system,
            ),
          ),
        ) {
    on<_LocaleChanged>(_onLocaleChanged);
    on<_ColorSeedChanged>(_onColorSeedChanged);
    on<_ThemeModeChanged>(_onThemeModeChanged);
    on<_SettingsSaved>(_onSettingsSaved);
  }

  void _onLocaleChanged(_LocaleChanged event, Emitter<SettingsState> emit) {
    emit(
      _UpdateSettingSuccess(
        settings: state.settings.copyWith(locale: event.locale),
      ),
    );
  }

  void _onColorSeedChanged(
    _ColorSeedChanged event,
    Emitter<SettingsState> emit,
  ) {
    emit(
      _UpdateSettingSuccess(
        settings: state.settings.copyWith(colorSeed: event.colorSeed),
      ),
    );
  }

  void _onThemeModeChanged(
    _ThemeModeChanged event,
    Emitter<SettingsState> emit,
  ) {
    emit(
      _UpdateSettingSuccess(
        settings: state.settings.copyWith(themeMode: event.themeMode),
      ),
    );
  }

  void _onSettingsSaved(_SettingsSaved event, Emitter<SettingsState> emit) {
    emit(_SaveSettingSuccess(settings: state.settings));
  }

  @override
  SettingsState? fromJson(Map<String, dynamic> json) =>
      SettingsState.initial(settings: SettingsModel.fromJson(json));

  @override
  Map<String, dynamic>? toJson(SettingsState state) => state.whenOrNull(
        saveSettingSuccess: (settings) => settings.toJson(),
      );
}

Locale _selectLocale() {
  final platformLocale =
      kIsWeb ? const Locale('en') : Locale(Platform.localeName);
  final fallbackLocale = AppLocalizations.supportedLocales.firstWhere(
    (locale) =>
        locale.languageCode == platformLocale.languageCode.substring(0, 2),
    orElse: () => const Locale('en'),
  );
  return AppLocalizations.supportedLocales.firstWhere(
    (locale) => locale == platformLocale,
    orElse: () => fallbackLocale,
  );
}
