// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_member_family_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateMemberFamilyDetailsModelImpl
    _$$UpdateMemberFamilyDetailsModelImplFromJson(Map<String, dynamic> json) =>
        _$UpdateMemberFamilyDetailsModelImpl(
          status: (json['status'] as num).toInt(),
          message: json['message'] as String,
          data: _dataFromJson(json['data']),
          code: (json['code'] as num).toInt(),
        );

Map<String, dynamic> _$$UpdateMemberFamilyDetailsModelImplToJson(
        _$UpdateMemberFamilyDetailsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };

_$MemberDataImpl _$$MemberDataImplFromJson(Map<String, dynamic> json) =>
    _$MemberDataImpl(
      profileData: json['profile_data'] == null
          ? null
          : ProfileData.fromJson(json['profile_data'] as Map<String, dynamic>),
      familyDetails: json['family_details'] == null
          ? null
          : FamilyDetails.fromJson(
              json['family_details'] as Map<String, dynamic>),
      headMemberId: json['head_member_id'] as String?,
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
    );

Map<String, dynamic> _$$MemberDataImplToJson(_$MemberDataImpl instance) =>
    <String, dynamic>{
      'profile_data': instance.profileData,
      'family_details': instance.familyDetails,
      'head_member_id': instance.headMemberId,
      'errors': instance.errors,
    };

_$ProfileDataImpl _$$ProfileDataImplFromJson(Map<String, dynamic> json) =>
    _$ProfileDataImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      refId: json['ref_id'] as String,
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
      createdBy: (json['created_by'] as num?)?.toInt(),
      updateCount: (json['update_count'] as num?)?.toInt(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      village: json['village'] as String,
      photo: json['photo'] as String?,
      district: json['district'] as String,
      districtId: (json['district_id'] as num).toInt(),
      name: json['name'] as String,
      mobileNo: json['mobile_no'] as String?,
      membershipNo: json['membership_no'] as String,
      refCode: json['ref_code'] as String,
      gender: json['gender'] as String,
      dateOfBirth: json['date_of_birth'] as String,
      email: json['email'] as String?,
      joiningDate: json['joining_date'] as String?,
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
      'joining_date': instance.joiningDate,
    };

_$FamilyDetailsImpl _$$FamilyDetailsImplFromJson(Map<String, dynamic> json) =>
    _$FamilyDetailsImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      headMemberId: (json['head_member_id'] as num).toInt(),
      refId: (json['ref_id'] as num).toInt(),
      refCode: json['ref_code'] as String,
      oldRefCode: json['old_ref_code'] as String?,
      membershipNo: json['membership_no'] as String,
      title: json['title'] as String,
      name: json['name'] as String,
      email: json['email'] as String?,
      photo: json['photo'] as String?,
      dateOfBirth: json['date_of_birth'] as String,
      gender: (json['gender'] as num).toInt(),
      address: json['address'] as String,
      pinCode: json['pin_code'] as String,
      btcAssemblyConstituencyId:
          (json['btc_assembly_constituency_id'] as num).toInt(),
      btcConstituency: (json['btc_constituency'] as num).toInt(),
      district: (json['district'] as num).toInt(),
      partyDistrict: (json['party_district'] as num).toInt(),
      assemblyConstituency: (json['assembly_constituency'] as num).toInt(),
      primaryId: (json['primary_id'] as num).toInt(),
      boothId: (json['booth_id'] as num).toInt(),
      villageId: (json['village_id'] as num).toInt(),
      createdBy: (json['created_by'] as num).toInt(),
      updateCount: (json['update_count'] as num).toInt(),
      religion: json['religion'] as String?,
      otherReligion: json['other_religion'] as String?,
      caste: json['caste'] as String?,
      category: json['category'] as String?,
      profession: json['profession'] as String?,
      otherProfession: json['other_profession'] as String?,
      education: json['education'] as String?,
      otherEducation: json['other_education'] as String?,
      aadhaarNo: json['aadhaar_no'] as String,
      voterId: json['voter_id'] as String,
      relationship: (json['relationship'] as num).toInt(),
      country: json['country'] as String?,
      motherTounge: json['mother_tounge'] as String?,
      otherMotherTounge: json['other_mother_tounge'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$FamilyDetailsImplToJson(_$FamilyDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'head_member_id': instance.headMemberId,
      'ref_id': instance.refId,
      'ref_code': instance.refCode,
      'old_ref_code': instance.oldRefCode,
      'membership_no': instance.membershipNo,
      'title': instance.title,
      'name': instance.name,
      'email': instance.email,
      'photo': instance.photo,
      'date_of_birth': instance.dateOfBirth,
      'gender': instance.gender,
      'address': instance.address,
      'pin_code': instance.pinCode,
      'btc_assembly_constituency_id': instance.btcAssemblyConstituencyId,
      'btc_constituency': instance.btcConstituency,
      'district': instance.district,
      'party_district': instance.partyDistrict,
      'assembly_constituency': instance.assemblyConstituency,
      'primary_id': instance.primaryId,
      'booth_id': instance.boothId,
      'village_id': instance.villageId,
      'created_by': instance.createdBy,
      'update_count': instance.updateCount,
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
      'relationship': instance.relationship,
      'country': instance.country,
      'mother_tounge': instance.motherTounge,
      'other_mother_tounge': instance.otherMotherTounge,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
