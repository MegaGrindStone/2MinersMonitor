import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_model.freezed.dart';
part 'settings_model.g.dart';

@freezed
class SettingsModel with _$SettingsModel {
  const factory SettingsModel({
    @JsonKey(
      fromJson: localeFromString,
      toJson: localeToString,
    )
        required Locale locale,
    @JsonKey(
      fromJson: colorFromInt,
      toJson: colorToInt,
    )
        required Color colorSeed,
    required ThemeMode themeMode,
  }) = _SettingsModel;

  factory SettingsModel.fromJson(Map<String, dynamic> json) =>
      _$SettingsModelFromJson(json);
}

Locale localeFromString(String languageCode) {
  return Locale(languageCode);
}

String localeToString(Locale locale) {
  return locale.languageCode;
}

Color colorFromInt(int color) {
  return Color(color);
}

int colorToInt(Color color) {
  return color.value;
}
