// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileDataModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ProfileDataWrapper? get data => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  /// Create a copy of ProfileDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileDataModelCopyWith<ProfileDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDataModelCopyWith<$Res> {
  factory $ProfileDataModelCopyWith(
          ProfileDataModel value, $Res Function(ProfileDataModel) then) =
      _$ProfileDataModelCopyWithImpl<$Res, ProfileDataModel>;
  @useResult
  $Res call({int status, String message, ProfileDataWrapper? data, int code});

  $ProfileDataWrapperCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProfileDataModelCopyWithImpl<$Res, $Val extends ProfileDataModel>
    implements $ProfileDataModelCopyWith<$Res> {
  _$ProfileDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileDataWrapper?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of ProfileDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileDataWrapperCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProfileDataWrapperCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileDataModelImplCopyWith<$Res>
    implements $ProfileDataModelCopyWith<$Res> {
  factory _$$ProfileDataModelImplCopyWith(_$ProfileDataModelImpl value,
          $Res Function(_$ProfileDataModelImpl) then) =
      __$$ProfileDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, ProfileDataWrapper? data, int code});

  @override
  $ProfileDataWrapperCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ProfileDataModelImplCopyWithImpl<$Res>
    extends _$ProfileDataModelCopyWithImpl<$Res, _$ProfileDataModelImpl>
    implements _$$ProfileDataModelImplCopyWith<$Res> {
  __$$ProfileDataModelImplCopyWithImpl(_$ProfileDataModelImpl _value,
      $Res Function(_$ProfileDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
    Object? code = null,
  }) {
    return _then(_$ProfileDataModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileDataWrapper?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProfileDataModelImpl implements _ProfileDataModel {
  const _$ProfileDataModelImpl(
      {required this.status,
      required this.message,
      this.data,
      required this.code});

  @override
  final int status;
  @override
  final String message;
  @override
  final ProfileDataWrapper? data;
  @override
  final int code;

  @override
  String toString() {
    return 'ProfileDataModel(status: $status, message: $message, data: $data, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDataModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message, data, code);

  /// Create a copy of ProfileDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDataModelImplCopyWith<_$ProfileDataModelImpl> get copyWith =>
      __$$ProfileDataModelImplCopyWithImpl<_$ProfileDataModelImpl>(
          this, _$identity);
}

abstract class _ProfileDataModel implements ProfileDataModel {
  const factory _ProfileDataModel(
      {required final int status,
      required final String message,
      final ProfileDataWrapper? data,
      required final int code}) = _$ProfileDataModelImpl;

  @override
  int get status;
  @override
  String get message;
  @override
  ProfileDataWrapper? get data;
  @override
  int get code;

  /// Create a copy of ProfileDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileDataModelImplCopyWith<_$ProfileDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileDataWrapper _$ProfileDataWrapperFromJson(Map<String, dynamic> json) {
  return _ProfileDataWrapper.fromJson(json);
}

/// @nodoc
mixin _$ProfileDataWrapper {
  @JsonKey(name: 'profile_data')
  ProfileData get profileData => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_details')
  PersonalDetails get personalDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'social_details')
  SocialDetails get socialDetails => throw _privateConstructorUsedError;

  /// Serializes this ProfileDataWrapper to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileDataWrapperCopyWith<ProfileDataWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDataWrapperCopyWith<$Res> {
  factory $ProfileDataWrapperCopyWith(
          ProfileDataWrapper value, $Res Function(ProfileDataWrapper) then) =
      _$ProfileDataWrapperCopyWithImpl<$Res, ProfileDataWrapper>;
  @useResult
  $Res call(
      {@JsonKey(name: 'profile_data') ProfileData profileData,
      @JsonKey(name: 'personal_details') PersonalDetails personalDetails,
      @JsonKey(name: 'social_details') SocialDetails socialDetails});

  $ProfileDataCopyWith<$Res> get profileData;
  $PersonalDetailsCopyWith<$Res> get personalDetails;
  $SocialDetailsCopyWith<$Res> get socialDetails;
}

/// @nodoc
class _$ProfileDataWrapperCopyWithImpl<$Res, $Val extends ProfileDataWrapper>
    implements $ProfileDataWrapperCopyWith<$Res> {
  _$ProfileDataWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileData = null,
    Object? personalDetails = null,
    Object? socialDetails = null,
  }) {
    return _then(_value.copyWith(
      profileData: null == profileData
          ? _value.profileData
          : profileData // ignore: cast_nullable_to_non_nullable
              as ProfileData,
      personalDetails: null == personalDetails
          ? _value.personalDetails
          : personalDetails // ignore: cast_nullable_to_non_nullable
              as PersonalDetails,
      socialDetails: null == socialDetails
          ? _value.socialDetails
          : socialDetails // ignore: cast_nullable_to_non_nullable
              as SocialDetails,
    ) as $Val);
  }

  /// Create a copy of ProfileDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileDataCopyWith<$Res> get profileData {
    return $ProfileDataCopyWith<$Res>(_value.profileData, (value) {
      return _then(_value.copyWith(profileData: value) as $Val);
    });
  }

  /// Create a copy of ProfileDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PersonalDetailsCopyWith<$Res> get personalDetails {
    return $PersonalDetailsCopyWith<$Res>(_value.personalDetails, (value) {
      return _then(_value.copyWith(personalDetails: value) as $Val);
    });
  }

  /// Create a copy of ProfileDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialDetailsCopyWith<$Res> get socialDetails {
    return $SocialDetailsCopyWith<$Res>(_value.socialDetails, (value) {
      return _then(_value.copyWith(socialDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileDataWrapperImplCopyWith<$Res>
    implements $ProfileDataWrapperCopyWith<$Res> {
  factory _$$ProfileDataWrapperImplCopyWith(_$ProfileDataWrapperImpl value,
          $Res Function(_$ProfileDataWrapperImpl) then) =
      __$$ProfileDataWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'profile_data') ProfileData profileData,
      @JsonKey(name: 'personal_details') PersonalDetails personalDetails,
      @JsonKey(name: 'social_details') SocialDetails socialDetails});

  @override
  $ProfileDataCopyWith<$Res> get profileData;
  @override
  $PersonalDetailsCopyWith<$Res> get personalDetails;
  @override
  $SocialDetailsCopyWith<$Res> get socialDetails;
}

/// @nodoc
class __$$ProfileDataWrapperImplCopyWithImpl<$Res>
    extends _$ProfileDataWrapperCopyWithImpl<$Res, _$ProfileDataWrapperImpl>
    implements _$$ProfileDataWrapperImplCopyWith<$Res> {
  __$$ProfileDataWrapperImplCopyWithImpl(_$ProfileDataWrapperImpl _value,
      $Res Function(_$ProfileDataWrapperImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileData = null,
    Object? personalDetails = null,
    Object? socialDetails = null,
  }) {
    return _then(_$ProfileDataWrapperImpl(
      profileData: null == profileData
          ? _value.profileData
          : profileData // ignore: cast_nullable_to_non_nullable
              as ProfileData,
      personalDetails: null == personalDetails
          ? _value.personalDetails
          : personalDetails // ignore: cast_nullable_to_non_nullable
              as PersonalDetails,
      socialDetails: null == socialDetails
          ? _value.socialDetails
          : socialDetails // ignore: cast_nullable_to_non_nullable
              as SocialDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileDataWrapperImpl implements _ProfileDataWrapper {
  const _$ProfileDataWrapperImpl(
      {@JsonKey(name: 'profile_data') required this.profileData,
      @JsonKey(name: 'personal_details') required this.personalDetails,
      @JsonKey(name: 'social_details') required this.socialDetails});

  factory _$ProfileDataWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileDataWrapperImplFromJson(json);

  @override
  @JsonKey(name: 'profile_data')
  final ProfileData profileData;
  @override
  @JsonKey(name: 'personal_details')
  final PersonalDetails personalDetails;
  @override
  @JsonKey(name: 'social_details')
  final SocialDetails socialDetails;

  @override
  String toString() {
    return 'ProfileDataWrapper(profileData: $profileData, personalDetails: $personalDetails, socialDetails: $socialDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDataWrapperImpl &&
            (identical(other.profileData, profileData) ||
                other.profileData == profileData) &&
            (identical(other.personalDetails, personalDetails) ||
                other.personalDetails == personalDetails) &&
            (identical(other.socialDetails, socialDetails) ||
                other.socialDetails == socialDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, profileData, personalDetails, socialDetails);

  /// Create a copy of ProfileDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDataWrapperImplCopyWith<_$ProfileDataWrapperImpl> get copyWith =>
      __$$ProfileDataWrapperImplCopyWithImpl<_$ProfileDataWrapperImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileDataWrapperImplToJson(
      this,
    );
  }
}

abstract class _ProfileDataWrapper implements ProfileDataWrapper {
  const factory _ProfileDataWrapper(
      {@JsonKey(name: 'profile_data') required final ProfileData profileData,
      @JsonKey(name: 'personal_details')
      required final PersonalDetails personalDetails,
      @JsonKey(name: 'social_details')
      required final SocialDetails socialDetails}) = _$ProfileDataWrapperImpl;

  factory _ProfileDataWrapper.fromJson(Map<String, dynamic> json) =
      _$ProfileDataWrapperImpl.fromJson;

  @override
  @JsonKey(name: 'profile_data')
  ProfileData get profileData;
  @override
  @JsonKey(name: 'personal_details')
  PersonalDetails get personalDetails;
  @override
  @JsonKey(name: 'social_details')
  SocialDetails get socialDetails;

  /// Create a copy of ProfileDataWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileDataWrapperImplCopyWith<_$ProfileDataWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileData _$ProfileDataFromJson(Map<String, dynamic> json) {
  return _ProfileData.fromJson(json);
}

/// @nodoc
mixin _$ProfileData {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ref_id')
  int get refId => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_ref_code')
  String? get oldRefCode => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'pin_code')
  String get pinCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'btc_assembly_constituency_id')
  int? get btcAssemblyConstituencyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'btc_constituency')
  int? get btcConstituency => throw _privateConstructorUsedError;
  @JsonKey(name: 'party_district')
  int? get partyDistrict => throw _privateConstructorUsedError;
  @JsonKey(name: 'assembly_constituency')
  int get assemblyConstituency => throw _privateConstructorUsedError;
  @JsonKey(name: 'primary_id')
  int get primaryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'booth_id')
  int get boothId => throw _privateConstructorUsedError;
  @JsonKey(name: 'village_id')
  int get villageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  int get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'update_count')
  int get updateCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  String get village => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo')
  String? get photo => throw _privateConstructorUsedError;
  String get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'district_id')
  int get districtId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_no')
  String get mobileNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_no')
  String get membershipNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'ref_code')
  String get refCode => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'mother_tounge')
  int? get motherTounge => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_mother_tounge')
  String? get otherMotherTounge => throw _privateConstructorUsedError;

  /// Serializes this ProfileData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileDataCopyWith<ProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDataCopyWith<$Res> {
  factory $ProfileDataCopyWith(
          ProfileData value, $Res Function(ProfileData) then) =
      _$ProfileDataCopyWithImpl<$Res, ProfileData>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'ref_id') int refId,
      @JsonKey(name: 'old_ref_code') String? oldRefCode,
      String title,
      String address,
      @JsonKey(name: 'pin_code') String pinCode,
      @JsonKey(name: 'btc_assembly_constituency_id')
      int? btcAssemblyConstituencyId,
      @JsonKey(name: 'btc_constituency') int? btcConstituency,
      @JsonKey(name: 'party_district') int? partyDistrict,
      @JsonKey(name: 'assembly_constituency') int assemblyConstituency,
      @JsonKey(name: 'primary_id') int primaryId,
      @JsonKey(name: 'booth_id') int boothId,
      @JsonKey(name: 'village_id') int villageId,
      @JsonKey(name: 'created_by') int createdBy,
      @JsonKey(name: 'update_count') int updateCount,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      String village,
      @JsonKey(name: 'photo') String? photo,
      String district,
      @JsonKey(name: 'district_id') int districtId,
      String name,
      @JsonKey(name: 'mobile_no') String mobileNo,
      @JsonKey(name: 'membership_no') String membershipNo,
      @JsonKey(name: 'ref_code') String refCode,
      int gender,
      @JsonKey(name: 'date_of_birth') String dateOfBirth,
      String? email,
      @JsonKey(name: 'mother_tounge') int? motherTounge,
      @JsonKey(name: 'other_mother_tounge') String? otherMotherTounge});
}

/// @nodoc
class _$ProfileDataCopyWithImpl<$Res, $Val extends ProfileData>
    implements $ProfileDataCopyWith<$Res> {
  _$ProfileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? refId = null,
    Object? oldRefCode = freezed,
    Object? title = null,
    Object? address = null,
    Object? pinCode = null,
    Object? btcAssemblyConstituencyId = freezed,
    Object? btcConstituency = freezed,
    Object? partyDistrict = freezed,
    Object? assemblyConstituency = null,
    Object? primaryId = null,
    Object? boothId = null,
    Object? villageId = null,
    Object? createdBy = null,
    Object? updateCount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? village = null,
    Object? photo = freezed,
    Object? district = null,
    Object? districtId = null,
    Object? name = null,
    Object? mobileNo = null,
    Object? membershipNo = null,
    Object? refCode = null,
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? email = freezed,
    Object? motherTounge = freezed,
    Object? otherMotherTounge = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      refId: null == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as int,
      oldRefCode: freezed == oldRefCode
          ? _value.oldRefCode
          : oldRefCode // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      btcAssemblyConstituencyId: freezed == btcAssemblyConstituencyId
          ? _value.btcAssemblyConstituencyId
          : btcAssemblyConstituencyId // ignore: cast_nullable_to_non_nullable
              as int?,
      btcConstituency: freezed == btcConstituency
          ? _value.btcConstituency
          : btcConstituency // ignore: cast_nullable_to_non_nullable
              as int?,
      partyDistrict: freezed == partyDistrict
          ? _value.partyDistrict
          : partyDistrict // ignore: cast_nullable_to_non_nullable
              as int?,
      assemblyConstituency: null == assemblyConstituency
          ? _value.assemblyConstituency
          : assemblyConstituency // ignore: cast_nullable_to_non_nullable
              as int,
      primaryId: null == primaryId
          ? _value.primaryId
          : primaryId // ignore: cast_nullable_to_non_nullable
              as int,
      boothId: null == boothId
          ? _value.boothId
          : boothId // ignore: cast_nullable_to_non_nullable
              as int,
      villageId: null == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as int,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
      updateCount: null == updateCount
          ? _value.updateCount
          : updateCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      village: null == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      districtId: null == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNo: null == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String,
      membershipNo: null == membershipNo
          ? _value.membershipNo
          : membershipNo // ignore: cast_nullable_to_non_nullable
              as String,
      refCode: null == refCode
          ? _value.refCode
          : refCode // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      motherTounge: freezed == motherTounge
          ? _value.motherTounge
          : motherTounge // ignore: cast_nullable_to_non_nullable
              as int?,
      otherMotherTounge: freezed == otherMotherTounge
          ? _value.otherMotherTounge
          : otherMotherTounge // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileDataImplCopyWith<$Res>
    implements $ProfileDataCopyWith<$Res> {
  factory _$$ProfileDataImplCopyWith(
          _$ProfileDataImpl value, $Res Function(_$ProfileDataImpl) then) =
      __$$ProfileDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'ref_id') int refId,
      @JsonKey(name: 'old_ref_code') String? oldRefCode,
      String title,
      String address,
      @JsonKey(name: 'pin_code') String pinCode,
      @JsonKey(name: 'btc_assembly_constituency_id')
      int? btcAssemblyConstituencyId,
      @JsonKey(name: 'btc_constituency') int? btcConstituency,
      @JsonKey(name: 'party_district') int? partyDistrict,
      @JsonKey(name: 'assembly_constituency') int assemblyConstituency,
      @JsonKey(name: 'primary_id') int primaryId,
      @JsonKey(name: 'booth_id') int boothId,
      @JsonKey(name: 'village_id') int villageId,
      @JsonKey(name: 'created_by') int createdBy,
      @JsonKey(name: 'update_count') int updateCount,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      String village,
      @JsonKey(name: 'photo') String? photo,
      String district,
      @JsonKey(name: 'district_id') int districtId,
      String name,
      @JsonKey(name: 'mobile_no') String mobileNo,
      @JsonKey(name: 'membership_no') String membershipNo,
      @JsonKey(name: 'ref_code') String refCode,
      int gender,
      @JsonKey(name: 'date_of_birth') String dateOfBirth,
      String? email,
      @JsonKey(name: 'mother_tounge') int? motherTounge,
      @JsonKey(name: 'other_mother_tounge') String? otherMotherTounge});
}

/// @nodoc
class __$$ProfileDataImplCopyWithImpl<$Res>
    extends _$ProfileDataCopyWithImpl<$Res, _$ProfileDataImpl>
    implements _$$ProfileDataImplCopyWith<$Res> {
  __$$ProfileDataImplCopyWithImpl(
      _$ProfileDataImpl _value, $Res Function(_$ProfileDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? refId = null,
    Object? oldRefCode = freezed,
    Object? title = null,
    Object? address = null,
    Object? pinCode = null,
    Object? btcAssemblyConstituencyId = freezed,
    Object? btcConstituency = freezed,
    Object? partyDistrict = freezed,
    Object? assemblyConstituency = null,
    Object? primaryId = null,
    Object? boothId = null,
    Object? villageId = null,
    Object? createdBy = null,
    Object? updateCount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? village = null,
    Object? photo = freezed,
    Object? district = null,
    Object? districtId = null,
    Object? name = null,
    Object? mobileNo = null,
    Object? membershipNo = null,
    Object? refCode = null,
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? email = freezed,
    Object? motherTounge = freezed,
    Object? otherMotherTounge = freezed,
  }) {
    return _then(_$ProfileDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      refId: null == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as int,
      oldRefCode: freezed == oldRefCode
          ? _value.oldRefCode
          : oldRefCode // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      btcAssemblyConstituencyId: freezed == btcAssemblyConstituencyId
          ? _value.btcAssemblyConstituencyId
          : btcAssemblyConstituencyId // ignore: cast_nullable_to_non_nullable
              as int?,
      btcConstituency: freezed == btcConstituency
          ? _value.btcConstituency
          : btcConstituency // ignore: cast_nullable_to_non_nullable
              as int?,
      partyDistrict: freezed == partyDistrict
          ? _value.partyDistrict
          : partyDistrict // ignore: cast_nullable_to_non_nullable
              as int?,
      assemblyConstituency: null == assemblyConstituency
          ? _value.assemblyConstituency
          : assemblyConstituency // ignore: cast_nullable_to_non_nullable
              as int,
      primaryId: null == primaryId
          ? _value.primaryId
          : primaryId // ignore: cast_nullable_to_non_nullable
              as int,
      boothId: null == boothId
          ? _value.boothId
          : boothId // ignore: cast_nullable_to_non_nullable
              as int,
      villageId: null == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as int,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
      updateCount: null == updateCount
          ? _value.updateCount
          : updateCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      village: null == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      districtId: null == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNo: null == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String,
      membershipNo: null == membershipNo
          ? _value.membershipNo
          : membershipNo // ignore: cast_nullable_to_non_nullable
              as String,
      refCode: null == refCode
          ? _value.refCode
          : refCode // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      motherTounge: freezed == motherTounge
          ? _value.motherTounge
          : motherTounge // ignore: cast_nullable_to_non_nullable
              as int?,
      otherMotherTounge: freezed == otherMotherTounge
          ? _value.otherMotherTounge
          : otherMotherTounge // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileDataImpl implements _ProfileData {
  const _$ProfileDataImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'ref_id') required this.refId,
      @JsonKey(name: 'old_ref_code') this.oldRefCode,
      required this.title,
      required this.address,
      @JsonKey(name: 'pin_code') required this.pinCode,
      @JsonKey(name: 'btc_assembly_constituency_id')
      required this.btcAssemblyConstituencyId,
      @JsonKey(name: 'btc_constituency') required this.btcConstituency,
      @JsonKey(name: 'party_district') required this.partyDistrict,
      @JsonKey(name: 'assembly_constituency')
      required this.assemblyConstituency,
      @JsonKey(name: 'primary_id') required this.primaryId,
      @JsonKey(name: 'booth_id') required this.boothId,
      @JsonKey(name: 'village_id') required this.villageId,
      @JsonKey(name: 'created_by') required this.createdBy,
      @JsonKey(name: 'update_count') required this.updateCount,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required this.village,
      @JsonKey(name: 'photo') this.photo,
      required this.district,
      @JsonKey(name: 'district_id') required this.districtId,
      required this.name,
      @JsonKey(name: 'mobile_no') required this.mobileNo,
      @JsonKey(name: 'membership_no') required this.membershipNo,
      @JsonKey(name: 'ref_code') required this.refCode,
      required this.gender,
      @JsonKey(name: 'date_of_birth') required this.dateOfBirth,
      this.email,
      @JsonKey(name: 'mother_tounge') this.motherTounge,
      @JsonKey(name: 'other_mother_tounge') this.otherMotherTounge});

  factory _$ProfileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileDataImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'ref_id')
  final int refId;
  @override
  @JsonKey(name: 'old_ref_code')
  final String? oldRefCode;
  @override
  final String title;
  @override
  final String address;
  @override
  @JsonKey(name: 'pin_code')
  final String pinCode;
  @override
  @JsonKey(name: 'btc_assembly_constituency_id')
  final int? btcAssemblyConstituencyId;
  @override
  @JsonKey(name: 'btc_constituency')
  final int? btcConstituency;
  @override
  @JsonKey(name: 'party_district')
  final int? partyDistrict;
  @override
  @JsonKey(name: 'assembly_constituency')
  final int assemblyConstituency;
  @override
  @JsonKey(name: 'primary_id')
  final int primaryId;
  @override
  @JsonKey(name: 'booth_id')
  final int boothId;
  @override
  @JsonKey(name: 'village_id')
  final int villageId;
  @override
  @JsonKey(name: 'created_by')
  final int createdBy;
  @override
  @JsonKey(name: 'update_count')
  final int updateCount;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  final String village;
  @override
  @JsonKey(name: 'photo')
  final String? photo;
  @override
  final String district;
  @override
  @JsonKey(name: 'district_id')
  final int districtId;
  @override
  final String name;
  @override
  @JsonKey(name: 'mobile_no')
  final String mobileNo;
  @override
  @JsonKey(name: 'membership_no')
  final String membershipNo;
  @override
  @JsonKey(name: 'ref_code')
  final String refCode;
  @override
  final int gender;
  @override
  @JsonKey(name: 'date_of_birth')
  final String dateOfBirth;
  @override
  final String? email;
  @override
  @JsonKey(name: 'mother_tounge')
  final int? motherTounge;
  @override
  @JsonKey(name: 'other_mother_tounge')
  final String? otherMotherTounge;

  @override
  String toString() {
    return 'ProfileData(id: $id, userId: $userId, refId: $refId, oldRefCode: $oldRefCode, title: $title, address: $address, pinCode: $pinCode, btcAssemblyConstituencyId: $btcAssemblyConstituencyId, btcConstituency: $btcConstituency, partyDistrict: $partyDistrict, assemblyConstituency: $assemblyConstituency, primaryId: $primaryId, boothId: $boothId, villageId: $villageId, createdBy: $createdBy, updateCount: $updateCount, createdAt: $createdAt, updatedAt: $updatedAt, village: $village, photo: $photo, district: $district, districtId: $districtId, name: $name, mobileNo: $mobileNo, membershipNo: $membershipNo, refCode: $refCode, gender: $gender, dateOfBirth: $dateOfBirth, email: $email, motherTounge: $motherTounge, otherMotherTounge: $otherMotherTounge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.refId, refId) || other.refId == refId) &&
            (identical(other.oldRefCode, oldRefCode) ||
                other.oldRefCode == oldRefCode) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.btcAssemblyConstituencyId,
                    btcAssemblyConstituencyId) ||
                other.btcAssemblyConstituencyId == btcAssemblyConstituencyId) &&
            (identical(other.btcConstituency, btcConstituency) ||
                other.btcConstituency == btcConstituency) &&
            (identical(other.partyDistrict, partyDistrict) ||
                other.partyDistrict == partyDistrict) &&
            (identical(other.assemblyConstituency, assemblyConstituency) ||
                other.assemblyConstituency == assemblyConstituency) &&
            (identical(other.primaryId, primaryId) ||
                other.primaryId == primaryId) &&
            (identical(other.boothId, boothId) || other.boothId == boothId) &&
            (identical(other.villageId, villageId) ||
                other.villageId == villageId) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updateCount, updateCount) ||
                other.updateCount == updateCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.village, village) || other.village == village) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.districtId, districtId) ||
                other.districtId == districtId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo) &&
            (identical(other.membershipNo, membershipNo) ||
                other.membershipNo == membershipNo) &&
            (identical(other.refCode, refCode) || other.refCode == refCode) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.motherTounge, motherTounge) ||
                other.motherTounge == motherTounge) &&
            (identical(other.otherMotherTounge, otherMotherTounge) ||
                other.otherMotherTounge == otherMotherTounge));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        refId,
        oldRefCode,
        title,
        address,
        pinCode,
        btcAssemblyConstituencyId,
        btcConstituency,
        partyDistrict,
        assemblyConstituency,
        primaryId,
        boothId,
        villageId,
        createdBy,
        updateCount,
        createdAt,
        updatedAt,
        village,
        photo,
        district,
        districtId,
        name,
        mobileNo,
        membershipNo,
        refCode,
        gender,
        dateOfBirth,
        email,
        motherTounge,
        otherMotherTounge
      ]);

  /// Create a copy of ProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDataImplCopyWith<_$ProfileDataImpl> get copyWith =>
      __$$ProfileDataImplCopyWithImpl<_$ProfileDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileDataImplToJson(
      this,
    );
  }
}

abstract class _ProfileData implements ProfileData {
  const factory _ProfileData(
      {required final int id,
      @JsonKey(name: 'user_id') required final int userId,
      @JsonKey(name: 'ref_id') required final int refId,
      @JsonKey(name: 'old_ref_code') final String? oldRefCode,
      required final String title,
      required final String address,
      @JsonKey(name: 'pin_code') required final String pinCode,
      @JsonKey(name: 'btc_assembly_constituency_id')
      required final int? btcAssemblyConstituencyId,
      @JsonKey(name: 'btc_constituency') required final int? btcConstituency,
      @JsonKey(name: 'party_district') required final int? partyDistrict,
      @JsonKey(name: 'assembly_constituency')
      required final int assemblyConstituency,
      @JsonKey(name: 'primary_id') required final int primaryId,
      @JsonKey(name: 'booth_id') required final int boothId,
      @JsonKey(name: 'village_id') required final int villageId,
      @JsonKey(name: 'created_by') required final int createdBy,
      @JsonKey(name: 'update_count') required final int updateCount,
      @JsonKey(name: 'created_at') required final String createdAt,
      @JsonKey(name: 'updated_at') required final String updatedAt,
      required final String village,
      @JsonKey(name: 'photo') final String? photo,
      required final String district,
      @JsonKey(name: 'district_id') required final int districtId,
      required final String name,
      @JsonKey(name: 'mobile_no') required final String mobileNo,
      @JsonKey(name: 'membership_no') required final String membershipNo,
      @JsonKey(name: 'ref_code') required final String refCode,
      required final int gender,
      @JsonKey(name: 'date_of_birth') required final String dateOfBirth,
      final String? email,
      @JsonKey(name: 'mother_tounge') final int? motherTounge,
      @JsonKey(name: 'other_mother_tounge')
      final String? otherMotherTounge}) = _$ProfileDataImpl;

  factory _ProfileData.fromJson(Map<String, dynamic> json) =
      _$ProfileDataImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'ref_id')
  int get refId;
  @override
  @JsonKey(name: 'old_ref_code')
  String? get oldRefCode;
  @override
  String get title;
  @override
  String get address;
  @override
  @JsonKey(name: 'pin_code')
  String get pinCode;
  @override
  @JsonKey(name: 'btc_assembly_constituency_id')
  int? get btcAssemblyConstituencyId;
  @override
  @JsonKey(name: 'btc_constituency')
  int? get btcConstituency;
  @override
  @JsonKey(name: 'party_district')
  int? get partyDistrict;
  @override
  @JsonKey(name: 'assembly_constituency')
  int get assemblyConstituency;
  @override
  @JsonKey(name: 'primary_id')
  int get primaryId;
  @override
  @JsonKey(name: 'booth_id')
  int get boothId;
  @override
  @JsonKey(name: 'village_id')
  int get villageId;
  @override
  @JsonKey(name: 'created_by')
  int get createdBy;
  @override
  @JsonKey(name: 'update_count')
  int get updateCount;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  String get village;
  @override
  @JsonKey(name: 'photo')
  String? get photo;
  @override
  String get district;
  @override
  @JsonKey(name: 'district_id')
  int get districtId;
  @override
  String get name;
  @override
  @JsonKey(name: 'mobile_no')
  String get mobileNo;
  @override
  @JsonKey(name: 'membership_no')
  String get membershipNo;
  @override
  @JsonKey(name: 'ref_code')
  String get refCode;
  @override
  int get gender;
  @override
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth;
  @override
  String? get email;
  @override
  @JsonKey(name: 'mother_tounge')
  int? get motherTounge;
  @override
  @JsonKey(name: 'other_mother_tounge')
  String? get otherMotherTounge;

  /// Create a copy of ProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileDataImplCopyWith<_$ProfileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PersonalDetails _$PersonalDetailsFromJson(Map<String, dynamic> json) {
  return _PersonalDetails.fromJson(json);
}

/// @nodoc
mixin _$PersonalDetails {
  @JsonKey(name: 'member_id')
  int get memberId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'religion')
  int? get religion => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_religion')
  String? get otherReligion => throw _privateConstructorUsedError;
  String? get caste => throw _privateConstructorUsedError;
  int? get category => throw _privateConstructorUsedError;
  int? get profession => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_profession')
  String? get otherProfession => throw _privateConstructorUsedError;
  int? get education => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_education')
  String? get otherEducation => throw _privateConstructorUsedError;
  @JsonKey(name: 'aadhaar_no')
  String? get aadhaarNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'voter_id')
  String? get voterId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_no')
  String get mobileNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'mother_tounge')
  int? get motherTounge => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_mother_tounge')
  String? get otherMotherTounge => throw _privateConstructorUsedError;

  /// Serializes this PersonalDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PersonalDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PersonalDetailsCopyWith<PersonalDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalDetailsCopyWith<$Res> {
  factory $PersonalDetailsCopyWith(
          PersonalDetails value, $Res Function(PersonalDetails) then) =
      _$PersonalDetailsCopyWithImpl<$Res, PersonalDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'member_id') int memberId,
      String name,
      @JsonKey(name: 'date_of_birth') String dateOfBirth,
      int gender,
      String? email,
      @JsonKey(name: 'religion') int? religion,
      @JsonKey(name: 'other_religion') String? otherReligion,
      String? caste,
      int? category,
      int? profession,
      @JsonKey(name: 'other_profession') String? otherProfession,
      int? education,
      @JsonKey(name: 'other_education') String? otherEducation,
      @JsonKey(name: 'aadhaar_no') String? aadhaarNo,
      @JsonKey(name: 'voter_id') String? voterId,
      @JsonKey(name: 'mobile_no') String mobileNo,
      @JsonKey(name: 'mother_tounge') int? motherTounge,
      @JsonKey(name: 'other_mother_tounge') String? otherMotherTounge});
}

/// @nodoc
class _$PersonalDetailsCopyWithImpl<$Res, $Val extends PersonalDetails>
    implements $PersonalDetailsCopyWith<$Res> {
  _$PersonalDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PersonalDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? name = null,
    Object? dateOfBirth = null,
    Object? gender = null,
    Object? email = freezed,
    Object? religion = freezed,
    Object? otherReligion = freezed,
    Object? caste = freezed,
    Object? category = freezed,
    Object? profession = freezed,
    Object? otherProfession = freezed,
    Object? education = freezed,
    Object? otherEducation = freezed,
    Object? aadhaarNo = freezed,
    Object? voterId = freezed,
    Object? mobileNo = null,
    Object? motherTounge = freezed,
    Object? otherMotherTounge = freezed,
  }) {
    return _then(_value.copyWith(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      religion: freezed == religion
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as int?,
      otherReligion: freezed == otherReligion
          ? _value.otherReligion
          : otherReligion // ignore: cast_nullable_to_non_nullable
              as String?,
      caste: freezed == caste
          ? _value.caste
          : caste // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as int?,
      otherProfession: freezed == otherProfession
          ? _value.otherProfession
          : otherProfession // ignore: cast_nullable_to_non_nullable
              as String?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as int?,
      otherEducation: freezed == otherEducation
          ? _value.otherEducation
          : otherEducation // ignore: cast_nullable_to_non_nullable
              as String?,
      aadhaarNo: freezed == aadhaarNo
          ? _value.aadhaarNo
          : aadhaarNo // ignore: cast_nullable_to_non_nullable
              as String?,
      voterId: freezed == voterId
          ? _value.voterId
          : voterId // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: null == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String,
      motherTounge: freezed == motherTounge
          ? _value.motherTounge
          : motherTounge // ignore: cast_nullable_to_non_nullable
              as int?,
      otherMotherTounge: freezed == otherMotherTounge
          ? _value.otherMotherTounge
          : otherMotherTounge // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonalDetailsImplCopyWith<$Res>
    implements $PersonalDetailsCopyWith<$Res> {
  factory _$$PersonalDetailsImplCopyWith(_$PersonalDetailsImpl value,
          $Res Function(_$PersonalDetailsImpl) then) =
      __$$PersonalDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'member_id') int memberId,
      String name,
      @JsonKey(name: 'date_of_birth') String dateOfBirth,
      int gender,
      String? email,
      @JsonKey(name: 'religion') int? religion,
      @JsonKey(name: 'other_religion') String? otherReligion,
      String? caste,
      int? category,
      int? profession,
      @JsonKey(name: 'other_profession') String? otherProfession,
      int? education,
      @JsonKey(name: 'other_education') String? otherEducation,
      @JsonKey(name: 'aadhaar_no') String? aadhaarNo,
      @JsonKey(name: 'voter_id') String? voterId,
      @JsonKey(name: 'mobile_no') String mobileNo,
      @JsonKey(name: 'mother_tounge') int? motherTounge,
      @JsonKey(name: 'other_mother_tounge') String? otherMotherTounge});
}

/// @nodoc
class __$$PersonalDetailsImplCopyWithImpl<$Res>
    extends _$PersonalDetailsCopyWithImpl<$Res, _$PersonalDetailsImpl>
    implements _$$PersonalDetailsImplCopyWith<$Res> {
  __$$PersonalDetailsImplCopyWithImpl(
      _$PersonalDetailsImpl _value, $Res Function(_$PersonalDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PersonalDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? name = null,
    Object? dateOfBirth = null,
    Object? gender = null,
    Object? email = freezed,
    Object? religion = freezed,
    Object? otherReligion = freezed,
    Object? caste = freezed,
    Object? category = freezed,
    Object? profession = freezed,
    Object? otherProfession = freezed,
    Object? education = freezed,
    Object? otherEducation = freezed,
    Object? aadhaarNo = freezed,
    Object? voterId = freezed,
    Object? mobileNo = null,
    Object? motherTounge = freezed,
    Object? otherMotherTounge = freezed,
  }) {
    return _then(_$PersonalDetailsImpl(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      religion: freezed == religion
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as int?,
      otherReligion: freezed == otherReligion
          ? _value.otherReligion
          : otherReligion // ignore: cast_nullable_to_non_nullable
              as String?,
      caste: freezed == caste
          ? _value.caste
          : caste // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as int?,
      otherProfession: freezed == otherProfession
          ? _value.otherProfession
          : otherProfession // ignore: cast_nullable_to_non_nullable
              as String?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as int?,
      otherEducation: freezed == otherEducation
          ? _value.otherEducation
          : otherEducation // ignore: cast_nullable_to_non_nullable
              as String?,
      aadhaarNo: freezed == aadhaarNo
          ? _value.aadhaarNo
          : aadhaarNo // ignore: cast_nullable_to_non_nullable
              as String?,
      voterId: freezed == voterId
          ? _value.voterId
          : voterId // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: null == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String,
      motherTounge: freezed == motherTounge
          ? _value.motherTounge
          : motherTounge // ignore: cast_nullable_to_non_nullable
              as int?,
      otherMotherTounge: freezed == otherMotherTounge
          ? _value.otherMotherTounge
          : otherMotherTounge // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonalDetailsImpl implements _PersonalDetails {
  const _$PersonalDetailsImpl(
      {@JsonKey(name: 'member_id') required this.memberId,
      required this.name,
      @JsonKey(name: 'date_of_birth') required this.dateOfBirth,
      required this.gender,
      this.email,
      @JsonKey(name: 'religion') this.religion,
      @JsonKey(name: 'other_religion') this.otherReligion,
      this.caste,
      this.category,
      this.profession,
      @JsonKey(name: 'other_profession') this.otherProfession,
      this.education,
      @JsonKey(name: 'other_education') this.otherEducation,
      @JsonKey(name: 'aadhaar_no') this.aadhaarNo,
      @JsonKey(name: 'voter_id') this.voterId,
      @JsonKey(name: 'mobile_no') required this.mobileNo,
      @JsonKey(name: 'mother_tounge') this.motherTounge,
      @JsonKey(name: 'other_mother_tounge') this.otherMotherTounge});

  factory _$PersonalDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonalDetailsImplFromJson(json);

  @override
  @JsonKey(name: 'member_id')
  final int memberId;
  @override
  final String name;
  @override
  @JsonKey(name: 'date_of_birth')
  final String dateOfBirth;
  @override
  final int gender;
  @override
  final String? email;
  @override
  @JsonKey(name: 'religion')
  final int? religion;
  @override
  @JsonKey(name: 'other_religion')
  final String? otherReligion;
  @override
  final String? caste;
  @override
  final int? category;
  @override
  final int? profession;
  @override
  @JsonKey(name: 'other_profession')
  final String? otherProfession;
  @override
  final int? education;
  @override
  @JsonKey(name: 'other_education')
  final String? otherEducation;
  @override
  @JsonKey(name: 'aadhaar_no')
  final String? aadhaarNo;
  @override
  @JsonKey(name: 'voter_id')
  final String? voterId;
  @override
  @JsonKey(name: 'mobile_no')
  final String mobileNo;
  @override
  @JsonKey(name: 'mother_tounge')
  final int? motherTounge;
  @override
  @JsonKey(name: 'other_mother_tounge')
  final String? otherMotherTounge;

  @override
  String toString() {
    return 'PersonalDetails(memberId: $memberId, name: $name, dateOfBirth: $dateOfBirth, gender: $gender, email: $email, religion: $religion, otherReligion: $otherReligion, caste: $caste, category: $category, profession: $profession, otherProfession: $otherProfession, education: $education, otherEducation: $otherEducation, aadhaarNo: $aadhaarNo, voterId: $voterId, mobileNo: $mobileNo, motherTounge: $motherTounge, otherMotherTounge: $otherMotherTounge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalDetailsImpl &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.religion, religion) ||
                other.religion == religion) &&
            (identical(other.otherReligion, otherReligion) ||
                other.otherReligion == otherReligion) &&
            (identical(other.caste, caste) || other.caste == caste) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.otherProfession, otherProfession) ||
                other.otherProfession == otherProfession) &&
            (identical(other.education, education) ||
                other.education == education) &&
            (identical(other.otherEducation, otherEducation) ||
                other.otherEducation == otherEducation) &&
            (identical(other.aadhaarNo, aadhaarNo) ||
                other.aadhaarNo == aadhaarNo) &&
            (identical(other.voterId, voterId) || other.voterId == voterId) &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo) &&
            (identical(other.motherTounge, motherTounge) ||
                other.motherTounge == motherTounge) &&
            (identical(other.otherMotherTounge, otherMotherTounge) ||
                other.otherMotherTounge == otherMotherTounge));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      memberId,
      name,
      dateOfBirth,
      gender,
      email,
      religion,
      otherReligion,
      caste,
      category,
      profession,
      otherProfession,
      education,
      otherEducation,
      aadhaarNo,
      voterId,
      mobileNo,
      motherTounge,
      otherMotherTounge);

  /// Create a copy of PersonalDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalDetailsImplCopyWith<_$PersonalDetailsImpl> get copyWith =>
      __$$PersonalDetailsImplCopyWithImpl<_$PersonalDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonalDetailsImplToJson(
      this,
    );
  }
}

abstract class _PersonalDetails implements PersonalDetails {
  const factory _PersonalDetails(
      {@JsonKey(name: 'member_id') required final int memberId,
      required final String name,
      @JsonKey(name: 'date_of_birth') required final String dateOfBirth,
      required final int gender,
      final String? email,
      @JsonKey(name: 'religion') final int? religion,
      @JsonKey(name: 'other_religion') final String? otherReligion,
      final String? caste,
      final int? category,
      final int? profession,
      @JsonKey(name: 'other_profession') final String? otherProfession,
      final int? education,
      @JsonKey(name: 'other_education') final String? otherEducation,
      @JsonKey(name: 'aadhaar_no') final String? aadhaarNo,
      @JsonKey(name: 'voter_id') final String? voterId,
      @JsonKey(name: 'mobile_no') required final String mobileNo,
      @JsonKey(name: 'mother_tounge') final int? motherTounge,
      @JsonKey(name: 'other_mother_tounge')
      final String? otherMotherTounge}) = _$PersonalDetailsImpl;

  factory _PersonalDetails.fromJson(Map<String, dynamic> json) =
      _$PersonalDetailsImpl.fromJson;

  @override
  @JsonKey(name: 'member_id')
  int get memberId;
  @override
  String get name;
  @override
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth;
  @override
  int get gender;
  @override
  String? get email;
  @override
  @JsonKey(name: 'religion')
  int? get religion;
  @override
  @JsonKey(name: 'other_religion')
  String? get otherReligion;
  @override
  String? get caste;
  @override
  int? get category;
  @override
  int? get profession;
  @override
  @JsonKey(name: 'other_profession')
  String? get otherProfession;
  @override
  int? get education;
  @override
  @JsonKey(name: 'other_education')
  String? get otherEducation;
  @override
  @JsonKey(name: 'aadhaar_no')
  String? get aadhaarNo;
  @override
  @JsonKey(name: 'voter_id')
  String? get voterId;
  @override
  @JsonKey(name: 'mobile_no')
  String get mobileNo;
  @override
  @JsonKey(name: 'mother_tounge')
  int? get motherTounge;
  @override
  @JsonKey(name: 'other_mother_tounge')
  String? get otherMotherTounge;

  /// Create a copy of PersonalDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonalDetailsImplCopyWith<_$PersonalDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialDetails _$SocialDetailsFromJson(Map<String, dynamic> json) {
  return _SocialDetails.fromJson(json);
}

/// @nodoc
mixin _$SocialDetails {
  @JsonKey(name: 'member_id')
  int? get memberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'aleternate_number')
  String? get aleternateNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'facebook_url')
  String? get facebookUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'twitter_url')
  String? get twitterUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'instagram_url')
  String? get instagramUrl => throw _privateConstructorUsedError;

  /// Serializes this SocialDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocialDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialDetailsCopyWith<SocialDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialDetailsCopyWith<$Res> {
  factory $SocialDetailsCopyWith(
          SocialDetails value, $Res Function(SocialDetails) then) =
      _$SocialDetailsCopyWithImpl<$Res, SocialDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'member_id') int? memberId,
      @JsonKey(name: 'aleternate_number') String? aleternateNumber,
      @JsonKey(name: 'facebook_url') String? facebookUrl,
      @JsonKey(name: 'twitter_url') String? twitterUrl,
      @JsonKey(name: 'instagram_url') String? instagramUrl});
}

/// @nodoc
class _$SocialDetailsCopyWithImpl<$Res, $Val extends SocialDetails>
    implements $SocialDetailsCopyWith<$Res> {
  _$SocialDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = freezed,
    Object? aleternateNumber = freezed,
    Object? facebookUrl = freezed,
    Object? twitterUrl = freezed,
    Object? instagramUrl = freezed,
  }) {
    return _then(_value.copyWith(
      memberId: freezed == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
      aleternateNumber: freezed == aleternateNumber
          ? _value.aleternateNumber
          : aleternateNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookUrl: freezed == facebookUrl
          ? _value.facebookUrl
          : facebookUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUrl: freezed == twitterUrl
          ? _value.twitterUrl
          : twitterUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramUrl: freezed == instagramUrl
          ? _value.instagramUrl
          : instagramUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialDetailsImplCopyWith<$Res>
    implements $SocialDetailsCopyWith<$Res> {
  factory _$$SocialDetailsImplCopyWith(
          _$SocialDetailsImpl value, $Res Function(_$SocialDetailsImpl) then) =
      __$$SocialDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'member_id') int? memberId,
      @JsonKey(name: 'aleternate_number') String? aleternateNumber,
      @JsonKey(name: 'facebook_url') String? facebookUrl,
      @JsonKey(name: 'twitter_url') String? twitterUrl,
      @JsonKey(name: 'instagram_url') String? instagramUrl});
}

/// @nodoc
class __$$SocialDetailsImplCopyWithImpl<$Res>
    extends _$SocialDetailsCopyWithImpl<$Res, _$SocialDetailsImpl>
    implements _$$SocialDetailsImplCopyWith<$Res> {
  __$$SocialDetailsImplCopyWithImpl(
      _$SocialDetailsImpl _value, $Res Function(_$SocialDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = freezed,
    Object? aleternateNumber = freezed,
    Object? facebookUrl = freezed,
    Object? twitterUrl = freezed,
    Object? instagramUrl = freezed,
  }) {
    return _then(_$SocialDetailsImpl(
      memberId: freezed == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
      aleternateNumber: freezed == aleternateNumber
          ? _value.aleternateNumber
          : aleternateNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookUrl: freezed == facebookUrl
          ? _value.facebookUrl
          : facebookUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUrl: freezed == twitterUrl
          ? _value.twitterUrl
          : twitterUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramUrl: freezed == instagramUrl
          ? _value.instagramUrl
          : instagramUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialDetailsImpl implements _SocialDetails {
  const _$SocialDetailsImpl(
      {@JsonKey(name: 'member_id') this.memberId,
      @JsonKey(name: 'aleternate_number') this.aleternateNumber,
      @JsonKey(name: 'facebook_url') this.facebookUrl,
      @JsonKey(name: 'twitter_url') this.twitterUrl,
      @JsonKey(name: 'instagram_url') this.instagramUrl});

  factory _$SocialDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialDetailsImplFromJson(json);

  @override
  @JsonKey(name: 'member_id')
  final int? memberId;
  @override
  @JsonKey(name: 'aleternate_number')
  final String? aleternateNumber;
  @override
  @JsonKey(name: 'facebook_url')
  final String? facebookUrl;
  @override
  @JsonKey(name: 'twitter_url')
  final String? twitterUrl;
  @override
  @JsonKey(name: 'instagram_url')
  final String? instagramUrl;

  @override
  String toString() {
    return 'SocialDetails(memberId: $memberId, aleternateNumber: $aleternateNumber, facebookUrl: $facebookUrl, twitterUrl: $twitterUrl, instagramUrl: $instagramUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialDetailsImpl &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.aleternateNumber, aleternateNumber) ||
                other.aleternateNumber == aleternateNumber) &&
            (identical(other.facebookUrl, facebookUrl) ||
                other.facebookUrl == facebookUrl) &&
            (identical(other.twitterUrl, twitterUrl) ||
                other.twitterUrl == twitterUrl) &&
            (identical(other.instagramUrl, instagramUrl) ||
                other.instagramUrl == instagramUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, memberId, aleternateNumber,
      facebookUrl, twitterUrl, instagramUrl);

  /// Create a copy of SocialDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialDetailsImplCopyWith<_$SocialDetailsImpl> get copyWith =>
      __$$SocialDetailsImplCopyWithImpl<_$SocialDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialDetailsImplToJson(
      this,
    );
  }
}

abstract class _SocialDetails implements SocialDetails {
  const factory _SocialDetails(
          {@JsonKey(name: 'member_id') final int? memberId,
          @JsonKey(name: 'aleternate_number') final String? aleternateNumber,
          @JsonKey(name: 'facebook_url') final String? facebookUrl,
          @JsonKey(name: 'twitter_url') final String? twitterUrl,
          @JsonKey(name: 'instagram_url') final String? instagramUrl}) =
      _$SocialDetailsImpl;

  factory _SocialDetails.fromJson(Map<String, dynamic> json) =
      _$SocialDetailsImpl.fromJson;

  @override
  @JsonKey(name: 'member_id')
  int? get memberId;
  @override
  @JsonKey(name: 'aleternate_number')
  String? get aleternateNumber;
  @override
  @JsonKey(name: 'facebook_url')
  String? get facebookUrl;
  @override
  @JsonKey(name: 'twitter_url')
  String? get twitterUrl;
  @override
  @JsonKey(name: 'instagram_url')
  String? get instagramUrl;

  /// Create a copy of SocialDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialDetailsImplCopyWith<_$SocialDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
