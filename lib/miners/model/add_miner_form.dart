import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:two_miners_api/two_miners_api.dart';
import 'package:two_miners_monitor_oss/l10n/l10n.dart';

part 'add_miner_form.freezed.dart';

enum AddMinerValidationError { repositoryIndexNotSelected, walletIDEmpty }

class RepositoryIndexInput
    extends FormzInput<RepositoryIndex, AddMinerValidationError> {
  const RepositoryIndexInput.pure() : super.pure(RepositoryIndex.initial);

  const RepositoryIndexInput.dirty([
    RepositoryIndex value = RepositoryIndex.eth,
  ]) : super.dirty(value);

  @override
  AddMinerValidationError? validator(RepositoryIndex value) {
    return value == RepositoryIndex.initial
        ? AddMinerValidationError.repositoryIndexNotSelected
        : null;
  }
}

class WalletIDInput extends FormzInput<String, AddMinerValidationError> {
  const WalletIDInput.pure() : super.pure('');

  const WalletIDInput.dirty([String value = '']) : super.dirty(value);

  @override
  AddMinerValidationError? validator(String value) {
    return value.isEmpty ? AddMinerValidationError.walletIDEmpty : null;
  }
}

@freezed
class AddMinerForm with FormzMixin, _$AddMinerForm {
  const factory AddMinerForm({
    required RepositoryIndexInput repositoryIndexInput,
    required WalletIDInput walletIDInput,
  }) = _AddMinerForm;
  const AddMinerForm._();

  @override
  List<FormzInput> get inputs => [repositoryIndexInput, walletIDInput];
}

String? parseValidationError(
  BuildContext context,
  AddMinerValidationError? error,
) {
  if (error != null) {
    switch (error) {
      case AddMinerValidationError.repositoryIndexNotSelected:
        return context.l10n.addMinerCoinNotSelectedError;
      case AddMinerValidationError.walletIDEmpty:
        return context.l10n.addMinerEmptyAddressError;
    }
  }
  return null;
}
