// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistrationResponseModelImpl _$$RegistrationResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationResponseModelImpl(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : RegistrationData.fromJson(json['data'] as Map<String, dynamic>),
      code: (json['code'] as num?)?.toInt(),
      error: json['error'] == null
          ? null
          : RegistrationError.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RegistrationResponseModelImplToJson(
        _$RegistrationResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
      'error': instance.error,
    };

_$RegistrationDataImpl _$$RegistrationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationDataImpl(
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
      membershipCardData: json['membershipCardData'] == null
          ? null
          : MembershipCardData.fromJson(
              json['membershipCardData'] as Map<String, dynamic>),
      accessToken: json['access_token'] as String?,
      refreshToken: json['refresh_token'] as String?,
    );

Map<String, dynamic> _$$RegistrationDataImplToJson(
        _$RegistrationDataImpl instance) =>
    <String, dynamic>{
      'errors': instance.errors,
      'membershipCardData': instance.membershipCardData,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };

_$MembershipCardDataImpl _$$MembershipCardDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MembershipCardDataImpl(
      name: json['name'] as String?,
      membershipNo: json['membership_no'] as String?,
      mobileNo: json['mobile_no'] as String?,
      email: json['email'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      gender: json['gender'] as String?,
      photo: json['photo'] as String?,
      district: json['district'] as String?,
      refCode: json['ref_code'] as String?,
      joiningDate: json['joining_date'] as String?,
      referralLink: json['referral_link'] as String?,
      noOfRegisteredMember: (json['no_of_registered_member'] as num?)?.toInt(),
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

_$RegistrationErrorImpl _$$RegistrationErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationErrorImpl(
      errors: (json['errors'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
    );

Map<String, dynamic> _$$RegistrationErrorImplToJson(
        _$RegistrationErrorImpl instance) =>
    <String, dynamic>{
      'errors': instance.errors,
    };
