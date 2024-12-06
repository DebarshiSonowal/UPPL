// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joined_by_referral_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JoinedByReferralModelImpl _$$JoinedByReferralModelImplFromJson(
        Map<String, dynamic> json) =>
    _$JoinedByReferralModelImpl(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : JoinedByReferralData.fromJson(json['data'] as Map<String, dynamic>),
      code: (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$$JoinedByReferralModelImplToJson(
        _$JoinedByReferralModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };

_$JoinedByReferralDataImpl _$$JoinedByReferralDataImplFromJson(
        Map<String, dynamic> json) =>
    _$JoinedByReferralDataImpl(
      draw: (json['draw'] as num).toInt(),
      recordsTotal: (json['recordsTotal'] as num).toInt(),
      recordsFiltered: (json['recordsFiltered'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map(
              (e) => JoinedByReferralMember.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$JoinedByReferralDataImplToJson(
        _$JoinedByReferralDataImpl instance) =>
    <String, dynamic>{
      'draw': instance.draw,
      'recordsTotal': instance.recordsTotal,
      'recordsFiltered': instance.recordsFiltered,
      'data': instance.data,
    };

_$JoinedByReferralMemberImpl _$$JoinedByReferralMemberImplFromJson(
        Map<String, dynamic> json) =>
    _$JoinedByReferralMemberImpl(
      memberId: (json['member_id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      refId: (json['ref_id'] as num).toInt(),
      oldRefCode: json['old_ref_code'] as String?,
      title: json['title'] as String,
      address: json['address'] as String,
      pinCode: json['pin_code'] as String,
      btcAssemblyConstituencyId:
          (json['btc_assembly_constituency_id'] as num).toInt(),
      btcConstituency: (json['btc_constituency'] as num).toInt(),
      partyDistrict: (json['party_district'] as num).toInt(),
      assemblyConstituency: (json['assembly_constituency'] as num).toInt(),
      primaryId: (json['primary_id'] as num).toInt(),
      boothId: (json['booth_id'] as num).toInt(),
      villageId: (json['village_id'] as num).toInt(),
      createdBy: (json['created_by'] as num).toInt(),
      updateCount: (json['update_count'] as num).toInt(),
      createdAt: _fromJson(json['created_at'] as String),
      updatedAt: _fromJson(json['updated_at'] as String),
      photo: json['photo'] as String,
      district: (json['district'] as num).toInt(),
      memberName: json['member_name'] as String,
      mobileNo: json['mobile_no'] as String?,
      membershipNo: json['membership_no'] as String,
      refCode: json['ref_code'] as String,
      gender: (json['gender'] as num).toInt(),
      dateOfBirth: _fromJson(json['date_of_birth'] as String),
      email: json['email'] as String?,
      voterId: json['voterId'] as String?,
      villageName: json['village_name'] as String,
      primaryName: json['primary_name'] as String,
      constituencyName: json['constituency_name'] as String,
      districtName: json['district_name'] as String,
      headMemberId: (json['head_member_id'] as num).toInt(),
      headMemberName: json['head_member_name'] as String?,
      relationshipId: (json['relationship_id'] as num?)?.toInt(),
      joiningDate: _fromJson(json['joining_date'] as String),
      relationshipName: json['relationship_name'] as String,
    );

Map<String, dynamic> _$$JoinedByReferralMemberImplToJson(
        _$JoinedByReferralMemberImpl instance) =>
    <String, dynamic>{
      'member_id': instance.memberId,
      'user_id': instance.userId,
      'ref_id': instance.refId,
      'old_ref_code': instance.oldRefCode,
      'title': instance.title,
      'address': instance.address,
      'pin_code': instance.pinCode,
      'btc_assembly_constituency_id': instance.btcAssemblyConstituencyId,
      'btc_constituency': instance.btcConstituency,
      'party_district': instance.partyDistrict,
      'assembly_constituency': instance.assemblyConstituency,
      'primary_id': instance.primaryId,
      'booth_id': instance.boothId,
      'village_id': instance.villageId,
      'created_by': instance.createdBy,
      'update_count': instance.updateCount,
      'created_at': _toJson(instance.createdAt),
      'updated_at': _toJson(instance.updatedAt),
      'photo': instance.photo,
      'district': instance.district,
      'member_name': instance.memberName,
      'mobile_no': instance.mobileNo,
      'membership_no': instance.membershipNo,
      'ref_code': instance.refCode,
      'gender': instance.gender,
      'date_of_birth': _toJson(instance.dateOfBirth),
      'email': instance.email,
      'voterId': instance.voterId,
      'village_name': instance.villageName,
      'primary_name': instance.primaryName,
      'constituency_name': instance.constituencyName,
      'district_name': instance.districtName,
      'head_member_id': instance.headMemberId,
      'head_member_name': instance.headMemberName,
      'relationship_id': instance.relationshipId,
      'joining_date': _toJson(instance.joiningDate),
      'relationship_name': instance.relationshipName,
    };
