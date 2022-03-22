// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stats_return_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatsReturnModel _$StatsReturnModelFromJson(Map<String, dynamic> json) {
  return _StatsReturnModel.fromJson(json);
}

/// @nodoc
class _$StatsReturnModelTearOff {
  const _$StatsReturnModelTearOff();

  _StatsReturnModel call({List<NodeModel>? nodes, GlobalStatModel? stats}) {
    return _StatsReturnModel(
      nodes: nodes,
      stats: stats,
    );
  }

  StatsReturnModel fromJson(Map<String, Object?> json) {
    return StatsReturnModel.fromJson(json);
  }
}

/// @nodoc
const $StatsReturnModel = _$StatsReturnModelTearOff();

/// @nodoc
mixin _$StatsReturnModel {
  List<NodeModel>? get nodes => throw _privateConstructorUsedError;
  GlobalStatModel? get stats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatsReturnModelCopyWith<StatsReturnModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsReturnModelCopyWith<$Res> {
  factory $StatsReturnModelCopyWith(
          StatsReturnModel value, $Res Function(StatsReturnModel) then) =
      _$StatsReturnModelCopyWithImpl<$Res>;
  $Res call({List<NodeModel>? nodes, GlobalStatModel? stats});

  $GlobalStatModelCopyWith<$Res>? get stats;
}

/// @nodoc
class _$StatsReturnModelCopyWithImpl<$Res>
    implements $StatsReturnModelCopyWith<$Res> {
  _$StatsReturnModelCopyWithImpl(this._value, this._then);

  final StatsReturnModel _value;
  // ignore: unused_field
  final $Res Function(StatsReturnModel) _then;

  @override
  $Res call({
    Object? nodes = freezed,
    Object? stats = freezed,
  }) {
    return _then(_value.copyWith(
      nodes: nodes == freezed
          ? _value.nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<NodeModel>?,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as GlobalStatModel?,
    ));
  }

  @override
  $GlobalStatModelCopyWith<$Res>? get stats {
    if (_value.stats == null) {
      return null;
    }

    return $GlobalStatModelCopyWith<$Res>(_value.stats!, (value) {
      return _then(_value.copyWith(stats: value));
    });
  }
}

/// @nodoc
abstract class _$StatsReturnModelCopyWith<$Res>
    implements $StatsReturnModelCopyWith<$Res> {
  factory _$StatsReturnModelCopyWith(
          _StatsReturnModel value, $Res Function(_StatsReturnModel) then) =
      __$StatsReturnModelCopyWithImpl<$Res>;
  @override
  $Res call({List<NodeModel>? nodes, GlobalStatModel? stats});

  @override
  $GlobalStatModelCopyWith<$Res>? get stats;
}

/// @nodoc
class __$StatsReturnModelCopyWithImpl<$Res>
    extends _$StatsReturnModelCopyWithImpl<$Res>
    implements _$StatsReturnModelCopyWith<$Res> {
  __$StatsReturnModelCopyWithImpl(
      _StatsReturnModel _value, $Res Function(_StatsReturnModel) _then)
      : super(_value, (v) => _then(v as _StatsReturnModel));

  @override
  _StatsReturnModel get _value => super._value as _StatsReturnModel;

  @override
  $Res call({
    Object? nodes = freezed,
    Object? stats = freezed,
  }) {
    return _then(_StatsReturnModel(
      nodes: nodes == freezed
          ? _value.nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<NodeModel>?,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as GlobalStatModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatsReturnModel extends _StatsReturnModel {
  const _$_StatsReturnModel({this.nodes, this.stats}) : super._();

  factory _$_StatsReturnModel.fromJson(Map<String, dynamic> json) =>
      _$$_StatsReturnModelFromJson(json);

  @override
  final List<NodeModel>? nodes;
  @override
  final GlobalStatModel? stats;

  @override
  String toString() {
    return 'StatsReturnModel(nodes: $nodes, stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StatsReturnModel &&
            const DeepCollectionEquality().equals(other.nodes, nodes) &&
            const DeepCollectionEquality().equals(other.stats, stats));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nodes),
      const DeepCollectionEquality().hash(stats));

  @JsonKey(ignore: true)
  @override
  _$StatsReturnModelCopyWith<_StatsReturnModel> get copyWith =>
      __$StatsReturnModelCopyWithImpl<_StatsReturnModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatsReturnModelToJson(this);
  }
}

abstract class _StatsReturnModel extends StatsReturnModel {
  const factory _StatsReturnModel(
      {List<NodeModel>? nodes, GlobalStatModel? stats}) = _$_StatsReturnModel;
  const _StatsReturnModel._() : super._();

  factory _StatsReturnModel.fromJson(Map<String, dynamic> json) =
      _$_StatsReturnModel.fromJson;

  @override
  List<NodeModel>? get nodes;
  @override
  GlobalStatModel? get stats;
  @override
  @JsonKey(ignore: true)
  _$StatsReturnModelCopyWith<_StatsReturnModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GlobalStatModel _$GlobalStatModelFromJson(Map<String, dynamic> json) {
  return _GlobalStatModel.fromJson(json);
}

/// @nodoc
class _$GlobalStatModelTearOff {
  const _$GlobalStatModelTearOff();

  _GlobalStatModel call({int? nShares}) {
    return _GlobalStatModel(
      nShares: nShares,
    );
  }

  GlobalStatModel fromJson(Map<String, Object?> json) {
    return GlobalStatModel.fromJson(json);
  }
}

/// @nodoc
const $GlobalStatModel = _$GlobalStatModelTearOff();

/// @nodoc
mixin _$GlobalStatModel {
  int? get nShares => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GlobalStatModelCopyWith<GlobalStatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalStatModelCopyWith<$Res> {
  factory $GlobalStatModelCopyWith(
          GlobalStatModel value, $Res Function(GlobalStatModel) then) =
      _$GlobalStatModelCopyWithImpl<$Res>;
  $Res call({int? nShares});
}

/// @nodoc
class _$GlobalStatModelCopyWithImpl<$Res>
    implements $GlobalStatModelCopyWith<$Res> {
  _$GlobalStatModelCopyWithImpl(this._value, this._then);

  final GlobalStatModel _value;
  // ignore: unused_field
  final $Res Function(GlobalStatModel) _then;

  @override
  $Res call({
    Object? nShares = freezed,
  }) {
    return _then(_value.copyWith(
      nShares: nShares == freezed
          ? _value.nShares
          : nShares // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$GlobalStatModelCopyWith<$Res>
    implements $GlobalStatModelCopyWith<$Res> {
  factory _$GlobalStatModelCopyWith(
          _GlobalStatModel value, $Res Function(_GlobalStatModel) then) =
      __$GlobalStatModelCopyWithImpl<$Res>;
  @override
  $Res call({int? nShares});
}

/// @nodoc
class __$GlobalStatModelCopyWithImpl<$Res>
    extends _$GlobalStatModelCopyWithImpl<$Res>
    implements _$GlobalStatModelCopyWith<$Res> {
  __$GlobalStatModelCopyWithImpl(
      _GlobalStatModel _value, $Res Function(_GlobalStatModel) _then)
      : super(_value, (v) => _then(v as _GlobalStatModel));

  @override
  _GlobalStatModel get _value => super._value as _GlobalStatModel;

  @override
  $Res call({
    Object? nShares = freezed,
  }) {
    return _then(_GlobalStatModel(
      nShares: nShares == freezed
          ? _value.nShares
          : nShares // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GlobalStatModel implements _GlobalStatModel {
  const _$_GlobalStatModel({this.nShares});

  factory _$_GlobalStatModel.fromJson(Map<String, dynamic> json) =>
      _$$_GlobalStatModelFromJson(json);

  @override
  final int? nShares;

  @override
  String toString() {
    return 'GlobalStatModel(nShares: $nShares)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GlobalStatModel &&
            const DeepCollectionEquality().equals(other.nShares, nShares));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(nShares));

  @JsonKey(ignore: true)
  @override
  _$GlobalStatModelCopyWith<_GlobalStatModel> get copyWith =>
      __$GlobalStatModelCopyWithImpl<_GlobalStatModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GlobalStatModelToJson(this);
  }
}

abstract class _GlobalStatModel implements GlobalStatModel {
  const factory _GlobalStatModel({int? nShares}) = _$_GlobalStatModel;

  factory _GlobalStatModel.fromJson(Map<String, dynamic> json) =
      _$_GlobalStatModel.fromJson;

  @override
  int? get nShares;
  @override
  @JsonKey(ignore: true)
  _$GlobalStatModelCopyWith<_GlobalStatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

NodeModel _$NodeModelFromJson(Map<String, dynamic> json) {
  return _NodeModel.fromJson(json);
}

/// @nodoc
class _$NodeModelTearOff {
  const _$NodeModelTearOff();

  _NodeModel call({required String? blockReward}) {
    return _NodeModel(
      blockReward: blockReward,
    );
  }

  NodeModel fromJson(Map<String, Object?> json) {
    return NodeModel.fromJson(json);
  }
}

/// @nodoc
const $NodeModel = _$NodeModelTearOff();

/// @nodoc
mixin _$NodeModel {
  String? get blockReward => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NodeModelCopyWith<NodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeModelCopyWith<$Res> {
  factory $NodeModelCopyWith(NodeModel value, $Res Function(NodeModel) then) =
      _$NodeModelCopyWithImpl<$Res>;
  $Res call({String? blockReward});
}

/// @nodoc
class _$NodeModelCopyWithImpl<$Res> implements $NodeModelCopyWith<$Res> {
  _$NodeModelCopyWithImpl(this._value, this._then);

  final NodeModel _value;
  // ignore: unused_field
  final $Res Function(NodeModel) _then;

  @override
  $Res call({
    Object? blockReward = freezed,
  }) {
    return _then(_value.copyWith(
      blockReward: blockReward == freezed
          ? _value.blockReward
          : blockReward // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$NodeModelCopyWith<$Res> implements $NodeModelCopyWith<$Res> {
  factory _$NodeModelCopyWith(
          _NodeModel value, $Res Function(_NodeModel) then) =
      __$NodeModelCopyWithImpl<$Res>;
  @override
  $Res call({String? blockReward});
}

/// @nodoc
class __$NodeModelCopyWithImpl<$Res> extends _$NodeModelCopyWithImpl<$Res>
    implements _$NodeModelCopyWith<$Res> {
  __$NodeModelCopyWithImpl(_NodeModel _value, $Res Function(_NodeModel) _then)
      : super(_value, (v) => _then(v as _NodeModel));

  @override
  _NodeModel get _value => super._value as _NodeModel;

  @override
  $Res call({
    Object? blockReward = freezed,
  }) {
    return _then(_NodeModel(
      blockReward: blockReward == freezed
          ? _value.blockReward
          : blockReward // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NodeModel implements _NodeModel {
  const _$_NodeModel({required this.blockReward});

  factory _$_NodeModel.fromJson(Map<String, dynamic> json) =>
      _$$_NodeModelFromJson(json);

  @override
  final String? blockReward;

  @override
  String toString() {
    return 'NodeModel(blockReward: $blockReward)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NodeModel &&
            const DeepCollectionEquality()
                .equals(other.blockReward, blockReward));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(blockReward));

  @JsonKey(ignore: true)
  @override
  _$NodeModelCopyWith<_NodeModel> get copyWith =>
      __$NodeModelCopyWithImpl<_NodeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NodeModelToJson(this);
  }
}

abstract class _NodeModel implements NodeModel {
  const factory _NodeModel({required String? blockReward}) = _$_NodeModel;

  factory _NodeModel.fromJson(Map<String, dynamic> json) =
      _$_NodeModel.fromJson;

  @override
  String? get blockReward;
  @override
  @JsonKey(ignore: true)
  _$NodeModelCopyWith<_NodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
