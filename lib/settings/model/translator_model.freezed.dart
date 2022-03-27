// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'translator_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TranslatorModelTearOff {
  const _$TranslatorModelTearOff();

  _TranslatorModel call({String? name, String? clickURL}) {
    return _TranslatorModel(
      name: name,
      clickURL: clickURL,
    );
  }
}

/// @nodoc
const $TranslatorModel = _$TranslatorModelTearOff();

/// @nodoc
mixin _$TranslatorModel {
  String? get name => throw _privateConstructorUsedError;
  String? get clickURL => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TranslatorModelCopyWith<TranslatorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslatorModelCopyWith<$Res> {
  factory $TranslatorModelCopyWith(
          TranslatorModel value, $Res Function(TranslatorModel) then) =
      _$TranslatorModelCopyWithImpl<$Res>;
  $Res call({String? name, String? clickURL});
}

/// @nodoc
class _$TranslatorModelCopyWithImpl<$Res>
    implements $TranslatorModelCopyWith<$Res> {
  _$TranslatorModelCopyWithImpl(this._value, this._then);

  final TranslatorModel _value;
  // ignore: unused_field
  final $Res Function(TranslatorModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? clickURL = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      clickURL: clickURL == freezed
          ? _value.clickURL
          : clickURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TranslatorModelCopyWith<$Res>
    implements $TranslatorModelCopyWith<$Res> {
  factory _$TranslatorModelCopyWith(
          _TranslatorModel value, $Res Function(_TranslatorModel) then) =
      __$TranslatorModelCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? clickURL});
}

/// @nodoc
class __$TranslatorModelCopyWithImpl<$Res>
    extends _$TranslatorModelCopyWithImpl<$Res>
    implements _$TranslatorModelCopyWith<$Res> {
  __$TranslatorModelCopyWithImpl(
      _TranslatorModel _value, $Res Function(_TranslatorModel) _then)
      : super(_value, (v) => _then(v as _TranslatorModel));

  @override
  _TranslatorModel get _value => super._value as _TranslatorModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? clickURL = freezed,
  }) {
    return _then(_TranslatorModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      clickURL: clickURL == freezed
          ? _value.clickURL
          : clickURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TranslatorModel implements _TranslatorModel {
  const _$_TranslatorModel({this.name, this.clickURL});

  @override
  final String? name;
  @override
  final String? clickURL;

  @override
  String toString() {
    return 'TranslatorModel(name: $name, clickURL: $clickURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TranslatorModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.clickURL, clickURL));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(clickURL));

  @JsonKey(ignore: true)
  @override
  _$TranslatorModelCopyWith<_TranslatorModel> get copyWith =>
      __$TranslatorModelCopyWithImpl<_TranslatorModel>(this, _$identity);
}

abstract class _TranslatorModel implements TranslatorModel {
  const factory _TranslatorModel({String? name, String? clickURL}) =
      _$_TranslatorModel;

  @override
  String? get name;
  @override
  String? get clickURL;
  @override
  @JsonKey(ignore: true)
  _$TranslatorModelCopyWith<_TranslatorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
