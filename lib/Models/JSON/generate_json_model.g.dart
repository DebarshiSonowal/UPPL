// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_json_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JsonDataModelImpl _$$JsonDataModelImplFromJson(Map<String, dynamic> json) =>
    _$JsonDataModelImpl(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      intermediateData:
          IntermediateData.fromJson(json['data'] as Map<String, dynamic>),
      code: (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$$JsonDataModelImplToJson(_$JsonDataModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.intermediateData,
      'code': instance.code,
    };

_$IntermediateDataImpl _$$IntermediateDataImplFromJson(
        Map<String, dynamic> json) =>
    _$IntermediateDataImpl(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      additionalInfo: json['additional_info'] as String?,
    );

Map<String, dynamic> _$$IntermediateDataImplToJson(
        _$IntermediateDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'additional_info': instance.additionalInfo,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      btcAssemblyConstituencies:
          (json['btc_assembly_constituencies'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => Constituency.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
      assemblyConstituencies: (json['assembly_constituencies']
              as List<dynamic>?)
          ?.map((e) => AssemblyConstituency.fromJson(e as Map<String, dynamic>))
          .toList(),
      districts: (json['districts'] as List<dynamic>?)
          ?.map((e) => District.fromJson(e as Map<String, dynamic>))
          .toList(),
      partyDistricts: (json['party_district'] as List<dynamic>?)
          ?.map((e) => PartyDistrict.fromJson(e as Map<String, dynamic>))
          .toList(),
      btcPrimaries: (json['btc_primaries'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => Primary.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
      btcConstituency: (json['btc_constituency'] as List<dynamic>?)
          ?.map((e) => BTCConstituency.fromJson(e as Map<String, dynamic>))
          .toList(),
      villages: (json['village'] as List<dynamic>?)
          ?.map((e) => Village.fromJson(e as Map<String, dynamic>))
          .toList(),
      booths: (json['booths'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => Booth.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'btc_assembly_constituencies': instance.btcAssemblyConstituencies,
      'assembly_constituencies': instance.assemblyConstituencies,
      'districts': instance.districts,
      'party_district': instance.partyDistricts,
      'btc_primaries': instance.btcPrimaries,
      'btc_constituency': instance.btcConstituency,
      'village': instance.villages,
      'booths': instance.booths,
    };

_$BTCConstituencyImpl _$$BTCConstituencyImplFromJson(
        Map<String, dynamic> json) =>
    _$BTCConstituencyImpl(
      id: (json['id'] as num).toInt(),
      displayOrder: (json['display_order'] as num?)?.toInt(),
      name: json['name'] as String,
      status: (json['status'] as num).toInt(),
      createdBy: (json['created_by'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$BTCConstituencyImplToJson(
        _$BTCConstituencyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'display_order': instance.displayOrder,
      'name': instance.name,
      'status': instance.status,
      'created_by': instance.createdBy,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$VillageImpl _$$VillageImplFromJson(Map<String, dynamic> json) =>
    _$VillageImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      vcdc: json['vcdc'] as String,
    );

Map<String, dynamic> _$$VillageImplToJson(_$VillageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'vcdc': instance.vcdc,
    };

_$BoothImpl _$$BoothImplFromJson(Map<String, dynamic> json) => _$BoothImpl(
      btcPrimaryId: (json['btc_primary_id'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$BoothImplToJson(_$BoothImpl instance) =>
    <String, dynamic>{
      'btc_primary_id': instance.btcPrimaryId,
      'id': instance.id,
      'name': instance.name,
    };

_$ConstituencyImpl _$$ConstituencyImplFromJson(Map<String, dynamic> json) =>
    _$ConstituencyImpl(
      id: (json['id'] as num).toInt(),
      constituencyType: json['constituency_type'] as String,
      assemblyConstituencyId: (json['assembly_constituency_id'] as num).toInt(),
      districtId: (json['district_id'] as num).toInt(),
      partyDistrictId: (json['party_district_id'] as num).toInt(),
      loksabhaConstituencyId:
          (json['loksabha_constituency_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ConstituencyImplToJson(_$ConstituencyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'constituency_type': instance.constituencyType,
      'assembly_constituency_id': instance.assemblyConstituencyId,
      'district_id': instance.districtId,
      'party_district_id': instance.partyDistrictId,
      'loksabha_constituency_id': instance.loksabhaConstituencyId,
    };

_$AssemblyConstituencyImpl _$$AssemblyConstituencyImplFromJson(
        Map<String, dynamic> json) =>
    _$AssemblyConstituencyImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$AssemblyConstituencyImplToJson(
        _$AssemblyConstituencyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$DistrictImpl _$$DistrictImplFromJson(Map<String, dynamic> json) =>
    _$DistrictImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$DistrictImplToJson(_$DistrictImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$PartyDistrictImpl _$$PartyDistrictImplFromJson(Map<String, dynamic> json) =>
    _$PartyDistrictImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$PartyDistrictImplToJson(_$PartyDistrictImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$PrimaryImpl _$$PrimaryImplFromJson(Map<String, dynamic> json) =>
    _$PrimaryImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      btcAssemblyConstituencyId:
          (json['btc_assembly_constituency_id'] as num).toInt(),
    );

Map<String, dynamic> _$$PrimaryImplToJson(_$PrimaryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'btc_assembly_constituency_id': instance.btcAssemblyConstituencyId,
    };
