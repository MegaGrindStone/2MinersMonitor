part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.localeChanged({
    required Locale locale,
  }) = _LocaleChanged;
  const factory SettingsEvent.colorSeedChanged({
    required Color colorSeed,
  }) = _ColorSeedChanged;
  const factory SettingsEvent.themeModeChanged({
    required ThemeMode themeMode,
  }) = _ThemeModeChanged;

  const factory SettingsEvent.settingsSaved() = _SettingsSaved;
}
