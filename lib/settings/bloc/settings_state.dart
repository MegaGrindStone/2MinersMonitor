part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial({
    required SettingsModel settings,
  }) = _Initial;

  const factory SettingsState.changeSettingSuccess({
    required SettingsModel settings,
  }) = _UpdateSettingSuccess;
  const factory SettingsState.saveSettingSuccess({
    required SettingsModel settings,
  }) = _SaveSettingSuccess;
}
