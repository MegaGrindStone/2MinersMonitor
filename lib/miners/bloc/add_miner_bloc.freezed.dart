// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_miner_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddMinerEventTearOff {
  const _$AddMinerEventTearOff();

  _InputChanged inputChanged({required AddMinerForm form}) {
    return _InputChanged(
      form: form,
    );
  }

  _Submitted submitted({required AddMinerForm form}) {
    return _Submitted(
      form: form,
    );
  }
}

/// @nodoc
const $AddMinerEvent = _$AddMinerEventTearOff();

/// @nodoc
mixin _$AddMinerEvent {
  AddMinerForm get form => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddMinerForm form) inputChanged,
    required TResult Function(AddMinerForm form) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AddMinerForm form)? inputChanged,
    TResult Function(AddMinerForm form)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddMinerForm form)? inputChanged,
    TResult Function(AddMinerForm form)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputChanged value) inputChanged,
    required TResult Function(_Submitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InputChanged value)? inputChanged,
    TResult Function(_Submitted value)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputChanged value)? inputChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddMinerEventCopyWith<AddMinerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMinerEventCopyWith<$Res> {
  factory $AddMinerEventCopyWith(
          AddMinerEvent value, $Res Function(AddMinerEvent) then) =
      _$AddMinerEventCopyWithImpl<$Res>;
  $Res call({AddMinerForm form});

  $AddMinerFormCopyWith<$Res> get form;
}

/// @nodoc
class _$AddMinerEventCopyWithImpl<$Res>
    implements $AddMinerEventCopyWith<$Res> {
  _$AddMinerEventCopyWithImpl(this._value, this._then);

  final AddMinerEvent _value;
  // ignore: unused_field
  final $Res Function(AddMinerEvent) _then;

  @override
  $Res call({
    Object? form = freezed,
  }) {
    return _then(_value.copyWith(
      form: form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as AddMinerForm,
    ));
  }

  @override
  $AddMinerFormCopyWith<$Res> get form {
    return $AddMinerFormCopyWith<$Res>(_value.form, (value) {
      return _then(_value.copyWith(form: value));
    });
  }
}

/// @nodoc
abstract class _$InputChangedCopyWith<$Res>
    implements $AddMinerEventCopyWith<$Res> {
  factory _$InputChangedCopyWith(
          _InputChanged value, $Res Function(_InputChanged) then) =
      __$InputChangedCopyWithImpl<$Res>;
  @override
  $Res call({AddMinerForm form});

  @override
  $AddMinerFormCopyWith<$Res> get form;
}

/// @nodoc
class __$InputChangedCopyWithImpl<$Res>
    extends _$AddMinerEventCopyWithImpl<$Res>
    implements _$InputChangedCopyWith<$Res> {
  __$InputChangedCopyWithImpl(
      _InputChanged _value, $Res Function(_InputChanged) _then)
      : super(_value, (v) => _then(v as _InputChanged));

  @override
  _InputChanged get _value => super._value as _InputChanged;

  @override
  $Res call({
    Object? form = freezed,
  }) {
    return _then(_InputChanged(
      form: form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as AddMinerForm,
    ));
  }
}

/// @nodoc

class _$_InputChanged implements _InputChanged {
  const _$_InputChanged({required this.form});

  @override
  final AddMinerForm form;

  @override
  String toString() {
    return 'AddMinerEvent.inputChanged(form: $form)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InputChanged &&
            const DeepCollectionEquality().equals(other.form, form));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(form));

  @JsonKey(ignore: true)
  @override
  _$InputChangedCopyWith<_InputChanged> get copyWith =>
      __$InputChangedCopyWithImpl<_InputChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddMinerForm form) inputChanged,
    required TResult Function(AddMinerForm form) submitted,
  }) {
    return inputChanged(form);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AddMinerForm form)? inputChanged,
    TResult Function(AddMinerForm form)? submitted,
  }) {
    return inputChanged?.call(form);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddMinerForm form)? inputChanged,
    TResult Function(AddMinerForm form)? submitted,
    required TResult orElse(),
  }) {
    if (inputChanged != null) {
      return inputChanged(form);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputChanged value) inputChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return inputChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InputChanged value)? inputChanged,
    TResult Function(_Submitted value)? submitted,
  }) {
    return inputChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputChanged value)? inputChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (inputChanged != null) {
      return inputChanged(this);
    }
    return orElse();
  }
}

abstract class _InputChanged implements AddMinerEvent {
  const factory _InputChanged({required AddMinerForm form}) = _$_InputChanged;

  @override
  AddMinerForm get form;
  @override
  @JsonKey(ignore: true)
  _$InputChangedCopyWith<_InputChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmittedCopyWith<$Res>
    implements $AddMinerEventCopyWith<$Res> {
  factory _$SubmittedCopyWith(
          _Submitted value, $Res Function(_Submitted) then) =
      __$SubmittedCopyWithImpl<$Res>;
  @override
  $Res call({AddMinerForm form});

  @override
  $AddMinerFormCopyWith<$Res> get form;
}

/// @nodoc
class __$SubmittedCopyWithImpl<$Res> extends _$AddMinerEventCopyWithImpl<$Res>
    implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(_Submitted _value, $Res Function(_Submitted) _then)
      : super(_value, (v) => _then(v as _Submitted));

  @override
  _Submitted get _value => super._value as _Submitted;

  @override
  $Res call({
    Object? form = freezed,
  }) {
    return _then(_Submitted(
      form: form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as AddMinerForm,
    ));
  }
}

/// @nodoc

class _$_Submitted implements _Submitted {
  const _$_Submitted({required this.form});

  @override
  final AddMinerForm form;

  @override
  String toString() {
    return 'AddMinerEvent.submitted(form: $form)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Submitted &&
            const DeepCollectionEquality().equals(other.form, form));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(form));

  @JsonKey(ignore: true)
  @override
  _$SubmittedCopyWith<_Submitted> get copyWith =>
      __$SubmittedCopyWithImpl<_Submitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddMinerForm form) inputChanged,
    required TResult Function(AddMinerForm form) submitted,
  }) {
    return submitted(form);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AddMinerForm form)? inputChanged,
    TResult Function(AddMinerForm form)? submitted,
  }) {
    return submitted?.call(form);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddMinerForm form)? inputChanged,
    TResult Function(AddMinerForm form)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(form);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputChanged value) inputChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InputChanged value)? inputChanged,
    TResult Function(_Submitted value)? submitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputChanged value)? inputChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements AddMinerEvent {
  const factory _Submitted({required AddMinerForm form}) = _$_Submitted;

  @override
  AddMinerForm get form;
  @override
  @JsonKey(ignore: true)
  _$SubmittedCopyWith<_Submitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddMinerStateTearOff {
  const _$AddMinerStateTearOff();

  _Initial initial({required AddMinerForm form}) {
    return _Initial(
      form: form,
    );
  }

  _ChangeInputSuccess changeInputSuccess({required AddMinerForm form}) {
    return _ChangeInputSuccess(
      form: form,
    );
  }

  _SubmitInProgress submitInProgress({required AddMinerForm form}) {
    return _SubmitInProgress(
      form: form,
    );
  }

  _SubmitSuccess submitSuccess(
      {required AddMinerForm form, required MinerModel miner}) {
    return _SubmitSuccess(
      form: form,
      miner: miner,
    );
  }

  _SubmitFailure submitFailure(
      {required AddMinerForm form, required ExceptionModel exception}) {
    return _SubmitFailure(
      form: form,
      exception: exception,
    );
  }
}

/// @nodoc
const $AddMinerState = _$AddMinerStateTearOff();

/// @nodoc
mixin _$AddMinerState {
  AddMinerForm get form => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddMinerForm form) initial,
    required TResult Function(AddMinerForm form) changeInputSuccess,
    required TResult Function(AddMinerForm form) submitInProgress,
    required TResult Function(AddMinerForm form, MinerModel miner)
        submitSuccess,
    required TResult Function(AddMinerForm form, ExceptionModel exception)
        submitFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AddMinerForm form)? initial,
    TResult Function(AddMinerForm form)? changeInputSuccess,
    TResult Function(AddMinerForm form)? submitInProgress,
    TResult Function(AddMinerForm form, MinerModel miner)? submitSuccess,
    TResult Function(AddMinerForm form, ExceptionModel exception)?
        submitFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddMinerForm form)? initial,
    TResult Function(AddMinerForm form)? changeInputSuccess,
    TResult Function(AddMinerForm form)? submitInProgress,
    TResult Function(AddMinerForm form, MinerModel miner)? submitSuccess,
    TResult Function(AddMinerForm form, ExceptionModel exception)?
        submitFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeInputSuccess value) changeInputSuccess,
    required TResult Function(_SubmitInProgress value) submitInProgress,
    required TResult Function(_SubmitSuccess value) submitSuccess,
    required TResult Function(_SubmitFailure value) submitFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeInputSuccess value)? changeInputSuccess,
    TResult Function(_SubmitInProgress value)? submitInProgress,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailure value)? submitFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeInputSuccess value)? changeInputSuccess,
    TResult Function(_SubmitInProgress value)? submitInProgress,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddMinerStateCopyWith<AddMinerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMinerStateCopyWith<$Res> {
  factory $AddMinerStateCopyWith(
          AddMinerState value, $Res Function(AddMinerState) then) =
      _$AddMinerStateCopyWithImpl<$Res>;
  $Res call({AddMinerForm form});

  $AddMinerFormCopyWith<$Res> get form;
}

/// @nodoc
class _$AddMinerStateCopyWithImpl<$Res>
    implements $AddMinerStateCopyWith<$Res> {
  _$AddMinerStateCopyWithImpl(this._value, this._then);

  final AddMinerState _value;
  // ignore: unused_field
  final $Res Function(AddMinerState) _then;

  @override
  $Res call({
    Object? form = freezed,
  }) {
    return _then(_value.copyWith(
      form: form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as AddMinerForm,
    ));
  }

  @override
  $AddMinerFormCopyWith<$Res> get form {
    return $AddMinerFormCopyWith<$Res>(_value.form, (value) {
      return _then(_value.copyWith(form: value));
    });
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $AddMinerStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({AddMinerForm form});

  @override
  $AddMinerFormCopyWith<$Res> get form;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AddMinerStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? form = freezed,
  }) {
    return _then(_Initial(
      form: form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as AddMinerForm,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.form});

  @override
  final AddMinerForm form;

  @override
  String toString() {
    return 'AddMinerState.initial(form: $form)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.form, form));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(form));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddMinerForm form) initial,
    required TResult Function(AddMinerForm form) changeInputSuccess,
    required TResult Function(AddMinerForm form) submitInProgress,
    required TResult Function(AddMinerForm form, MinerModel miner)
        submitSuccess,
    required TResult Function(AddMinerForm form, ExceptionModel exception)
        submitFailure,
  }) {
    return initial(form);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AddMinerForm form)? initial,
    TResult Function(AddMinerForm form)? changeInputSuccess,
    TResult Function(AddMinerForm form)? submitInProgress,
    TResult Function(AddMinerForm form, MinerModel miner)? submitSuccess,
    TResult Function(AddMinerForm form, ExceptionModel exception)?
        submitFailure,
  }) {
    return initial?.call(form);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddMinerForm form)? initial,
    TResult Function(AddMinerForm form)? changeInputSuccess,
    TResult Function(AddMinerForm form)? submitInProgress,
    TResult Function(AddMinerForm form, MinerModel miner)? submitSuccess,
    TResult Function(AddMinerForm form, ExceptionModel exception)?
        submitFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(form);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeInputSuccess value) changeInputSuccess,
    required TResult Function(_SubmitInProgress value) submitInProgress,
    required TResult Function(_SubmitSuccess value) submitSuccess,
    required TResult Function(_SubmitFailure value) submitFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeInputSuccess value)? changeInputSuccess,
    TResult Function(_SubmitInProgress value)? submitInProgress,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailure value)? submitFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeInputSuccess value)? changeInputSuccess,
    TResult Function(_SubmitInProgress value)? submitInProgress,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddMinerState {
  const factory _Initial({required AddMinerForm form}) = _$_Initial;

  @override
  AddMinerForm get form;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeInputSuccessCopyWith<$Res>
    implements $AddMinerStateCopyWith<$Res> {
  factory _$ChangeInputSuccessCopyWith(
          _ChangeInputSuccess value, $Res Function(_ChangeInputSuccess) then) =
      __$ChangeInputSuccessCopyWithImpl<$Res>;
  @override
  $Res call({AddMinerForm form});

  @override
  $AddMinerFormCopyWith<$Res> get form;
}

/// @nodoc
class __$ChangeInputSuccessCopyWithImpl<$Res>
    extends _$AddMinerStateCopyWithImpl<$Res>
    implements _$ChangeInputSuccessCopyWith<$Res> {
  __$ChangeInputSuccessCopyWithImpl(
      _ChangeInputSuccess _value, $Res Function(_ChangeInputSuccess) _then)
      : super(_value, (v) => _then(v as _ChangeInputSuccess));

  @override
  _ChangeInputSuccess get _value => super._value as _ChangeInputSuccess;

  @override
  $Res call({
    Object? form = freezed,
  }) {
    return _then(_ChangeInputSuccess(
      form: form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as AddMinerForm,
    ));
  }
}

/// @nodoc

class _$_ChangeInputSuccess implements _ChangeInputSuccess {
  const _$_ChangeInputSuccess({required this.form});

  @override
  final AddMinerForm form;

  @override
  String toString() {
    return 'AddMinerState.changeInputSuccess(form: $form)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeInputSuccess &&
            const DeepCollectionEquality().equals(other.form, form));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(form));

  @JsonKey(ignore: true)
  @override
  _$ChangeInputSuccessCopyWith<_ChangeInputSuccess> get copyWith =>
      __$ChangeInputSuccessCopyWithImpl<_ChangeInputSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddMinerForm form) initial,
    required TResult Function(AddMinerForm form) changeInputSuccess,
    required TResult Function(AddMinerForm form) submitInProgress,
    required TResult Function(AddMinerForm form, MinerModel miner)
        submitSuccess,
    required TResult Function(AddMinerForm form, ExceptionModel exception)
        submitFailure,
  }) {
    return changeInputSuccess(form);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AddMinerForm form)? initial,
    TResult Function(AddMinerForm form)? changeInputSuccess,
    TResult Function(AddMinerForm form)? submitInProgress,
    TResult Function(AddMinerForm form, MinerModel miner)? submitSuccess,
    TResult Function(AddMinerForm form, ExceptionModel exception)?
        submitFailure,
  }) {
    return changeInputSuccess?.call(form);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddMinerForm form)? initial,
    TResult Function(AddMinerForm form)? changeInputSuccess,
    TResult Function(AddMinerForm form)? submitInProgress,
    TResult Function(AddMinerForm form, MinerModel miner)? submitSuccess,
    TResult Function(AddMinerForm form, ExceptionModel exception)?
        submitFailure,
    required TResult orElse(),
  }) {
    if (changeInputSuccess != null) {
      return changeInputSuccess(form);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeInputSuccess value) changeInputSuccess,
    required TResult Function(_SubmitInProgress value) submitInProgress,
    required TResult Function(_SubmitSuccess value) submitSuccess,
    required TResult Function(_SubmitFailure value) submitFailure,
  }) {
    return changeInputSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeInputSuccess value)? changeInputSuccess,
    TResult Function(_SubmitInProgress value)? submitInProgress,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailure value)? submitFailure,
  }) {
    return changeInputSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeInputSuccess value)? changeInputSuccess,
    TResult Function(_SubmitInProgress value)? submitInProgress,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) {
    if (changeInputSuccess != null) {
      return changeInputSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChangeInputSuccess implements AddMinerState {
  const factory _ChangeInputSuccess({required AddMinerForm form}) =
      _$_ChangeInputSuccess;

  @override
  AddMinerForm get form;
  @override
  @JsonKey(ignore: true)
  _$ChangeInputSuccessCopyWith<_ChangeInputSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmitInProgressCopyWith<$Res>
    implements $AddMinerStateCopyWith<$Res> {
  factory _$SubmitInProgressCopyWith(
          _SubmitInProgress value, $Res Function(_SubmitInProgress) then) =
      __$SubmitInProgressCopyWithImpl<$Res>;
  @override
  $Res call({AddMinerForm form});

  @override
  $AddMinerFormCopyWith<$Res> get form;
}

/// @nodoc
class __$SubmitInProgressCopyWithImpl<$Res>
    extends _$AddMinerStateCopyWithImpl<$Res>
    implements _$SubmitInProgressCopyWith<$Res> {
  __$SubmitInProgressCopyWithImpl(
      _SubmitInProgress _value, $Res Function(_SubmitInProgress) _then)
      : super(_value, (v) => _then(v as _SubmitInProgress));

  @override
  _SubmitInProgress get _value => super._value as _SubmitInProgress;

  @override
  $Res call({
    Object? form = freezed,
  }) {
    return _then(_SubmitInProgress(
      form: form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as AddMinerForm,
    ));
  }
}

/// @nodoc

class _$_SubmitInProgress implements _SubmitInProgress {
  const _$_SubmitInProgress({required this.form});

  @override
  final AddMinerForm form;

  @override
  String toString() {
    return 'AddMinerState.submitInProgress(form: $form)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubmitInProgress &&
            const DeepCollectionEquality().equals(other.form, form));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(form));

  @JsonKey(ignore: true)
  @override
  _$SubmitInProgressCopyWith<_SubmitInProgress> get copyWith =>
      __$SubmitInProgressCopyWithImpl<_SubmitInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddMinerForm form) initial,
    required TResult Function(AddMinerForm form) changeInputSuccess,
    required TResult Function(AddMinerForm form) submitInProgress,
    required TResult Function(AddMinerForm form, MinerModel miner)
        submitSuccess,
    required TResult Function(AddMinerForm form, ExceptionModel exception)
        submitFailure,
  }) {
    return submitInProgress(form);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AddMinerForm form)? initial,
    TResult Function(AddMinerForm form)? changeInputSuccess,
    TResult Function(AddMinerForm form)? submitInProgress,
    TResult Function(AddMinerForm form, MinerModel miner)? submitSuccess,
    TResult Function(AddMinerForm form, ExceptionModel exception)?
        submitFailure,
  }) {
    return submitInProgress?.call(form);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddMinerForm form)? initial,
    TResult Function(AddMinerForm form)? changeInputSuccess,
    TResult Function(AddMinerForm form)? submitInProgress,
    TResult Function(AddMinerForm form, MinerModel miner)? submitSuccess,
    TResult Function(AddMinerForm form, ExceptionModel exception)?
        submitFailure,
    required TResult orElse(),
  }) {
    if (submitInProgress != null) {
      return submitInProgress(form);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeInputSuccess value) changeInputSuccess,
    required TResult Function(_SubmitInProgress value) submitInProgress,
    required TResult Function(_SubmitSuccess value) submitSuccess,
    required TResult Function(_SubmitFailure value) submitFailure,
  }) {
    return submitInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeInputSuccess value)? changeInputSuccess,
    TResult Function(_SubmitInProgress value)? submitInProgress,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailure value)? submitFailure,
  }) {
    return submitInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeInputSuccess value)? changeInputSuccess,
    TResult Function(_SubmitInProgress value)? submitInProgress,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) {
    if (submitInProgress != null) {
      return submitInProgress(this);
    }
    return orElse();
  }
}

abstract class _SubmitInProgress implements AddMinerState {
  const factory _SubmitInProgress({required AddMinerForm form}) =
      _$_SubmitInProgress;

  @override
  AddMinerForm get form;
  @override
  @JsonKey(ignore: true)
  _$SubmitInProgressCopyWith<_SubmitInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmitSuccessCopyWith<$Res>
    implements $AddMinerStateCopyWith<$Res> {
  factory _$SubmitSuccessCopyWith(
          _SubmitSuccess value, $Res Function(_SubmitSuccess) then) =
      __$SubmitSuccessCopyWithImpl<$Res>;
  @override
  $Res call({AddMinerForm form, MinerModel miner});

  @override
  $AddMinerFormCopyWith<$Res> get form;
  $MinerModelCopyWith<$Res> get miner;
}

/// @nodoc
class __$SubmitSuccessCopyWithImpl<$Res>
    extends _$AddMinerStateCopyWithImpl<$Res>
    implements _$SubmitSuccessCopyWith<$Res> {
  __$SubmitSuccessCopyWithImpl(
      _SubmitSuccess _value, $Res Function(_SubmitSuccess) _then)
      : super(_value, (v) => _then(v as _SubmitSuccess));

  @override
  _SubmitSuccess get _value => super._value as _SubmitSuccess;

  @override
  $Res call({
    Object? form = freezed,
    Object? miner = freezed,
  }) {
    return _then(_SubmitSuccess(
      form: form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as AddMinerForm,
      miner: miner == freezed
          ? _value.miner
          : miner // ignore: cast_nullable_to_non_nullable
              as MinerModel,
    ));
  }

  @override
  $MinerModelCopyWith<$Res> get miner {
    return $MinerModelCopyWith<$Res>(_value.miner, (value) {
      return _then(_value.copyWith(miner: value));
    });
  }
}

/// @nodoc

class _$_SubmitSuccess implements _SubmitSuccess {
  const _$_SubmitSuccess({required this.form, required this.miner});

  @override
  final AddMinerForm form;
  @override
  final MinerModel miner;

  @override
  String toString() {
    return 'AddMinerState.submitSuccess(form: $form, miner: $miner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubmitSuccess &&
            const DeepCollectionEquality().equals(other.form, form) &&
            const DeepCollectionEquality().equals(other.miner, miner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(form),
      const DeepCollectionEquality().hash(miner));

  @JsonKey(ignore: true)
  @override
  _$SubmitSuccessCopyWith<_SubmitSuccess> get copyWith =>
      __$SubmitSuccessCopyWithImpl<_SubmitSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddMinerForm form) initial,
    required TResult Function(AddMinerForm form) changeInputSuccess,
    required TResult Function(AddMinerForm form) submitInProgress,
    required TResult Function(AddMinerForm form, MinerModel miner)
        submitSuccess,
    required TResult Function(AddMinerForm form, ExceptionModel exception)
        submitFailure,
  }) {
    return submitSuccess(form, miner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AddMinerForm form)? initial,
    TResult Function(AddMinerForm form)? changeInputSuccess,
    TResult Function(AddMinerForm form)? submitInProgress,
    TResult Function(AddMinerForm form, MinerModel miner)? submitSuccess,
    TResult Function(AddMinerForm form, ExceptionModel exception)?
        submitFailure,
  }) {
    return submitSuccess?.call(form, miner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddMinerForm form)? initial,
    TResult Function(AddMinerForm form)? changeInputSuccess,
    TResult Function(AddMinerForm form)? submitInProgress,
    TResult Function(AddMinerForm form, MinerModel miner)? submitSuccess,
    TResult Function(AddMinerForm form, ExceptionModel exception)?
        submitFailure,
    required TResult orElse(),
  }) {
    if (submitSuccess != null) {
      return submitSuccess(form, miner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeInputSuccess value) changeInputSuccess,
    required TResult Function(_SubmitInProgress value) submitInProgress,
    required TResult Function(_SubmitSuccess value) submitSuccess,
    required TResult Function(_SubmitFailure value) submitFailure,
  }) {
    return submitSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeInputSuccess value)? changeInputSuccess,
    TResult Function(_SubmitInProgress value)? submitInProgress,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailure value)? submitFailure,
  }) {
    return submitSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeInputSuccess value)? changeInputSuccess,
    TResult Function(_SubmitInProgress value)? submitInProgress,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) {
    if (submitSuccess != null) {
      return submitSuccess(this);
    }
    return orElse();
  }
}

abstract class _SubmitSuccess implements AddMinerState {
  const factory _SubmitSuccess(
      {required AddMinerForm form,
      required MinerModel miner}) = _$_SubmitSuccess;

  @override
  AddMinerForm get form;
  MinerModel get miner;
  @override
  @JsonKey(ignore: true)
  _$SubmitSuccessCopyWith<_SubmitSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmitFailureCopyWith<$Res>
    implements $AddMinerStateCopyWith<$Res> {
  factory _$SubmitFailureCopyWith(
          _SubmitFailure value, $Res Function(_SubmitFailure) then) =
      __$SubmitFailureCopyWithImpl<$Res>;
  @override
  $Res call({AddMinerForm form, ExceptionModel exception});

  @override
  $AddMinerFormCopyWith<$Res> get form;
  $ExceptionModelCopyWith<$Res> get exception;
}

/// @nodoc
class __$SubmitFailureCopyWithImpl<$Res>
    extends _$AddMinerStateCopyWithImpl<$Res>
    implements _$SubmitFailureCopyWith<$Res> {
  __$SubmitFailureCopyWithImpl(
      _SubmitFailure _value, $Res Function(_SubmitFailure) _then)
      : super(_value, (v) => _then(v as _SubmitFailure));

  @override
  _SubmitFailure get _value => super._value as _SubmitFailure;

  @override
  $Res call({
    Object? form = freezed,
    Object? exception = freezed,
  }) {
    return _then(_SubmitFailure(
      form: form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as AddMinerForm,
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as ExceptionModel,
    ));
  }

  @override
  $ExceptionModelCopyWith<$Res> get exception {
    return $ExceptionModelCopyWith<$Res>(_value.exception, (value) {
      return _then(_value.copyWith(exception: value));
    });
  }
}

/// @nodoc

class _$_SubmitFailure implements _SubmitFailure {
  const _$_SubmitFailure({required this.form, required this.exception});

  @override
  final AddMinerForm form;
  @override
  final ExceptionModel exception;

  @override
  String toString() {
    return 'AddMinerState.submitFailure(form: $form, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubmitFailure &&
            const DeepCollectionEquality().equals(other.form, form) &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(form),
      const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$SubmitFailureCopyWith<_SubmitFailure> get copyWith =>
      __$SubmitFailureCopyWithImpl<_SubmitFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddMinerForm form) initial,
    required TResult Function(AddMinerForm form) changeInputSuccess,
    required TResult Function(AddMinerForm form) submitInProgress,
    required TResult Function(AddMinerForm form, MinerModel miner)
        submitSuccess,
    required TResult Function(AddMinerForm form, ExceptionModel exception)
        submitFailure,
  }) {
    return submitFailure(form, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AddMinerForm form)? initial,
    TResult Function(AddMinerForm form)? changeInputSuccess,
    TResult Function(AddMinerForm form)? submitInProgress,
    TResult Function(AddMinerForm form, MinerModel miner)? submitSuccess,
    TResult Function(AddMinerForm form, ExceptionModel exception)?
        submitFailure,
  }) {
    return submitFailure?.call(form, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddMinerForm form)? initial,
    TResult Function(AddMinerForm form)? changeInputSuccess,
    TResult Function(AddMinerForm form)? submitInProgress,
    TResult Function(AddMinerForm form, MinerModel miner)? submitSuccess,
    TResult Function(AddMinerForm form, ExceptionModel exception)?
        submitFailure,
    required TResult orElse(),
  }) {
    if (submitFailure != null) {
      return submitFailure(form, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeInputSuccess value) changeInputSuccess,
    required TResult Function(_SubmitInProgress value) submitInProgress,
    required TResult Function(_SubmitSuccess value) submitSuccess,
    required TResult Function(_SubmitFailure value) submitFailure,
  }) {
    return submitFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeInputSuccess value)? changeInputSuccess,
    TResult Function(_SubmitInProgress value)? submitInProgress,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailure value)? submitFailure,
  }) {
    return submitFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeInputSuccess value)? changeInputSuccess,
    TResult Function(_SubmitInProgress value)? submitInProgress,
    TResult Function(_SubmitSuccess value)? submitSuccess,
    TResult Function(_SubmitFailure value)? submitFailure,
    required TResult orElse(),
  }) {
    if (submitFailure != null) {
      return submitFailure(this);
    }
    return orElse();
  }
}

abstract class _SubmitFailure implements AddMinerState {
  const factory _SubmitFailure(
      {required AddMinerForm form,
      required ExceptionModel exception}) = _$_SubmitFailure;

  @override
  AddMinerForm get form;
  ExceptionModel get exception;
  @override
  @JsonKey(ignore: true)
  _$SubmitFailureCopyWith<_SubmitFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
