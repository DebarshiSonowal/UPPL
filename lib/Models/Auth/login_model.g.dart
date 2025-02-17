// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuccessDataImpl _$$SuccessDataImplFromJson(Map<String, dynamic> json) =>
    _$SuccessDataImpl(
      accessToken: json['access_token'] as String?,
      refreshToken: json['refresh_token'] as String?,
      membershipCardData: json['membershipCardData'] == null
          ? null
          : MembershipCardData.fromJson(
              json['membershipCardData'] as Map<String, dynamic>),
      role: json['role'] as String?,
      phoneNumber: json['phone_number'] as String?,
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
    );

Map<String, dynamic> _$$SuccessDataImplToJson(_$SuccessDataImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'membershipCardData': instance.membershipCardData,
      'role': instance.role,
      'phone_number': instance.phoneNumber,
      'errors': instance.errors,
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
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
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
      'errors': instance.errors,
    };
