// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberDetailsDataImpl _$$MemberDetailsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MemberDetailsDataImpl(
      membershipCardData: MembershipCardData.fromJson(
          json['membership_card_data'] as Map<String, dynamic>),
      personalDetails: MemberPersonalDetails.fromJson(
          json['personal_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MemberDetailsDataImplToJson(
        _$MemberDetailsDataImpl instance) =>
    <String, dynamic>{
      'membership_card_data': instance.membershipCardData,
      'personal_details': instance.personalDetails,
    };

_$MembershipCardDataImpl _$$MembershipCardDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MembershipCardDataImpl(
      name: json['name'] as String,
      membershipNo: json['membership_no'] as String?,
      mobileNo: json['mobile_no'] as String,
      email: json['email'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      gender: (json['gender'] as num?)?.toInt(),
      photo: json['photo'] as String?,
      district: json['district'] as String?,
      refCode: json['ref_code'] as String?,
      joiningDate: json['joining_date'] as String,
      referralLink: json['referral_link'] as String,
      noOfRegisteredMember: (json['no_of_registered_member'] as num).toInt(),
    );

Map<String, dynamic> _$$MembershipCardDataImplToJson(
        _$MembershipCardDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'membership_no': instance.membershipNo,
      'mobile_no': instance.mobileNo,
      'email': instance.email,
      'date_of_birth': instance.dateOfBirth,
      'gender': instance.gender,
      'photo': instance.photo,
      'district': instance.district,
      'ref_code': instance.refCode,
      'joining_date': instance.joiningDate,
      'referral_link': instance.referralLink,
      'no_of_registered_member': instance.noOfRegisteredMember,
    };

_$MemberPersonalDetailsImpl _$$MemberPersonalDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$MemberPersonalDetailsImpl(
      memberId: (json['member_id'] as num).toInt(),
      name: json['name'] as String,
      dateOfBirth: json['date_of_birth'] as String,
      gender: (json['gender'] as num).toInt(),
      email: json['email'] as String?,
      religion: (json['religion'] as num?)?.toInt(),
      caste: json['caste'] as String?,
      community: json['community'] as String?,
      other_community: json['other_community'] as String?,
      category: (json['category'] as num?)?.toInt(),
      profession: (json['profession'] as num?)?.toInt(),
      education: (json['education'] as num?)?.toInt(),
      aadhaarNo: json['aadhaar_no'] as String?,
      voterId: json['voter_id'] as String?,
      mobileNo: json['mobile_no'] as String,
    );

Map<String, dynamic> _$$MemberPersonalDetailsImplToJson(
        _$MemberPersonalDetailsImpl instance) =>
    <String, dynamic>{
      'member_id': instance.memberId,
      'name': instance.name,
      'date_of_birth': instance.dateOfBirth,
      'gender': instance.gender,
      'email': instance.email,
      'religion': instance.religion,
      'caste': instance.caste,
      'community': instance.community,
      'other_community': instance.other_community,
      'category': instance.category,
      'profession': instance.profession,
      'education': instance.education,
      'aadhaar_no': instance.aadhaarNo,
      'voter_id': instance.voterId,
      'mobile_no': instance.mobileNo,
    };

_$MemberDetailsErrorImpl _$$MemberDetailsErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$MemberDetailsErrorImpl(
      errors: (json['errors'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
    );

Map<String, dynamic> _$$MemberDetailsErrorImplToJson(
        _$MemberDetailsErrorImpl instance) =>
    <String, dynamic>{
      'errors': instance.errors,
    };
