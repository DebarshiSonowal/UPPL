// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FamilyDetailsModelImpl _$$FamilyDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FamilyDetailsModelImpl(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      code: (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$$FamilyDetailsModelImplToJson(
        _$FamilyDetailsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      familyDetails: (json['family_details'] as List<dynamic>)
          .map((e) => FamilyDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'family_details': instance.familyDetails,
    };

_$FamilyDetailImpl _$$FamilyDetailImplFromJson(Map<String, dynamic> json) =>
    _$FamilyDetailImpl(
      membershipCard: FamilyMembershipCard.fromJson(
          json['membership_card'] as Map<String, dynamic>),
      personalDetails: FamilyPersonalDetails.fromJson(
          json['personal_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FamilyDetailImplToJson(_$FamilyDetailImpl instance) =>
    <String, dynamic>{
      'membership_card': instance.membershipCard,
      'personal_details': instance.personalDetails,
    };

_$FamilyMembershipCardImpl _$$FamilyMembershipCardImplFromJson(
        Map<String, dynamic> json) =>
    _$FamilyMembershipCardImpl(
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
      primaryName: json['primary_name'] as String?,
      village: json['village'] as String,
      photo: json['photo'] as String?,
      district:
          FamilyDistrict.fromJson(json['district'] as Map<String, dynamic>),
      districtId: (json['district_id'] as num?)?.toInt(),
      name: json['name'] as String,
      mobileNo: json['mobile_no'] as String?,
      membershipNo: json['membership_no'] as String,
      refCode: json['ref_code'] as String,
      gender: (json['gender'] as num).toInt(),
      dateOfBirth: json['date_of_birth'] as String,
      email: json['email'] as String?,
      joiningDate: json['joining_date'] as String,
      relationship: (json['relationship'] as num).toInt(),
      voterId: json['voter_id'] as String,
    );

Map<String, dynamic> _$$FamilyMembershipCardImplToJson(
        _$FamilyMembershipCardImpl instance) =>
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
      'primary_name': instance.primaryName,
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
      'joining_date': instance.joiningDate,
      'relationship': instance.relationship,
      'voter_id': instance.voterId,
    };

_$FamilyDistrictImpl _$$FamilyDistrictImplFromJson(Map<String, dynamic> json) =>
    _$FamilyDistrictImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$FamilyDistrictImplToJson(
        _$FamilyDistrictImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$FamilyPersonalDetailsImpl _$$FamilyPersonalDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$FamilyPersonalDetailsImpl(
      memberId: (json['member_id'] as num).toInt(),
      name: json['name'] as String,
      dateOfBirth: json['date_of_birth'] as String,
      gender: (json['gender'] as num).toInt(),
      email: json['email'] as String?,
      religion: json['religion'] as String?,
      otherReligion: json['other_religion'] as String?,
      caste: json['caste'] as String?,
      category: json['category'] as String?,
      profession: json['profession'] as String?,
      otherProfession: json['other_profession'] as String?,
      education: json['education'] as String?,
      otherEducation: json['other_education'] as String?,
      aadhaarNo: json['aadhaar_no'] as String?,
      voterId: json['voter_id'] as String?,
      mobileNo: json['mobile_no'] as String?,
    );

Map<String, dynamic> _$$FamilyPersonalDetailsImplToJson(
        _$FamilyPersonalDetailsImpl instance) =>
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
