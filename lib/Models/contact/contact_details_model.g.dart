// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactDetailsModelImpl _$$ContactDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ContactDetailsModelImpl(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : ContactDetailsData.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : ContactDetailsError.fromJson(json['error'] as Map<String, dynamic>),
      code: (json['code'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ContactDetailsModelImplToJson(
        _$ContactDetailsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
      'code': instance.code,
      'runtimeType': instance.$type,
    };

_$ContactDetailsModelWithErrorImpl _$$ContactDetailsModelWithErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$ContactDetailsModelWithErrorImpl(
      json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ContactDetailsModelWithErrorImplToJson(
        _$ContactDetailsModelWithErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$ContactDetailsDataImpl _$$ContactDetailsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ContactDetailsDataImpl(
      members: (json['members'] as List<dynamic>)
          .map((e) => Member.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ContactDetailsDataImplToJson(
        _$ContactDetailsDataImpl instance) =>
    <String, dynamic>{
      'members': instance.members,
    };

_$MemberImpl _$$MemberImplFromJson(Map<String, dynamic> json) => _$MemberImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      refId: (json['ref_id'] as num?)?.toInt(),
      oldRefCode: json['old_ref_code'] as String?,
      title: json['title'] as String?,
      address: json['address'] as String?,
      pinCode: json['pinCode'] as String?,
      btcAssemblyConstituencyId:
          (json['btc_assembly_constituency_id'] as num?)?.toInt(),
      btcConstituency: (json['btcConstituency'] as num?)?.toInt(),
      partyDistrict: (json['party_district'] as num?)?.toInt(),
      assemblyConstituency: (json['assemblyConstituency'] as num?)?.toInt(),
      primaryId: json['primaryId'] as String?,
      boothId: json['boothId'] as String?,
      villageId: json['villageId'] as String?,
      createdBy: (json['createdBy'] as num?)?.toInt(),
      updateCount: (json['updateCount'] as num?)?.toInt(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      village: json['village'] as String?,
      photo: json['photo'] as String?,
      district: json['district'] as String?,
      districtId: (json['district_id'] as num?)?.toInt(),
      name: json['name'] as String,
      mobileNo: json['mobile_no'] as String,
      membershipNo: json['membership_no'] as String,
      refCode: json['ref_code'] as String,
      gender: (json['gender'] as num?)?.toInt(),
      dateOfBirth: json['date_of_birth'] as String,
      email: json['email'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$MemberImplToJson(_$MemberImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'ref_id': instance.refId,
      'old_ref_code': instance.oldRefCode,
      'title': instance.title,
      'address': instance.address,
      'pinCode': instance.pinCode,
      'btc_assembly_constituency_id': instance.btcAssemblyConstituencyId,
      'btcConstituency': instance.btcConstituency,
      'party_district': instance.partyDistrict,
      'assemblyConstituency': instance.assemblyConstituency,
      'primaryId': instance.primaryId,
      'boothId': instance.boothId,
      'villageId': instance.villageId,
      'createdBy': instance.createdBy,
      'updateCount': instance.updateCount,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'village': instance.village,
      'photo': instance.photo,
      'district': instance.district,
      'district_id': instance.districtId,
      'name': instance.name,
      'mobile_no': instance.mobileNo,
      'membership_no': instance.membershipNo,
      'ref_code': instance.refCode,
      'gender': instance.gender,
      'date_of_birth': instance.dateOfBirth,
      'email': instance.email,
      'country': instance.country,
    };

_$ContactDetailsErrorImpl _$$ContactDetailsErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$ContactDetailsErrorImpl(
      errors: (json['errors'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
    );

Map<String, dynamic> _$$ContactDetailsErrorImplToJson(
        _$ContactDetailsErrorImpl instance) =>
    <String, dynamic>{
      'errors': instance.errors,
    };
