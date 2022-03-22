// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'workers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WorkersEventTearOff {
  const _$WorkersEventTearOff();

  _TabTapped tabTapped({required int tabIndex}) {
    return _TabTapped(
      tabIndex: tabIndex,
    );
  }
}

/// @nodoc
const $WorkersEvent = _$WorkersEventTearOff();

/// @nodoc
mixin _$WorkersEvent {
  int get tabIndex => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int tabIndex)? tabTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabTapped value) tabTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TabTapped value)? tabTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabTapped value)? tabTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkersEventCopyWith<WorkersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkersEventCopyWith<$Res> {
  factory $WorkersEventCopyWith(
          WorkersEvent value, $Res Function(WorkersEvent) then) =
      _$WorkersEventCopyWithImpl<$Res>;
  $Res call({int tabIndex});
}

/// @nodoc
class _$WorkersEventCopyWithImpl<$Res> implements $WorkersEventCopyWith<$Res> {
  _$WorkersEventCopyWithImpl(this._value, this._then);

  final WorkersEvent _value;
  // ignore: unused_field
  final $Res Function(WorkersEvent) _then;

  @override
  $Res call({
    Object? tabIndex = freezed,
  }) {
    return _then(_value.copyWith(
      tabIndex: tabIndex == freezed
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TabTappedCopyWith<$Res>
    implements $WorkersEventCopyWith<$Res> {
  factory _$TabTappedCopyWith(
          _TabTapped value, $Res Function(_TabTapped) then) =
      __$TabTappedCopyWithImpl<$Res>;
  @override
  $Res call({int tabIndex});
}

/// @nodoc
class __$TabTappedCopyWithImpl<$Res> extends _$WorkersEventCopyWithImpl<$Res>
    implements _$TabTappedCopyWith<$Res> {
  __$TabTappedCopyWithImpl(_TabTapped _value, $Res Function(_TabTapped) _then)
      : super(_value, (v) => _then(v as _TabTapped));

  @override
  _TabTapped get _value => super._value as _TabTapped;

  @override
  $Res call({
    Object? tabIndex = freezed,
  }) {
    return _then(_TabTapped(
      tabIndex: tabIndex == freezed
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TabTapped implements _TabTapped {
  const _$_TabTapped({required this.tabIndex});

  @override
  final int tabIndex;

  @override
  String toString() {
    return 'WorkersEvent.tabTapped(tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TabTapped &&
            const DeepCollectionEquality().equals(other.tabIndex, tabIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tabIndex));

  @JsonKey(ignore: true)
  @override
  _$TabTappedCopyWith<_TabTapped> get copyWith =>
      __$TabTappedCopyWithImpl<_TabTapped>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabTapped,
  }) {
    return tabTapped(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int tabIndex)? tabTapped,
  }) {
    return tabTapped?.call(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabTapped,
    required TResult orElse(),
  }) {
    if (tabTapped != null) {
      return tabTapped(tabIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabTapped value) tabTapped,
  }) {
    return tabTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TabTapped value)? tabTapped,
  }) {
    return tabTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabTapped value)? tabTapped,
    required TResult orElse(),
  }) {
    if (tabTapped != null) {
      return tabTapped(this);
    }
    return orElse();
  }
}

abstract class _TabTapped implements WorkersEvent {
  const factory _TabTapped({required int tabIndex}) = _$_TabTapped;

  @override
  int get tabIndex;
  @override
  @JsonKey(ignore: true)
  _$TabTappedCopyWith<_TabTapped> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$WorkersStateTearOff {
  const _$WorkersStateTearOff();

  _Initial initial({required int tabIndex}) {
    return _Initial(
      tabIndex: tabIndex,
    );
  }

  _TabIndexChangeSuccess tabIndexChangeSuccess({required int tabIndex}) {
    return _TabIndexChangeSuccess(
      tabIndex: tabIndex,
    );
  }
}

/// @nodoc
const $WorkersState = _$WorkersStateTearOff();

/// @nodoc
mixin _$WorkersState {
  int get tabIndex => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) initial,
    required TResult Function(int tabIndex) tabIndexChangeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int tabIndex)? initial,
    TResult Function(int tabIndex)? tabIndexChangeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? initial,
    TResult Function(int tabIndex)? tabIndexChangeSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TabIndexChangeSuccess value)
        tabIndexChangeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TabIndexChangeSuccess value)? tabIndexChangeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TabIndexChangeSuccess value)? tabIndexChangeSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkersStateCopyWith<WorkersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkersStateCopyWith<$Res> {
  factory $WorkersStateCopyWith(
          WorkersState value, $Res Function(WorkersState) then) =
      _$WorkersStateCopyWithImpl<$Res>;
  $Res call({int tabIndex});
}

/// @nodoc
class _$WorkersStateCopyWithImpl<$Res> implements $WorkersStateCopyWith<$Res> {
  _$WorkersStateCopyWithImpl(this._value, this._then);

  final WorkersState _value;
  // ignore: unused_field
  final $Res Function(WorkersState) _then;

  @override
  $Res call({
    Object? tabIndex = freezed,
  }) {
    return _then(_value.copyWith(
      tabIndex: tabIndex == freezed
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $WorkersStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({int tabIndex});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$WorkersStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? tabIndex = freezed,
  }) {
    return _then(_Initial(
      tabIndex: tabIndex == freezed
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.tabIndex});

  @override
  final int tabIndex;

  @override
  String toString() {
    return 'WorkersState.initial(tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.tabIndex, tabIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tabIndex));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) initial,
    required TResult Function(int tabIndex) tabIndexChangeSuccess,
  }) {
    return initial(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int tabIndex)? initial,
    TResult Function(int tabIndex)? tabIndexChangeSuccess,
  }) {
    return initial?.call(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? initial,
    TResult Function(int tabIndex)? tabIndexChangeSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(tabIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TabIndexChangeSuccess value)
        tabIndexChangeSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TabIndexChangeSuccess value)? tabIndexChangeSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TabIndexChangeSuccess value)? tabIndexChangeSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WorkersState {
  const factory _Initial({required int tabIndex}) = _$_Initial;

  @override
  int get tabIndex;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TabIndexChangeSuccessCopyWith<$Res>
    implements $WorkersStateCopyWith<$Res> {
  factory _$TabIndexChangeSuccessCopyWith(_TabIndexChangeSuccess value,
          $Res Function(_TabIndexChangeSuccess) then) =
      __$TabIndexChangeSuccessCopyWithImpl<$Res>;
  @override
  $Res call({int tabIndex});
}

/// @nodoc
class __$TabIndexChangeSuccessCopyWithImpl<$Res>
    extends _$WorkersStateCopyWithImpl<$Res>
    implements _$TabIndexChangeSuccessCopyWith<$Res> {
  __$TabIndexChangeSuccessCopyWithImpl(_TabIndexChangeSuccess _value,
      $Res Function(_TabIndexChangeSuccess) _then)
      : super(_value, (v) => _then(v as _TabIndexChangeSuccess));

  @override
  _TabIndexChangeSuccess get _value => super._value as _TabIndexChangeSuccess;

  @override
  $Res call({
    Object? tabIndex = freezed,
  }) {
    return _then(_TabIndexChangeSuccess(
      tabIndex: tabIndex == freezed
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TabIndexChangeSuccess implements _TabIndexChangeSuccess {
  const _$_TabIndexChangeSuccess({required this.tabIndex});

  @override
  final int tabIndex;

  @override
  String toString() {
    return 'WorkersState.tabIndexChangeSuccess(tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TabIndexChangeSuccess &&
            const DeepCollectionEquality().equals(other.tabIndex, tabIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tabIndex));

  @JsonKey(ignore: true)
  @override
  _$TabIndexChangeSuccessCopyWith<_TabIndexChangeSuccess> get copyWith =>
      __$TabIndexChangeSuccessCopyWithImpl<_TabIndexChangeSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) initial,
    required TResult Function(int tabIndex) tabIndexChangeSuccess,
  }) {
    return tabIndexChangeSuccess(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int tabIndex)? initial,
    TResult Function(int tabIndex)? tabIndexChangeSuccess,
  }) {
    return tabIndexChangeSuccess?.call(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? initial,
    TResult Function(int tabIndex)? tabIndexChangeSuccess,
    required TResult orElse(),
  }) {
    if (tabIndexChangeSuccess != null) {
      return tabIndexChangeSuccess(tabIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TabIndexChangeSuccess value)
        tabIndexChangeSuccess,
  }) {
    return tabIndexChangeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TabIndexChangeSuccess value)? tabIndexChangeSuccess,
  }) {
    return tabIndexChangeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TabIndexChangeSuccess value)? tabIndexChangeSuccess,
    required TResult orElse(),
  }) {
    if (tabIndexChangeSuccess != null) {
      return tabIndexChangeSuccess(this);
    }
    return orElse();
  }
}

abstract class _TabIndexChangeSuccess implements WorkersState {
  const factory _TabIndexChangeSuccess({required int tabIndex}) =
      _$_TabIndexChangeSuccess;

  @override
  int get tabIndex;
  @override
  @JsonKey(ignore: true)
  _$TabIndexChangeSuccessCopyWith<_TabIndexChangeSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
