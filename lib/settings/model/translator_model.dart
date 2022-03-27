import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'translator_model.freezed.dart';

@freezed
class TranslatorModel with _$TranslatorModel {
  const factory TranslatorModel({
    String? name,
    String? clickURL,
  }) = _TranslatorModel;
}

final translators = <Locale, List<TranslatorModel>>{
  const Locale('id'): <TranslatorModel>[
    const TranslatorModel(
      name: 'MegaGrindStone',
      clickURL: 'https://twitter.com/megagrindstone',
    ),
  ],
  const Locale('pt', 'BR'): <TranslatorModel>[
    const TranslatorModel(
      name: 'Wellington',
      clickURL: 'https://localazy.com/u/wellington',
    )
  ],
};
