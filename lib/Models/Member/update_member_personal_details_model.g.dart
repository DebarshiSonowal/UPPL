// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_member_personal_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateMemberPersonalDetailsModelImpl
    _$$UpdateMemberPersonalDetailsModelImplFromJson(
            Map<String, dynamic> json) =>
        _$UpdateMemberPersonalDetailsModelImpl(
          status: (json['status'] as num).toInt(),
          message: json['message'] as String,
          data: json['data'] == null
              ? null
              : UpdateMemberPersonalDetailsData.fromJson(
                  json['data'] as Map<String, dynamic>),
          code: (json['code'] as num).toInt(),
        );

Map<String, dynamic> _$$UpdateMemberPersonalDetailsModelImplToJson(
        _$UpdateMemberPersonalDetailsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };

_$UpdateMemberPersonalDetailsDataImpl
    _$$UpdateMemberPersonalDetailsDataImplFromJson(Map<String, dynamic> json) =>
        _$UpdateMemberPersonalDetailsDataImpl(
          errors: (json['errors'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k, (e as List<dynamic>).map((e) => e as String).toList()),
          ),
          member: json['member'] == null
              ? null
              : MemberDetails.fromJson(json['member'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UpdateMemberPersonalDetailsDataImplToJson(
        _$UpdateMemberPersonalDetailsDataImpl instance) =>
    <String, dynamic>{
      'errors': instance.errors,
      'member': instance.member,
    };

_$MemberDetailsImpl _$$MemberDetailsImplFromJson(Map<String, dynamic> json) =>
    _$MemberDetailsImpl(
      profileData:
          ProfileData.fromJson(json['profile_data'] as Map<String, dynamic>),
      personalDetails: PersonalDetails.fromJson(
          json['personal_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MemberDetailsImplToJson(_$MemberDetailsImpl instance) =>
    <String, dynamic>{
      'profile_data': instance.profileData,
      'personal_details': instance.personalDetails,
    };

_$ProfileDataImpl _$$ProfileDataImplFromJson(Map<String, dynamic> json) =>
    _$ProfileDataImpl(
      id: (json['id'] as num).toInt(),
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
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      village: json['village'] as String,
      photo: json['photo'] as String,
      district: json['district'] as String,
      districtId: (json['district_id'] as num).toInt(),
      name: json['name'] as String,
      mobileNo: json['mobile_no'] as String,
      membershipNo: json['membership_no'] as String,
      refCode: json['ref_code'] as String,
      gender: (json['gender'] as num).toInt(),
      dateOfBirth: json['date_of_birth'] as String,
      email: json['email'] as String?,
      motherTongue: (json['mother_tounge'] as num).toInt(),
      otherMotherTongue: json['other_mother_tounge'] as String?,
    );

Map<String, dynamic> _$$ProfileDataImplToJson(_$ProfileDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
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
      'mother_tounge': instance.motherTongue,
      'other_mother_tounge': instance.otherMotherTongue,
    };

_$PersonalDetailsImpl _$$PersonalDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$PersonalDetailsImpl(
      memberId: (json['member_id'] as num).toInt(),
      name: json['name'] as String,
      dateOfBirth: json['date_of_birth'] as String,
      gender: (json['gender'] as num).toInt(),
      email: json['email'] as String?,
      religion: (json['religion'] as num).toInt(),
      otherReligion: json['other_religion'] as String?,
      caste: json['caste'] as String?,
      category: (json['category'] as num).toInt(),
      profession: (json['profession'] as num).toInt(),
      otherProfession: json['other_profession'] as String?,
      education: (json['education'] as num?)?.toInt(),
      otherEducation: json['other_education'] as String?,
      aadhaarNo: json['aadhaar_no'] as String?,
      voterId: json['voter_id'] as String,
      mobileNo: json['mobile_no'] as String,
      community: (json['community'] as num).toInt(),
      otherCommunity: json['other_community'] as String?,
      motherTongue: (json['mother_tounge'] as num).toInt(),
      otherMotherTongue: json['other_mother_tounge'] as String?,
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
      'community': instance.community,
      'other_community': instance.otherCommunity,
      'mother_tounge': instance.motherTongue,
      'other_mother_tounge': instance.otherMotherTongue,
    };
