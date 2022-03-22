// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'worker_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WorkerModelTearOff {
  const _$WorkerModelTearOff();

  _WorkerModel call(
      {required String name,
      required double currentHashrate,
      required double averageHashrate,
      required DateTime lastShare,
      required bool isOffline,
      required String unit}) {
    return _WorkerModel(
      name: name,
      currentHashrate: currentHashrate,
      averageHashrate: averageHashrate,
      lastShare: lastShare,
      isOffline: isOffline,
      unit: unit,
    );
  }
}

/// @nodoc
const $WorkerModel = _$WorkerModelTearOff();

/// @nodoc
mixin _$WorkerModel {
  String get name => throw _privateConstructorUsedError;
  double get currentHashrate => throw _privateConstructorUsedError;
  double get averageHashrate => throw _privateConstructorUsedError;
  DateTime get lastShare => throw _privateConstructorUsedError;
  bool get isOffline => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkerModelCopyWith<WorkerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkerModelCopyWith<$Res> {
  factory $WorkerModelCopyWith(
          WorkerModel value, $Res Function(WorkerModel) then) =
      _$WorkerModelCopyWithImpl<$Res>;
  $Res call(
      {String name,
      double currentHashrate,
      double averageHashrate,
      DateTime lastShare,
      bool isOffline,
      String unit});
}

/// @nodoc
class _$WorkerModelCopyWithImpl<$Res> implements $WorkerModelCopyWith<$Res> {
  _$WorkerModelCopyWithImpl(this._value, this._then);

  final WorkerModel _value;
  // ignore: unused_field
  final $Res Function(WorkerModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? currentHashrate = freezed,
    Object? averageHashrate = freezed,
    Object? lastShare = freezed,
    Object? isOffline = freezed,
    Object? unit = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      currentHashrate: currentHashrate == freezed
          ? _value.currentHashrate
          : currentHashrate // ignore: cast_nullable_to_non_nullable
              as double,
      averageHashrate: averageHashrate == freezed
          ? _value.averageHashrate
          : averageHashrate // ignore: cast_nullable_to_non_nullable
              as double,
      lastShare: lastShare == freezed
          ? _value.lastShare
          : lastShare // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isOffline: isOffline == freezed
          ? _value.isOffline
          : isOffline // ignore: cast_nullable_to_non_nullable
              as bool,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WorkerModelCopyWith<$Res>
    implements $WorkerModelCopyWith<$Res> {
  factory _$WorkerModelCopyWith(
          _WorkerModel value, $Res Function(_WorkerModel) then) =
      __$WorkerModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      double currentHashrate,
      double averageHashrate,
      DateTime lastShare,
      bool isOffline,
      String unit});
}

/// @nodoc
class __$WorkerModelCopyWithImpl<$Res> extends _$WorkerModelCopyWithImpl<$Res>
    implements _$WorkerModelCopyWith<$Res> {
  __$WorkerModelCopyWithImpl(
      _WorkerModel _value, $Res Function(_WorkerModel) _then)
      : super(_value, (v) => _then(v as _WorkerModel));

  @override
  _WorkerModel get _value => super._value as _WorkerModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? currentHashrate = freezed,
    Object? averageHashrate = freezed,
    Object? lastShare = freezed,
    Object? isOffline = freezed,
    Object? unit = freezed,
  }) {
    return _then(_WorkerModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      currentHashrate: currentHashrate == freezed
          ? _value.currentHashrate
          : currentHashrate // ignore: cast_nullable_to_non_nullable
              as double,
      averageHashrate: averageHashrate == freezed
          ? _value.averageHashrate
          : averageHashrate // ignore: cast_nullable_to_non_nullable
              as double,
      lastShare: lastShare == freezed
          ? _value.lastShare
          : lastShare // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isOffline: isOffline == freezed
          ? _value.isOffline
          : isOffline // ignore: cast_nullable_to_non_nullable
              as bool,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WorkerModel extends _WorkerModel {
  const _$_WorkerModel(
      {required this.name,
      required this.currentHashrate,
      required this.averageHashrate,
      required this.lastShare,
      required this.isOffline,
      required this.unit})
      : super._();

  @override
  final String name;
  @override
  final double currentHashrate;
  @override
  final double averageHashrate;
  @override
  final DateTime lastShare;
  @override
  final bool isOffline;
  @override
  final String unit;

  @override
  String toString() {
    return 'WorkerModel(name: $name, currentHashrate: $currentHashrate, averageHashrate: $averageHashrate, lastShare: $lastShare, isOffline: $isOffline, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkerModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.currentHashrate, currentHashrate) &&
            const DeepCollectionEquality()
                .equals(other.averageHashrate, averageHashrate) &&
            const DeepCollectionEquality().equals(other.lastShare, lastShare) &&
            const DeepCollectionEquality().equals(other.isOffline, isOffline) &&
            const DeepCollectionEquality().equals(other.unit, unit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(currentHashrate),
      const DeepCollectionEquality().hash(averageHashrate),
      const DeepCollectionEquality().hash(lastShare),
      const DeepCollectionEquality().hash(isOffline),
      const DeepCollectionEquality().hash(unit));

  @JsonKey(ignore: true)
  @override
  _$WorkerModelCopyWith<_WorkerModel> get copyWith =>
      __$WorkerModelCopyWithImpl<_WorkerModel>(this, _$identity);
}

abstract class _WorkerModel extends WorkerModel {
  const factory _WorkerModel(
      {required String name,
      required double currentHashrate,
      required double averageHashrate,
      required DateTime lastShare,
      required bool isOffline,
      required String unit}) = _$_WorkerModel;
  const _WorkerModel._() : super._();

  @override
  String get name;
  @override
  double get currentHashrate;
  @override
  double get averageHashrate;
  @override
  DateTime get lastShare;
  @override
  bool get isOffline;
  @override
  String get unit;
  @override
  @JsonKey(ignore: true)
  _$WorkerModelCopyWith<_WorkerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
