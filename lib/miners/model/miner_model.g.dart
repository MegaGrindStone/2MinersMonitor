// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'miner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MinerModel _$$_MinerModelFromJson(Map<String, dynamic> json) =>
    _$_MinerModel(
      repositoryIndex:
          $enumDecode(_$RepositoryIndexEnumMap, json['repositoryIndex']),
      walletID: json['walletID'] as String,
      lastUpdate: json['lastUpdate'] as int,
      account: json['account'] == null
          ? null
          : AccountReturnModel.fromJson(
              json['account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MinerModelToJson(_$_MinerModel instance) =>
    <String, dynamic>{
      'repositoryIndex': _$RepositoryIndexEnumMap[instance.repositoryIndex],
      'walletID': instance.walletID,
      'lastUpdate': instance.lastUpdate,
      'account': instance.account,
    };

const _$RepositoryIndexEnumMap = {
  RepositoryIndex.initial: 'initial',
  RepositoryIndex.eth: 'eth',
  RepositoryIndex.ethSolo: 'ethSolo',
  RepositoryIndex.rvn: 'rvn',
  RepositoryIndex.rvnSolo: 'rvnSolo',
  RepositoryIndex.etc: 'etc',
  RepositoryIndex.etcSolo: 'etcSolo',
  RepositoryIndex.xmr: 'xmr',
  RepositoryIndex.xmrSolo: 'xmrSolo',
  RepositoryIndex.erg: 'erg',
  RepositoryIndex.ergSolo: 'ergSolo',
  RepositoryIndex.btg: 'btg',
  RepositoryIndex.btgSolo: 'btgSolo',
  RepositoryIndex.ctxc: 'ctxc',
  RepositoryIndex.ctxcSolo: 'ctxcSolo',
  RepositoryIndex.ckb: 'ckb',
  RepositoryIndex.ckbSolo: 'ckbSolo',
  RepositoryIndex.firo: 'firo',
  RepositoryIndex.firoSolo: 'firoSolo',
  RepositoryIndex.flux: 'flux',
  RepositoryIndex.fluxSolo: 'fluxSolo',
  RepositoryIndex.zec: 'zec',
  RepositoryIndex.zecSolo: 'zecSolo',
  RepositoryIndex.beam: 'beam',
  RepositoryIndex.beamSolo: 'beamSolo',
  RepositoryIndex.grin: 'grin',
  RepositoryIndex.grinSolo: 'grinSolo',
  RepositoryIndex.clo: 'clo',
  RepositoryIndex.cloSolo: 'cloSolo',
  RepositoryIndex.zen: 'zen',
  RepositoryIndex.zenSolo: 'zenSolo',
  RepositoryIndex.ae: 'ae',
  RepositoryIndex.aeSolo: 'aeSolo',
  RepositoryIndex.etp: 'etp',
  RepositoryIndex.etpSolo: 'etpSolo',
  RepositoryIndex.mwc: 'mwc',
  RepositoryIndex.mwcSolo: 'mwcSolo',
  RepositoryIndex.exp: 'exp',
  RepositoryIndex.expSolo: 'expSolo',
};
