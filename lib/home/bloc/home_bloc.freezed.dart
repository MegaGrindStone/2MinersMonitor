// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  _NavSelected navSelected({required String uri}) {
    return _NavSelected(
      uri: uri,
    );
  }

  _NavTapped navTapped({required String uri}) {
    return _NavTapped(
      uri: uri,
    );
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  String get uri => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uri) navSelected,
    required TResult Function(String uri) navTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String uri)? navSelected,
    TResult Function(String uri)? navTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uri)? navSelected,
    TResult Function(String uri)? navTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavSelected value) navSelected,
    required TResult Function(_NavTapped value) navTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NavSelected value)? navSelected,
    TResult Function(_NavTapped value)? navTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavSelected value)? navSelected,
    TResult Function(_NavTapped value)? navTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
  $Res call({String uri});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;

  @override
  $Res call({
    Object? uri = freezed,
  }) {
    return _then(_value.copyWith(
      uri: uri == freezed
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NavSelectedCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$NavSelectedCopyWith(
          _NavSelected value, $Res Function(_NavSelected) then) =
      __$NavSelectedCopyWithImpl<$Res>;
  @override
  $Res call({String uri});
}

/// @nodoc
class __$NavSelectedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$NavSelectedCopyWith<$Res> {
  __$NavSelectedCopyWithImpl(
      _NavSelected _value, $Res Function(_NavSelected) _then)
      : super(_value, (v) => _then(v as _NavSelected));

  @override
  _NavSelected get _value => super._value as _NavSelected;

  @override
  $Res call({
    Object? uri = freezed,
  }) {
    return _then(_NavSelected(
      uri: uri == freezed
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NavSelected implements _NavSelected {
  const _$_NavSelected({required this.uri});

  @override
  final String uri;

  @override
  String toString() {
    return 'HomeEvent.navSelected(uri: $uri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NavSelected &&
            const DeepCollectionEquality().equals(other.uri, uri));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uri));

  @JsonKey(ignore: true)
  @override
  _$NavSelectedCopyWith<_NavSelected> get copyWith =>
      __$NavSelectedCopyWithImpl<_NavSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uri) navSelected,
    required TResult Function(String uri) navTapped,
  }) {
    return navSelected(uri);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String uri)? navSelected,
    TResult Function(String uri)? navTapped,
  }) {
    return navSelected?.call(uri);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uri)? navSelected,
    TResult Function(String uri)? navTapped,
    required TResult orElse(),
  }) {
    if (navSelected != null) {
      return navSelected(uri);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavSelected value) navSelected,
    required TResult Function(_NavTapped value) navTapped,
  }) {
    return navSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NavSelected value)? navSelected,
    TResult Function(_NavTapped value)? navTapped,
  }) {
    return navSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavSelected value)? navSelected,
    TResult Function(_NavTapped value)? navTapped,
    required TResult orElse(),
  }) {
    if (navSelected != null) {
      return navSelected(this);
    }
    return orElse();
  }
}

abstract class _NavSelected implements HomeEvent {
  const factory _NavSelected({required String uri}) = _$_NavSelected;

  @override
  String get uri;
  @override
  @JsonKey(ignore: true)
  _$NavSelectedCopyWith<_NavSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NavTappedCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$NavTappedCopyWith(
          _NavTapped value, $Res Function(_NavTapped) then) =
      __$NavTappedCopyWithImpl<$Res>;
  @override
  $Res call({String uri});
}

/// @nodoc
class __$NavTappedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$NavTappedCopyWith<$Res> {
  __$NavTappedCopyWithImpl(_NavTapped _value, $Res Function(_NavTapped) _then)
      : super(_value, (v) => _then(v as _NavTapped));

  @override
  _NavTapped get _value => super._value as _NavTapped;

  @override
  $Res call({
    Object? uri = freezed,
  }) {
    return _then(_NavTapped(
      uri: uri == freezed
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NavTapped implements _NavTapped {
  const _$_NavTapped({required this.uri});

  @override
  final String uri;

  @override
  String toString() {
    return 'HomeEvent.navTapped(uri: $uri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NavTapped &&
            const DeepCollectionEquality().equals(other.uri, uri));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uri));

  @JsonKey(ignore: true)
  @override
  _$NavTappedCopyWith<_NavTapped> get copyWith =>
      __$NavTappedCopyWithImpl<_NavTapped>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uri) navSelected,
    required TResult Function(String uri) navTapped,
  }) {
    return navTapped(uri);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String uri)? navSelected,
    TResult Function(String uri)? navTapped,
  }) {
    return navTapped?.call(uri);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uri)? navSelected,
    TResult Function(String uri)? navTapped,
    required TResult orElse(),
  }) {
    if (navTapped != null) {
      return navTapped(uri);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavSelected value) navSelected,
    required TResult Function(_NavTapped value) navTapped,
  }) {
    return navTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NavSelected value)? navSelected,
    TResult Function(_NavTapped value)? navTapped,
  }) {
    return navTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavSelected value)? navSelected,
    TResult Function(_NavTapped value)? navTapped,
    required TResult orElse(),
  }) {
    if (navTapped != null) {
      return navTapped(this);
    }
    return orElse();
  }
}

abstract class _NavTapped implements HomeEvent {
  const factory _NavTapped({required String uri}) = _$_NavTapped;

  @override
  String get uri;
  @override
  @JsonKey(ignore: true)
  _$NavTappedCopyWith<_NavTapped> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _Initial initial({required List<HomeNav> navs, required int navIndex}) {
    return _Initial(
      navs: navs,
      navIndex: navIndex,
    );
  }

  _SelectNavSuccess selectNavSuccess(
      {required List<HomeNav> navs, required int navIndex}) {
    return _SelectNavSuccess(
      navs: navs,
      navIndex: navIndex,
    );
  }

  _TapNavSuccess tapNavSuccess(
      {required List<HomeNav> navs, required int navIndex}) {
    return _TapNavSuccess(
      navs: navs,
      navIndex: navIndex,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  List<HomeNav> get navs => throw _privateConstructorUsedError;
  int get navIndex => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<HomeNav> navs, int navIndex) initial,
    required TResult Function(List<HomeNav> navs, int navIndex)
        selectNavSuccess,
    required TResult Function(List<HomeNav> navs, int navIndex) tapNavSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<HomeNav> navs, int navIndex)? initial,
    TResult Function(List<HomeNav> navs, int navIndex)? selectNavSuccess,
    TResult Function(List<HomeNav> navs, int navIndex)? tapNavSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<HomeNav> navs, int navIndex)? initial,
    TResult Function(List<HomeNav> navs, int navIndex)? selectNavSuccess,
    TResult Function(List<HomeNav> navs, int navIndex)? tapNavSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectNavSuccess value) selectNavSuccess,
    required TResult Function(_TapNavSuccess value) tapNavSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectNavSuccess value)? selectNavSuccess,
    TResult Function(_TapNavSuccess value)? tapNavSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectNavSuccess value)? selectNavSuccess,
    TResult Function(_TapNavSuccess value)? tapNavSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({List<HomeNav> navs, int navIndex});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? navs = freezed,
    Object? navIndex = freezed,
  }) {
    return _then(_value.copyWith(
      navs: navs == freezed
          ? _value.navs
          : navs // ignore: cast_nullable_to_non_nullable
              as List<HomeNav>,
      navIndex: navIndex == freezed
          ? _value.navIndex
          : navIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({List<HomeNav> navs, int navIndex});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? navs = freezed,
    Object? navIndex = freezed,
  }) {
    return _then(_Initial(
      navs: navs == freezed
          ? _value.navs
          : navs // ignore: cast_nullable_to_non_nullable
              as List<HomeNav>,
      navIndex: navIndex == freezed
          ? _value.navIndex
          : navIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.navs, required this.navIndex});

  @override
  final List<HomeNav> navs;
  @override
  final int navIndex;

  @override
  String toString() {
    return 'HomeState.initial(navs: $navs, navIndex: $navIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.navs, navs) &&
            const DeepCollectionEquality().equals(other.navIndex, navIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(navs),
      const DeepCollectionEquality().hash(navIndex));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<HomeNav> navs, int navIndex) initial,
    required TResult Function(List<HomeNav> navs, int navIndex)
        selectNavSuccess,
    required TResult Function(List<HomeNav> navs, int navIndex) tapNavSuccess,
  }) {
    return initial(navs, navIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<HomeNav> navs, int navIndex)? initial,
    TResult Function(List<HomeNav> navs, int navIndex)? selectNavSuccess,
    TResult Function(List<HomeNav> navs, int navIndex)? tapNavSuccess,
  }) {
    return initial?.call(navs, navIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<HomeNav> navs, int navIndex)? initial,
    TResult Function(List<HomeNav> navs, int navIndex)? selectNavSuccess,
    TResult Function(List<HomeNav> navs, int navIndex)? tapNavSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(navs, navIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectNavSuccess value) selectNavSuccess,
    required TResult Function(_TapNavSuccess value) tapNavSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectNavSuccess value)? selectNavSuccess,
    TResult Function(_TapNavSuccess value)? tapNavSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectNavSuccess value)? selectNavSuccess,
    TResult Function(_TapNavSuccess value)? tapNavSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial({required List<HomeNav> navs, required int navIndex}) =
      _$_Initial;

  @override
  List<HomeNav> get navs;
  @override
  int get navIndex;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SelectNavSuccessCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$SelectNavSuccessCopyWith(
          _SelectNavSuccess value, $Res Function(_SelectNavSuccess) then) =
      __$SelectNavSuccessCopyWithImpl<$Res>;
  @override
  $Res call({List<HomeNav> navs, int navIndex});
}

/// @nodoc
class __$SelectNavSuccessCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$SelectNavSuccessCopyWith<$Res> {
  __$SelectNavSuccessCopyWithImpl(
      _SelectNavSuccess _value, $Res Function(_SelectNavSuccess) _then)
      : super(_value, (v) => _then(v as _SelectNavSuccess));

  @override
  _SelectNavSuccess get _value => super._value as _SelectNavSuccess;

  @override
  $Res call({
    Object? navs = freezed,
    Object? navIndex = freezed,
  }) {
    return _then(_SelectNavSuccess(
      navs: navs == freezed
          ? _value.navs
          : navs // ignore: cast_nullable_to_non_nullable
              as List<HomeNav>,
      navIndex: navIndex == freezed
          ? _value.navIndex
          : navIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectNavSuccess implements _SelectNavSuccess {
  const _$_SelectNavSuccess({required this.navs, required this.navIndex});

  @override
  final List<HomeNav> navs;
  @override
  final int navIndex;

  @override
  String toString() {
    return 'HomeState.selectNavSuccess(navs: $navs, navIndex: $navIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SelectNavSuccess &&
            const DeepCollectionEquality().equals(other.navs, navs) &&
            const DeepCollectionEquality().equals(other.navIndex, navIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(navs),
      const DeepCollectionEquality().hash(navIndex));

  @JsonKey(ignore: true)
  @override
  _$SelectNavSuccessCopyWith<_SelectNavSuccess> get copyWith =>
      __$SelectNavSuccessCopyWithImpl<_SelectNavSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<HomeNav> navs, int navIndex) initial,
    required TResult Function(List<HomeNav> navs, int navIndex)
        selectNavSuccess,
    required TResult Function(List<HomeNav> navs, int navIndex) tapNavSuccess,
  }) {
    return selectNavSuccess(navs, navIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<HomeNav> navs, int navIndex)? initial,
    TResult Function(List<HomeNav> navs, int navIndex)? selectNavSuccess,
    TResult Function(List<HomeNav> navs, int navIndex)? tapNavSuccess,
  }) {
    return selectNavSuccess?.call(navs, navIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<HomeNav> navs, int navIndex)? initial,
    TResult Function(List<HomeNav> navs, int navIndex)? selectNavSuccess,
    TResult Function(List<HomeNav> navs, int navIndex)? tapNavSuccess,
    required TResult orElse(),
  }) {
    if (selectNavSuccess != null) {
      return selectNavSuccess(navs, navIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectNavSuccess value) selectNavSuccess,
    required TResult Function(_TapNavSuccess value) tapNavSuccess,
  }) {
    return selectNavSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectNavSuccess value)? selectNavSuccess,
    TResult Function(_TapNavSuccess value)? tapNavSuccess,
  }) {
    return selectNavSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectNavSuccess value)? selectNavSuccess,
    TResult Function(_TapNavSuccess value)? tapNavSuccess,
    required TResult orElse(),
  }) {
    if (selectNavSuccess != null) {
      return selectNavSuccess(this);
    }
    return orElse();
  }
}

abstract class _SelectNavSuccess implements HomeState {
  const factory _SelectNavSuccess(
      {required List<HomeNav> navs,
      required int navIndex}) = _$_SelectNavSuccess;

  @override
  List<HomeNav> get navs;
  @override
  int get navIndex;
  @override
  @JsonKey(ignore: true)
  _$SelectNavSuccessCopyWith<_SelectNavSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TapNavSuccessCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$TapNavSuccessCopyWith(
          _TapNavSuccess value, $Res Function(_TapNavSuccess) then) =
      __$TapNavSuccessCopyWithImpl<$Res>;
  @override
  $Res call({List<HomeNav> navs, int navIndex});
}

/// @nodoc
class __$TapNavSuccessCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$TapNavSuccessCopyWith<$Res> {
  __$TapNavSuccessCopyWithImpl(
      _TapNavSuccess _value, $Res Function(_TapNavSuccess) _then)
      : super(_value, (v) => _then(v as _TapNavSuccess));

  @override
  _TapNavSuccess get _value => super._value as _TapNavSuccess;

  @override
  $Res call({
    Object? navs = freezed,
    Object? navIndex = freezed,
  }) {
    return _then(_TapNavSuccess(
      navs: navs == freezed
          ? _value.navs
          : navs // ignore: cast_nullable_to_non_nullable
              as List<HomeNav>,
      navIndex: navIndex == freezed
          ? _value.navIndex
          : navIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TapNavSuccess implements _TapNavSuccess {
  const _$_TapNavSuccess({required this.navs, required this.navIndex});

  @override
  final List<HomeNav> navs;
  @override
  final int navIndex;

  @override
  String toString() {
    return 'HomeState.tapNavSuccess(navs: $navs, navIndex: $navIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TapNavSuccess &&
            const DeepCollectionEquality().equals(other.navs, navs) &&
            const DeepCollectionEquality().equals(other.navIndex, navIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(navs),
      const DeepCollectionEquality().hash(navIndex));

  @JsonKey(ignore: true)
  @override
  _$TapNavSuccessCopyWith<_TapNavSuccess> get copyWith =>
      __$TapNavSuccessCopyWithImpl<_TapNavSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<HomeNav> navs, int navIndex) initial,
    required TResult Function(List<HomeNav> navs, int navIndex)
        selectNavSuccess,
    required TResult Function(List<HomeNav> navs, int navIndex) tapNavSuccess,
  }) {
    return tapNavSuccess(navs, navIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<HomeNav> navs, int navIndex)? initial,
    TResult Function(List<HomeNav> navs, int navIndex)? selectNavSuccess,
    TResult Function(List<HomeNav> navs, int navIndex)? tapNavSuccess,
  }) {
    return tapNavSuccess?.call(navs, navIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<HomeNav> navs, int navIndex)? initial,
    TResult Function(List<HomeNav> navs, int navIndex)? selectNavSuccess,
    TResult Function(List<HomeNav> navs, int navIndex)? tapNavSuccess,
    required TResult orElse(),
  }) {
    if (tapNavSuccess != null) {
      return tapNavSuccess(navs, navIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectNavSuccess value) selectNavSuccess,
    required TResult Function(_TapNavSuccess value) tapNavSuccess,
  }) {
    return tapNavSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectNavSuccess value)? selectNavSuccess,
    TResult Function(_TapNavSuccess value)? tapNavSuccess,
  }) {
    return tapNavSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectNavSuccess value)? selectNavSuccess,
    TResult Function(_TapNavSuccess value)? tapNavSuccess,
    required TResult orElse(),
  }) {
    if (tapNavSuccess != null) {
      return tapNavSuccess(this);
    }
    return orElse();
  }
}

abstract class _TapNavSuccess implements HomeState {
  const factory _TapNavSuccess(
      {required List<HomeNav> navs, required int navIndex}) = _$_TapNavSuccess;

  @override
  List<HomeNav> get navs;
  @override
  int get navIndex;
  @override
  @JsonKey(ignore: true)
  _$TapNavSuccessCopyWith<_TapNavSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
