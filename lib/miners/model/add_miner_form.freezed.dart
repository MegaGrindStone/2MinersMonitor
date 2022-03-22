// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_miner_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddMinerFormTearOff {
  const _$AddMinerFormTearOff();

  _AddMinerForm call(
      {required RepositoryIndexInput repositoryIndexInput,
      required WalletIDInput walletIDInput}) {
    return _AddMinerForm(
      repositoryIndexInput: repositoryIndexInput,
      walletIDInput: walletIDInput,
    );
  }
}

/// @nodoc
const $AddMinerForm = _$AddMinerFormTearOff();

/// @nodoc
mixin _$AddMinerForm {
  RepositoryIndexInput get repositoryIndexInput =>
      throw _privateConstructorUsedError;
  WalletIDInput get walletIDInput => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddMinerFormCopyWith<AddMinerForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMinerFormCopyWith<$Res> {
  factory $AddMinerFormCopyWith(
          AddMinerForm value, $Res Function(AddMinerForm) then) =
      _$AddMinerFormCopyWithImpl<$Res>;
  $Res call(
      {RepositoryIndexInput repositoryIndexInput, WalletIDInput walletIDInput});
}

/// @nodoc
class _$AddMinerFormCopyWithImpl<$Res> implements $AddMinerFormCopyWith<$Res> {
  _$AddMinerFormCopyWithImpl(this._value, this._then);

  final AddMinerForm _value;
  // ignore: unused_field
  final $Res Function(AddMinerForm) _then;

  @override
  $Res call({
    Object? repositoryIndexInput = freezed,
    Object? walletIDInput = freezed,
  }) {
    return _then(_value.copyWith(
      repositoryIndexInput: repositoryIndexInput == freezed
          ? _value.repositoryIndexInput
          : repositoryIndexInput // ignore: cast_nullable_to_non_nullable
              as RepositoryIndexInput,
      walletIDInput: walletIDInput == freezed
          ? _value.walletIDInput
          : walletIDInput // ignore: cast_nullable_to_non_nullable
              as WalletIDInput,
    ));
  }
}

/// @nodoc
abstract class _$AddMinerFormCopyWith<$Res>
    implements $AddMinerFormCopyWith<$Res> {
  factory _$AddMinerFormCopyWith(
          _AddMinerForm value, $Res Function(_AddMinerForm) then) =
      __$AddMinerFormCopyWithImpl<$Res>;
  @override
  $Res call(
      {RepositoryIndexInput repositoryIndexInput, WalletIDInput walletIDInput});
}

/// @nodoc
class __$AddMinerFormCopyWithImpl<$Res> extends _$AddMinerFormCopyWithImpl<$Res>
    implements _$AddMinerFormCopyWith<$Res> {
  __$AddMinerFormCopyWithImpl(
      _AddMinerForm _value, $Res Function(_AddMinerForm) _then)
      : super(_value, (v) => _then(v as _AddMinerForm));

  @override
  _AddMinerForm get _value => super._value as _AddMinerForm;

  @override
  $Res call({
    Object? repositoryIndexInput = freezed,
    Object? walletIDInput = freezed,
  }) {
    return _then(_AddMinerForm(
      repositoryIndexInput: repositoryIndexInput == freezed
          ? _value.repositoryIndexInput
          : repositoryIndexInput // ignore: cast_nullable_to_non_nullable
              as RepositoryIndexInput,
      walletIDInput: walletIDInput == freezed
          ? _value.walletIDInput
          : walletIDInput // ignore: cast_nullable_to_non_nullable
              as WalletIDInput,
    ));
  }
}

/// @nodoc

class _$_AddMinerForm extends _AddMinerForm {
  const _$_AddMinerForm(
      {required this.repositoryIndexInput, required this.walletIDInput})
      : super._();

  @override
  final RepositoryIndexInput repositoryIndexInput;
  @override
  final WalletIDInput walletIDInput;

  @override
  String toString() {
    return 'AddMinerForm(repositoryIndexInput: $repositoryIndexInput, walletIDInput: $walletIDInput)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddMinerForm &&
            const DeepCollectionEquality()
                .equals(other.repositoryIndexInput, repositoryIndexInput) &&
            const DeepCollectionEquality()
                .equals(other.walletIDInput, walletIDInput));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(repositoryIndexInput),
      const DeepCollectionEquality().hash(walletIDInput));

  @JsonKey(ignore: true)
  @override
  _$AddMinerFormCopyWith<_AddMinerForm> get copyWith =>
      __$AddMinerFormCopyWithImpl<_AddMinerForm>(this, _$identity);
}

abstract class _AddMinerForm extends AddMinerForm {
  const factory _AddMinerForm(
      {required RepositoryIndexInput repositoryIndexInput,
      required WalletIDInput walletIDInput}) = _$_AddMinerForm;
  const _AddMinerForm._() : super._();

  @override
  RepositoryIndexInput get repositoryIndexInput;
  @override
  WalletIDInput get walletIDInput;
  @override
  @JsonKey(ignore: true)
  _$AddMinerFormCopyWith<_AddMinerForm> get copyWith =>
      throw _privateConstructorUsedError;
}
