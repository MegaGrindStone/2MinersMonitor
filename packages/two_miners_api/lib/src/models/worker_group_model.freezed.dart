// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'worker_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkerGroupModel _$WorkerGroupModelFromJson(Map<String, dynamic> json) {
  return _WorkerGroup.fromJson(json);
}

/// @nodoc
class _$WorkerGroupModelTearOff {
  const _$WorkerGroupModelTearOff();

  _WorkerGroup call(
      {int? lastBeat,
      double? hr,
      double? hr2,
      double? rhr,
      bool? offline = false}) {
    return _WorkerGroup(
      lastBeat: lastBeat,
      hr: hr,
      hr2: hr2,
      rhr: rhr,
      offline: offline,
    );
  }

  WorkerGroupModel fromJson(Map<String, Object?> json) {
    return WorkerGroupModel.fromJson(json);
  }
}

/// @nodoc
const $WorkerGroupModel = _$WorkerGroupModelTearOff();

/// @nodoc
mixin _$WorkerGroupModel {
  int? get lastBeat => throw _privateConstructorUsedError;
  double? get hr => throw _privateConstructorUsedError;
  double? get hr2 => throw _privateConstructorUsedError;
  double? get rhr => throw _privateConstructorUsedError;
  bool? get offline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkerGroupModelCopyWith<WorkerGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkerGroupModelCopyWith<$Res> {
  factory $WorkerGroupModelCopyWith(
          WorkerGroupModel value, $Res Function(WorkerGroupModel) then) =
      _$WorkerGroupModelCopyWithImpl<$Res>;
  $Res call(
      {int? lastBeat, double? hr, double? hr2, double? rhr, bool? offline});
}

/// @nodoc
class _$WorkerGroupModelCopyWithImpl<$Res>
    implements $WorkerGroupModelCopyWith<$Res> {
  _$WorkerGroupModelCopyWithImpl(this._value, this._then);

  final WorkerGroupModel _value;
  // ignore: unused_field
  final $Res Function(WorkerGroupModel) _then;

  @override
  $Res call({
    Object? lastBeat = freezed,
    Object? hr = freezed,
    Object? hr2 = freezed,
    Object? rhr = freezed,
    Object? offline = freezed,
  }) {
    return _then(_value.copyWith(
      lastBeat: lastBeat == freezed
          ? _value.lastBeat
          : lastBeat // ignore: cast_nullable_to_non_nullable
              as int?,
      hr: hr == freezed
          ? _value.hr
          : hr // ignore: cast_nullable_to_non_nullable
              as double?,
      hr2: hr2 == freezed
          ? _value.hr2
          : hr2 // ignore: cast_nullable_to_non_nullable
              as double?,
      rhr: rhr == freezed
          ? _value.rhr
          : rhr // ignore: cast_nullable_to_non_nullable
              as double?,
      offline: offline == freezed
          ? _value.offline
          : offline // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$WorkerGroupCopyWith<$Res>
    implements $WorkerGroupModelCopyWith<$Res> {
  factory _$WorkerGroupCopyWith(
          _WorkerGroup value, $Res Function(_WorkerGroup) then) =
      __$WorkerGroupCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? lastBeat, double? hr, double? hr2, double? rhr, bool? offline});
}

/// @nodoc
class __$WorkerGroupCopyWithImpl<$Res>
    extends _$WorkerGroupModelCopyWithImpl<$Res>
    implements _$WorkerGroupCopyWith<$Res> {
  __$WorkerGroupCopyWithImpl(
      _WorkerGroup _value, $Res Function(_WorkerGroup) _then)
      : super(_value, (v) => _then(v as _WorkerGroup));

  @override
  _WorkerGroup get _value => super._value as _WorkerGroup;

  @override
  $Res call({
    Object? lastBeat = freezed,
    Object? hr = freezed,
    Object? hr2 = freezed,
    Object? rhr = freezed,
    Object? offline = freezed,
  }) {
    return _then(_WorkerGroup(
      lastBeat: lastBeat == freezed
          ? _value.lastBeat
          : lastBeat // ignore: cast_nullable_to_non_nullable
              as int?,
      hr: hr == freezed
          ? _value.hr
          : hr // ignore: cast_nullable_to_non_nullable
              as double?,
      hr2: hr2 == freezed
          ? _value.hr2
          : hr2 // ignore: cast_nullable_to_non_nullable
              as double?,
      rhr: rhr == freezed
          ? _value.rhr
          : rhr // ignore: cast_nullable_to_non_nullable
              as double?,
      offline: offline == freezed
          ? _value.offline
          : offline // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkerGroup implements _WorkerGroup {
  const _$_WorkerGroup(
      {this.lastBeat, this.hr, this.hr2, this.rhr, this.offline = false});

  factory _$_WorkerGroup.fromJson(Map<String, dynamic> json) =>
      _$$_WorkerGroupFromJson(json);

  @override
  final int? lastBeat;
  @override
  final double? hr;
  @override
  final double? hr2;
  @override
  final double? rhr;
  @JsonKey()
  @override
  final bool? offline;

  @override
  String toString() {
    return 'WorkerGroupModel(lastBeat: $lastBeat, hr: $hr, hr2: $hr2, rhr: $rhr, offline: $offline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkerGroup &&
            const DeepCollectionEquality().equals(other.lastBeat, lastBeat) &&
            const DeepCollectionEquality().equals(other.hr, hr) &&
            const DeepCollectionEquality().equals(other.hr2, hr2) &&
            const DeepCollectionEquality().equals(other.rhr, rhr) &&
            const DeepCollectionEquality().equals(other.offline, offline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lastBeat),
      const DeepCollectionEquality().hash(hr),
      const DeepCollectionEquality().hash(hr2),
      const DeepCollectionEquality().hash(rhr),
      const DeepCollectionEquality().hash(offline));

  @JsonKey(ignore: true)
  @override
  _$WorkerGroupCopyWith<_WorkerGroup> get copyWith =>
      __$WorkerGroupCopyWithImpl<_WorkerGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkerGroupToJson(this);
  }
}

abstract class _WorkerGroup implements WorkerGroupModel {
  const factory _WorkerGroup(
      {int? lastBeat,
      double? hr,
      double? hr2,
      double? rhr,
      bool? offline}) = _$_WorkerGroup;

  factory _WorkerGroup.fromJson(Map<String, dynamic> json) =
      _$_WorkerGroup.fromJson;

  @override
  int? get lastBeat;
  @override
  double? get hr;
  @override
  double? get hr2;
  @override
  double? get rhr;
  @override
  bool? get offline;
  @override
  @JsonKey(ignore: true)
  _$WorkerGroupCopyWith<_WorkerGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
