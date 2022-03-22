// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_nav.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeNavTearOff {
  const _$HomeNavTearOff();

  _HomeNav call(
      {required String label, required Widget icon, required String uri}) {
    return _HomeNav(
      label: label,
      icon: icon,
      uri: uri,
    );
  }
}

/// @nodoc
const $HomeNav = _$HomeNavTearOff();

/// @nodoc
mixin _$HomeNav {
  String get label => throw _privateConstructorUsedError;
  Widget get icon => throw _privateConstructorUsedError;
  String get uri => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeNavCopyWith<HomeNav> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeNavCopyWith<$Res> {
  factory $HomeNavCopyWith(HomeNav value, $Res Function(HomeNav) then) =
      _$HomeNavCopyWithImpl<$Res>;
  $Res call({String label, Widget icon, String uri});
}

/// @nodoc
class _$HomeNavCopyWithImpl<$Res> implements $HomeNavCopyWith<$Res> {
  _$HomeNavCopyWithImpl(this._value, this._then);

  final HomeNav _value;
  // ignore: unused_field
  final $Res Function(HomeNav) _then;

  @override
  $Res call({
    Object? label = freezed,
    Object? icon = freezed,
    Object? uri = freezed,
  }) {
    return _then(_value.copyWith(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget,
      uri: uri == freezed
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$HomeNavCopyWith<$Res> implements $HomeNavCopyWith<$Res> {
  factory _$HomeNavCopyWith(_HomeNav value, $Res Function(_HomeNav) then) =
      __$HomeNavCopyWithImpl<$Res>;
  @override
  $Res call({String label, Widget icon, String uri});
}

/// @nodoc
class __$HomeNavCopyWithImpl<$Res> extends _$HomeNavCopyWithImpl<$Res>
    implements _$HomeNavCopyWith<$Res> {
  __$HomeNavCopyWithImpl(_HomeNav _value, $Res Function(_HomeNav) _then)
      : super(_value, (v) => _then(v as _HomeNav));

  @override
  _HomeNav get _value => super._value as _HomeNav;

  @override
  $Res call({
    Object? label = freezed,
    Object? icon = freezed,
    Object? uri = freezed,
  }) {
    return _then(_HomeNav(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget,
      uri: uri == freezed
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HomeNav implements _HomeNav {
  const _$_HomeNav(
      {required this.label, required this.icon, required this.uri});

  @override
  final String label;
  @override
  final Widget icon;
  @override
  final String uri;

  @override
  String toString() {
    return 'HomeNav(label: $label, icon: $icon, uri: $uri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeNav &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.uri, uri));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(uri));

  @JsonKey(ignore: true)
  @override
  _$HomeNavCopyWith<_HomeNav> get copyWith =>
      __$HomeNavCopyWithImpl<_HomeNav>(this, _$identity);
}

abstract class _HomeNav implements HomeNav {
  const factory _HomeNav(
      {required String label,
      required Widget icon,
      required String uri}) = _$_HomeNav;

  @override
  String get label;
  @override
  Widget get icon;
  @override
  String get uri;
  @override
  @JsonKey(ignore: true)
  _$HomeNavCopyWith<_HomeNav> get copyWith =>
      throw _privateConstructorUsedError;
}
