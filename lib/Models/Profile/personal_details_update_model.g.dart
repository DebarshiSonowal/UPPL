// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_details_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonalDetailsModelImpl _$$PersonalDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PersonalDetailsModelImpl(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : MemberData.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : PersonalDetailsError.fromJson(
              json['error'] as Map<String, dynamic>),
      code: (json['code'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PersonalDetailsModelImplToJson(
        _$PersonalDetailsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
      'code': instance.code,
      'runtimeType': instance.$type,
    };

_$PersonalDetailsModelWithErrorImpl
    _$$PersonalDetailsModelWithErrorImplFromJson(Map<String, dynamic> json) =>
        _$PersonalDetailsModelWithErrorImpl(
          json['message'] as String,
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$PersonalDetailsModelWithErrorImplToJson(
        _$PersonalDetailsModelWithErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$MemberDataImpl _$$MemberDataImplFromJson(Map<String, dynamic> json) =>
    _$MemberDataImpl(
      profileData:
          ProfileData.fromJson(json['profileData'] as Map<String, dynamic>),
      personalDetails: PersonalDetails.fromJson(
          json['personalDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MemberDataImplToJson(_$MemberDataImpl instance) =>
    <String, dynamic>{
      'profileData': instance.profileData,
      'personalDetails': instance.personalDetails,
    };

_$ProfileDataImpl _$$ProfileDataImplFromJson(Map<String, dynamic> json) =>
    _$ProfileDataImpl(
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
      primaryId: (json['primaryId'] as num?)?.toInt(),
      boothId: (json['boothId'] as num?)?.toInt(),
      villageId: (json['villageId'] as num?)?.toInt(),
      createdBy: (json['createdBy'] as num?)?.toInt(),
      updateCount: (json['updateCount'] as num?)?.toInt(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      village: json['village'] as String?,
      villageId_: (json['village_id '] as num?)?.toInt(),
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
    );

Map<String, dynamic> _$$ProfileDataImplToJson(_$ProfileDataImpl instance) =>
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
      'village_id ': instance.villageId_,
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
    };

_$PersonalDetailsImpl _$$PersonalDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$PersonalDetailsImpl(
      memberId: (json['member_id'] as num).toInt(),
      name: json['name'] as String,
      dateOfBirth: json['date_of_birth'] as String,
      gender: (json['gender'] as num?)?.toInt(),
      email: json['email'] as String?,
      religion: (json['religion'] as num?)?.toInt(),
      otherReligion: json['other_religion'] as String?,
      caste: json['caste'] as String?,
      category: json['category'] as String?,
      profession: (json['profession'] as num?)?.toInt(),
      otherProfession: json['other_profession'] as String?,
      education: (json['education'] as num?)?.toInt(),
      otherEducation: json['other_education'] as String?,
      aadhaarNo: json['aadhaar_no'] as String?,
      voterId: json['voter_id'] as String?,
      mobileNo: json['mobile_no'] as String,
    );

Map<String, dynamic> _$$PersonalDetailsImplToJson(
        _$PersonalDetailsImpl instance) =>
    <String, dynamic>{
      'member_id': instance.memberId,
      'name': instance.name,
      'date_of_birth': instance.dateOfBirth,
      'gender': instance.gender,
      'email': instance.email,
      'religion': instance.religion,
      'other_religion': instance.otherReligion,
      'caste': instance.caste,
      'category': instance.category,
      'profession': instance.profession,
      'other_profession': instance.otherProfession,
      'education': instance.education,
      'other_education': instance.otherEducation,
      'aadhaar_no': instance.aadhaarNo,
      'voter_id': instance.voterId,
      'mobile_no': instance.mobileNo,
    };

_$PersonalDetailsErrorImpl _$$PersonalDetailsErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$PersonalDetailsErrorImpl(
      errors: (json['errors'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
    );

Map<String, dynamic> _$$PersonalDetailsErrorImplToJson(
        _$PersonalDetailsErrorImpl instance) =>
    <String, dynamic>{
      'errors': instance.errors,
    };
