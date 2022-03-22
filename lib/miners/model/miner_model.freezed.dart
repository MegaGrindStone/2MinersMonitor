// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'miner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MinerModel _$MinerModelFromJson(Map<String, dynamic> json) {
  return _MinerModel.fromJson(json);
}

/// @nodoc
class _$MinerModelTearOff {
  const _$MinerModelTearOff();

  _MinerModel call(
      {required RepositoryIndex repositoryIndex,
      required String walletID,
      required int lastUpdate,
      @JsonKey(ignore: true) BaseRepository? repository,
      AccountReturnModel? account}) {
    return _MinerModel(
      repositoryIndex: repositoryIndex,
      walletID: walletID,
      lastUpdate: lastUpdate,
      repository: repository,
      account: account,
    );
  }

  MinerModel fromJson(Map<String, Object?> json) {
    return MinerModel.fromJson(json);
  }
}

/// @nodoc
const $MinerModel = _$MinerModelTearOff();

/// @nodoc
mixin _$MinerModel {
  RepositoryIndex get repositoryIndex => throw _privateConstructorUsedError;
  String get walletID => throw _privateConstructorUsedError;
  int get lastUpdate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  BaseRepository? get repository => throw _privateConstructorUsedError;
  AccountReturnModel? get account => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MinerModelCopyWith<MinerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinerModelCopyWith<$Res> {
  factory $MinerModelCopyWith(
          MinerModel value, $Res Function(MinerModel) then) =
      _$MinerModelCopyWithImpl<$Res>;
  $Res call(
      {RepositoryIndex repositoryIndex,
      String walletID,
      int lastUpdate,
      @JsonKey(ignore: true) BaseRepository? repository,
      AccountReturnModel? account});

  $AccountReturnModelCopyWith<$Res>? get account;
}

/// @nodoc
class _$MinerModelCopyWithImpl<$Res> implements $MinerModelCopyWith<$Res> {
  _$MinerModelCopyWithImpl(this._value, this._then);

  final MinerModel _value;
  // ignore: unused_field
  final $Res Function(MinerModel) _then;

  @override
  $Res call({
    Object? repositoryIndex = freezed,
    Object? walletID = freezed,
    Object? lastUpdate = freezed,
    Object? repository = freezed,
    Object? account = freezed,
  }) {
    return _then(_value.copyWith(
      repositoryIndex: repositoryIndex == freezed
          ? _value.repositoryIndex
          : repositoryIndex // ignore: cast_nullable_to_non_nullable
              as RepositoryIndex,
      walletID: walletID == freezed
          ? _value.walletID
          : walletID // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdate: lastUpdate == freezed
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as int,
      repository: repository == freezed
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as BaseRepository?,
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountReturnModel?,
    ));
  }

  @override
  $AccountReturnModelCopyWith<$Res>? get account {
    if (_value.account == null) {
      return null;
    }

    return $AccountReturnModelCopyWith<$Res>(_value.account!, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

/// @nodoc
abstract class _$MinerModelCopyWith<$Res> implements $MinerModelCopyWith<$Res> {
  factory _$MinerModelCopyWith(
          _MinerModel value, $Res Function(_MinerModel) then) =
      __$MinerModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {RepositoryIndex repositoryIndex,
      String walletID,
      int lastUpdate,
      @JsonKey(ignore: true) BaseRepository? repository,
      AccountReturnModel? account});

  @override
  $AccountReturnModelCopyWith<$Res>? get account;
}

/// @nodoc
class __$MinerModelCopyWithImpl<$Res> extends _$MinerModelCopyWithImpl<$Res>
    implements _$MinerModelCopyWith<$Res> {
  __$MinerModelCopyWithImpl(
      _MinerModel _value, $Res Function(_MinerModel) _then)
      : super(_value, (v) => _then(v as _MinerModel));

  @override
  _MinerModel get _value => super._value as _MinerModel;

  @override
  $Res call({
    Object? repositoryIndex = freezed,
    Object? walletID = freezed,
    Object? lastUpdate = freezed,
    Object? repository = freezed,
    Object? account = freezed,
  }) {
    return _then(_MinerModel(
      repositoryIndex: repositoryIndex == freezed
          ? _value.repositoryIndex
          : repositoryIndex // ignore: cast_nullable_to_non_nullable
              as RepositoryIndex,
      walletID: walletID == freezed
          ? _value.walletID
          : walletID // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdate: lastUpdate == freezed
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as int,
      repository: repository == freezed
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as BaseRepository?,
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountReturnModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MinerModel extends _MinerModel {
  const _$_MinerModel(
      {required this.repositoryIndex,
      required this.walletID,
      required this.lastUpdate,
      @JsonKey(ignore: true) this.repository,
      this.account})
      : super._();

  factory _$_MinerModel.fromJson(Map<String, dynamic> json) =>
      _$$_MinerModelFromJson(json);

  @override
  final RepositoryIndex repositoryIndex;
  @override
  final String walletID;
  @override
  final int lastUpdate;
  @override
  @JsonKey(ignore: true)
  final BaseRepository? repository;
  @override
  final AccountReturnModel? account;

  @override
  String toString() {
    return 'MinerModel(repositoryIndex: $repositoryIndex, walletID: $walletID, lastUpdate: $lastUpdate, repository: $repository, account: $account)';
  }

  @JsonKey(ignore: true)
  @override
  _$MinerModelCopyWith<_MinerModel> get copyWith =>
      __$MinerModelCopyWithImpl<_MinerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MinerModelToJson(this);
  }
}

abstract class _MinerModel extends MinerModel {
  const factory _MinerModel(
      {required RepositoryIndex repositoryIndex,
      required String walletID,
      required int lastUpdate,
      @JsonKey(ignore: true) BaseRepository? repository,
      AccountReturnModel? account}) = _$_MinerModel;
  const _MinerModel._() : super._();

  factory _MinerModel.fromJson(Map<String, dynamic> json) =
      _$_MinerModel.fromJson;

  @override
  RepositoryIndex get repositoryIndex;
  @override
  String get walletID;
  @override
  int get lastUpdate;
  @override
  @JsonKey(ignore: true)
  BaseRepository? get repository;
  @override
  AccountReturnModel? get account;
  @override
  @JsonKey(ignore: true)
  _$MinerModelCopyWith<_MinerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
