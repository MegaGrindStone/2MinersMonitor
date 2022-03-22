// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exception_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExceptionModelTearOff {
  const _$ExceptionModelTearOff();

  _ExceptionModel call({required int httpStatusCode, required String message}) {
    return _ExceptionModel(
      httpStatusCode: httpStatusCode,
      message: message,
    );
  }
}

/// @nodoc
const $ExceptionModel = _$ExceptionModelTearOff();

/// @nodoc
mixin _$ExceptionModel {
  int get httpStatusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExceptionModelCopyWith<ExceptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExceptionModelCopyWith<$Res> {
  factory $ExceptionModelCopyWith(
          ExceptionModel value, $Res Function(ExceptionModel) then) =
      _$ExceptionModelCopyWithImpl<$Res>;
  $Res call({int httpStatusCode, String message});
}

/// @nodoc
class _$ExceptionModelCopyWithImpl<$Res>
    implements $ExceptionModelCopyWith<$Res> {
  _$ExceptionModelCopyWithImpl(this._value, this._then);

  final ExceptionModel _value;
  // ignore: unused_field
  final $Res Function(ExceptionModel) _then;

  @override
  $Res call({
    Object? httpStatusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      httpStatusCode: httpStatusCode == freezed
          ? _value.httpStatusCode
          : httpStatusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ExceptionModelCopyWith<$Res>
    implements $ExceptionModelCopyWith<$Res> {
  factory _$ExceptionModelCopyWith(
          _ExceptionModel value, $Res Function(_ExceptionModel) then) =
      __$ExceptionModelCopyWithImpl<$Res>;
  @override
  $Res call({int httpStatusCode, String message});
}

/// @nodoc
class __$ExceptionModelCopyWithImpl<$Res>
    extends _$ExceptionModelCopyWithImpl<$Res>
    implements _$ExceptionModelCopyWith<$Res> {
  __$ExceptionModelCopyWithImpl(
      _ExceptionModel _value, $Res Function(_ExceptionModel) _then)
      : super(_value, (v) => _then(v as _ExceptionModel));

  @override
  _ExceptionModel get _value => super._value as _ExceptionModel;

  @override
  $Res call({
    Object? httpStatusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_ExceptionModel(
      httpStatusCode: httpStatusCode == freezed
          ? _value.httpStatusCode
          : httpStatusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ExceptionModel extends _ExceptionModel {
  const _$_ExceptionModel({required this.httpStatusCode, required this.message})
      : super._();

  @override
  final int httpStatusCode;
  @override
  final String message;

  @override
  String toString() {
    return 'ExceptionModel(httpStatusCode: $httpStatusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExceptionModel &&
            const DeepCollectionEquality()
                .equals(other.httpStatusCode, httpStatusCode) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(httpStatusCode),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ExceptionModelCopyWith<_ExceptionModel> get copyWith =>
      __$ExceptionModelCopyWithImpl<_ExceptionModel>(this, _$identity);
}

abstract class _ExceptionModel extends ExceptionModel {
  const factory _ExceptionModel(
      {required int httpStatusCode,
      required String message}) = _$_ExceptionModel;
  const _ExceptionModel._() : super._();

  @override
  int get httpStatusCode;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$ExceptionModelCopyWith<_ExceptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
