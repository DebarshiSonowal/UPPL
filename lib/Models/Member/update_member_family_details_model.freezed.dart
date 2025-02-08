// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_member_family_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateMemberFamilyDetailsModel _$UpdateMemberFamilyDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateMemberFamilyDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateMemberFamilyDetailsModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data', fromJson: _dataFromJson)
  MemberData? get data =>
      throw _privateConstructorUsedError; // Dynamic type to handle Map or List
  int get code => throw _privateConstructorUsedError;

  /// Serializes this UpdateMemberFamilyDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateMemberFamilyDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateMemberFamilyDetailsModelCopyWith<UpdateMemberFamilyDetailsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateMemberFamilyDetailsModelCopyWith<$Res> {
  factory $UpdateMemberFamilyDetailsModelCopyWith(
          UpdateMemberFamilyDetailsModel value,
          $Res Function(UpdateMemberFamilyDetailsModel) then) =
      _$UpdateMemberFamilyDetailsModelCopyWithImpl<$Res,
          UpdateMemberFamilyDetailsModel>;
  @useResult
  $Res call(
      {int status,
      String message,
      @JsonKey(name: 'data', fromJson: _dataFromJson) MemberData? data,
      int code});

  $MemberDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UpdateMemberFamilyDetailsModelCopyWithImpl<$Res,
        $Val extends UpdateMemberFamilyDetailsModel>
    implements $UpdateMemberFamilyDetailsModelCopyWith<$Res> {
  _$UpdateMemberFamilyDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateMemberFamilyDetailsModel
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
              as MemberData?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of UpdateMemberFamilyDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $MemberDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateMemberFamilyDetailsModelImplCopyWith<$Res>
    implements $UpdateMemberFamilyDetailsModelCopyWith<$Res> {
  factory _$$UpdateMemberFamilyDetailsModelImplCopyWith(
          _$UpdateMemberFamilyDetailsModelImpl value,
          $Res Function(_$UpdateMemberFamilyDetailsModelImpl) then) =
      __$$UpdateMemberFamilyDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String message,
      @JsonKey(name: 'data', fromJson: _dataFromJson) MemberData? data,
      int code});

  @override
  $MemberDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UpdateMemberFamilyDetailsModelImplCopyWithImpl<$Res>
    extends _$UpdateMemberFamilyDetailsModelCopyWithImpl<$Res,
        _$UpdateMemberFamilyDetailsModelImpl>
    implements _$$UpdateMemberFamilyDetailsModelImplCopyWith<$Res> {
  __$$UpdateMemberFamilyDetailsModelImplCopyWithImpl(
      _$UpdateMemberFamilyDetailsModelImpl _value,
      $Res Function(_$UpdateMemberFamilyDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateMemberFamilyDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
    Object? code = null,
  }) {
    return _then(_$UpdateMemberFamilyDetailsModelImpl(
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
              as MemberData?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateMemberFamilyDetailsModelImpl
    implements _UpdateMemberFamilyDetailsModel {
  const _$UpdateMemberFamilyDetailsModelImpl(
      {required this.status,
      required this.message,
      @JsonKey(name: 'data', fromJson: _dataFromJson) this.data,
      required this.code});

  factory _$UpdateMemberFamilyDetailsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateMemberFamilyDetailsModelImplFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  @JsonKey(name: 'data', fromJson: _dataFromJson)
  final MemberData? data;
// Dynamic type to handle Map or List
  @override
  final int code;

  @override
  String toString() {
    return 'UpdateMemberFamilyDetailsModel(status: $status, message: $message, data: $data, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMemberFamilyDetailsModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data, code);

  /// Create a copy of UpdateMemberFamilyDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMemberFamilyDetailsModelImplCopyWith<
          _$UpdateMemberFamilyDetailsModelImpl>
      get copyWith => __$$UpdateMemberFamilyDetailsModelImplCopyWithImpl<
          _$UpdateMemberFamilyDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateMemberFamilyDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateMemberFamilyDetailsModel
    implements UpdateMemberFamilyDetailsModel {
  const factory _UpdateMemberFamilyDetailsModel(
      {required final int status,
      required final String message,
      @JsonKey(name: 'data', fromJson: _dataFromJson) final MemberData? data,
      required final int code}) = _$UpdateMemberFamilyDetailsModelImpl;

  factory _UpdateMemberFamilyDetailsModel.fromJson(Map<String, dynamic> json) =
      _$UpdateMemberFamilyDetailsModelImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  @JsonKey(name: 'data', fromJson: _dataFromJson)
  MemberData? get data; // Dynamic type to handle Map or List
  @override
  int get code;

  /// Create a copy of UpdateMemberFamilyDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateMemberFamilyDetailsModelImplCopyWith<
          _$UpdateMemberFamilyDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MemberData _$MemberDataFromJson(Map<String, dynamic> json) {
  return _MemberData.fromJson(json);
}

/// @nodoc
mixin _$MemberData {
  @JsonKey(name: 'profile_data')
  ProfileData? get profileData => throw _privateConstructorUsedError;
  @JsonKey(name: 'family_details')
  FamilyDetails? get familyDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'head_member_id')
  String? get headMemberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'errors')
  Map<String, List<String>>? get errors => throw _privateConstructorUsedError;

  /// Serializes this MemberData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberDataCopyWith<MemberData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberDataCopyWith<$Res> {
  factory $MemberDataCopyWith(
          MemberData value, $Res Function(MemberData) then) =
      _$MemberDataCopyWithImpl<$Res, MemberData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'profile_data') ProfileData? profileData,
      @JsonKey(name: 'family_details') FamilyDetails? familyDetails,
      @JsonKey(name: 'head_member_id') String? headMemberId,
      @JsonKey(name: 'errors') Map<String, List<String>>? errors});

  $ProfileDataCopyWith<$Res>? get profileData;
  $FamilyDetailsCopyWith<$Res>? get familyDetails;
}

/// @nodoc
class _$MemberDataCopyWithImpl<$Res, $Val extends MemberData>
    implements $MemberDataCopyWith<$Res> {
  _$MemberDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileData = freezed,
    Object? familyDetails = freezed,
    Object? headMemberId = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      profileData: freezed == profileData
          ? _value.profileData
          : profileData // ignore: cast_nullable_to_non_nullable
              as ProfileData?,
      familyDetails: freezed == familyDetails
          ? _value.familyDetails
          : familyDetails // ignore: cast_nullable_to_non_nullable
              as FamilyDetails?,
      headMemberId: freezed == headMemberId
          ? _value.headMemberId
          : headMemberId // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
    ) as $Val);
  }

  /// Create a copy of MemberData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileDataCopyWith<$Res>? get profileData {
    if (_value.profileData == null) {
      return null;
    }

    return $ProfileDataCopyWith<$Res>(_value.profileData!, (value) {
      return _then(_value.copyWith(profileData: value) as $Val);
    });
  }

  /// Create a copy of MemberData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FamilyDetailsCopyWith<$Res>? get familyDetails {
    if (_value.familyDetails == null) {
      return null;
    }

    return $FamilyDetailsCopyWith<$Res>(_value.familyDetails!, (value) {
      return _then(_value.copyWith(familyDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemberDataImplCopyWith<$Res>
    implements $MemberDataCopyWith<$Res> {
  factory _$$MemberDataImplCopyWith(
          _$MemberDataImpl value, $Res Function(_$MemberDataImpl) then) =
      __$$MemberDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'profile_data') ProfileData? profileData,
      @JsonKey(name: 'family_details') FamilyDetails? familyDetails,
      @JsonKey(name: 'head_member_id') String? headMemberId,
      @JsonKey(name: 'errors') Map<String, List<String>>? errors});

  @override
  $ProfileDataCopyWith<$Res>? get profileData;
  @override
  $FamilyDetailsCopyWith<$Res>? get familyDetails;
}

/// @nodoc
class __$$MemberDataImplCopyWithImpl<$Res>
    extends _$MemberDataCopyWithImpl<$Res, _$MemberDataImpl>
    implements _$$MemberDataImplCopyWith<$Res> {
  __$$MemberDataImplCopyWithImpl(
      _$MemberDataImpl _value, $Res Function(_$MemberDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileData = freezed,
    Object? familyDetails = freezed,
    Object? headMemberId = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$MemberDataImpl(
      profileData: freezed == profileData
          ? _value.profileData
          : profileData // ignore: cast_nullable_to_non_nullable
              as ProfileData?,
      familyDetails: freezed == familyDetails
          ? _value.familyDetails
          : familyDetails // ignore: cast_nullable_to_non_nullable
              as FamilyDetails?,
      headMemberId: freezed == headMemberId
          ? _value.headMemberId
          : headMemberId // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberDataImpl implements _MemberData {
  const _$MemberDataImpl(
      {@JsonKey(name: 'profile_data') this.profileData,
      @JsonKey(name: 'family_details') this.familyDetails,
      @JsonKey(name: 'head_member_id') this.headMemberId,
      @JsonKey(name: 'errors') final Map<String, List<String>>? errors})
      : _errors = errors;

  factory _$MemberDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberDataImplFromJson(json);

  @override
  @JsonKey(name: 'profile_data')
  final ProfileData? profileData;
  @override
  @JsonKey(name: 'family_details')
  final FamilyDetails? familyDetails;
  @override
  @JsonKey(name: 'head_member_id')
  final String? headMemberId;
  final Map<String, List<String>>? _errors;
  @override
  @JsonKey(name: 'errors')
  Map<String, List<String>>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MemberData(profileData: $profileData, familyDetails: $familyDetails, headMemberId: $headMemberId, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberDataImpl &&
            (identical(other.profileData, profileData) ||
                other.profileData == profileData) &&
            (identical(other.familyDetails, familyDetails) ||
                other.familyDetails == familyDetails) &&
            (identical(other.headMemberId, headMemberId) ||
                other.headMemberId == headMemberId) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, profileData, familyDetails,
      headMemberId, const DeepCollectionEquality().hash(_errors));

  /// Create a copy of MemberData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberDataImplCopyWith<_$MemberDataImpl> get copyWith =>
      __$$MemberDataImplCopyWithImpl<_$MemberDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberDataImplToJson(
      this,
    );
  }
}

abstract class _MemberData implements MemberData {
  const factory _MemberData(
          {@JsonKey(name: 'profile_data') final ProfileData? profileData,
          @JsonKey(name: 'family_details') final FamilyDetails? familyDetails,
          @JsonKey(name: 'head_member_id') final String? headMemberId,
          @JsonKey(name: 'errors') final Map<String, List<String>>? errors}) =
      _$MemberDataImpl;

  factory _MemberData.fromJson(Map<String, dynamic> json) =
      _$MemberDataImpl.fromJson;

  @override
  @JsonKey(name: 'profile_data')
  ProfileData? get profileData;
  @override
  @JsonKey(name: 'family_details')
  FamilyDetails? get familyDetails;
  @override
  @JsonKey(name: 'head_member_id')
  String? get headMemberId;
  @override
  @JsonKey(name: 'errors')
  Map<String, List<String>>? get errors;

  /// Create a copy of MemberData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberDataImplCopyWith<_$MemberDataImpl> get copyWith =>
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
  String get refId => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_ref_code')
  String? get oldRefCode => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'pin_code')
  String get pinCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'btc_assembly_constituency_id')
  int get btcAssemblyConstituencyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'btc_constituency')
  int get btcConstituency => throw _privateConstructorUsedError;
  @JsonKey(name: 'party_district')
  int get partyDistrict => throw _privateConstructorUsedError;
  @JsonKey(name: 'assembly_constituency')
  int get assemblyConstituency => throw _privateConstructorUsedError;
  @JsonKey(name: 'primary_id')
  int get primaryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'booth_id')
  int get boothId => throw _privateConstructorUsedError;
  @JsonKey(name: 'village_id')
  int get villageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  int? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'update_count')
  int? get updateCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  String get village => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'district_id')
  int get districtId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_no')
  String? get mobileNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_no')
  String get membershipNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'ref_code')
  String get refCode => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'joining_date')
  String? get joiningDate => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'ref_id') String refId,
      @JsonKey(name: 'old_ref_code') String? oldRefCode,
      String title,
      String address,
      @JsonKey(name: 'pin_code') String pinCode,
      @JsonKey(name: 'btc_assembly_constituency_id')
      int btcAssemblyConstituencyId,
      @JsonKey(name: 'btc_constituency') int btcConstituency,
      @JsonKey(name: 'party_district') int partyDistrict,
      @JsonKey(name: 'assembly_constituency') int assemblyConstituency,
      @JsonKey(name: 'primary_id') int primaryId,
      @JsonKey(name: 'booth_id') int boothId,
      @JsonKey(name: 'village_id') int villageId,
      @JsonKey(name: 'created_by') int? createdBy,
      @JsonKey(name: 'update_count') int? updateCount,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      String village,
      String? photo,
      String district,
      @JsonKey(name: 'district_id') int districtId,
      String name,
      @JsonKey(name: 'mobile_no') String? mobileNo,
      @JsonKey(name: 'membership_no') String membershipNo,
      @JsonKey(name: 'ref_code') String refCode,
      String gender,
      @JsonKey(name: 'date_of_birth') String dateOfBirth,
      String? email,
      @JsonKey(name: 'joining_date') String? joiningDate});
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
    Object? btcAssemblyConstituencyId = null,
    Object? btcConstituency = null,
    Object? partyDistrict = null,
    Object? assemblyConstituency = null,
    Object? primaryId = null,
    Object? boothId = null,
    Object? villageId = null,
    Object? createdBy = freezed,
    Object? updateCount = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? village = null,
    Object? photo = freezed,
    Object? district = null,
    Object? districtId = null,
    Object? name = null,
    Object? mobileNo = freezed,
    Object? membershipNo = null,
    Object? refCode = null,
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? email = freezed,
    Object? joiningDate = freezed,
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
              as String,
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
      btcAssemblyConstituencyId: null == btcAssemblyConstituencyId
          ? _value.btcAssemblyConstituencyId
          : btcAssemblyConstituencyId // ignore: cast_nullable_to_non_nullable
              as int,
      btcConstituency: null == btcConstituency
          ? _value.btcConstituency
          : btcConstituency // ignore: cast_nullable_to_non_nullable
              as int,
      partyDistrict: null == partyDistrict
          ? _value.partyDistrict
          : partyDistrict // ignore: cast_nullable_to_non_nullable
              as int,
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
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      updateCount: freezed == updateCount
          ? _value.updateCount
          : updateCount // ignore: cast_nullable_to_non_nullable
              as int?,
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
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      joiningDate: freezed == joiningDate
          ? _value.joiningDate
          : joiningDate // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'ref_id') String refId,
      @JsonKey(name: 'old_ref_code') String? oldRefCode,
      String title,
      String address,
      @JsonKey(name: 'pin_code') String pinCode,
      @JsonKey(name: 'btc_assembly_constituency_id')
      int btcAssemblyConstituencyId,
      @JsonKey(name: 'btc_constituency') int btcConstituency,
      @JsonKey(name: 'party_district') int partyDistrict,
      @JsonKey(name: 'assembly_constituency') int assemblyConstituency,
      @JsonKey(name: 'primary_id') int primaryId,
      @JsonKey(name: 'booth_id') int boothId,
      @JsonKey(name: 'village_id') int villageId,
      @JsonKey(name: 'created_by') int? createdBy,
      @JsonKey(name: 'update_count') int? updateCount,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      String village,
      String? photo,
      String district,
      @JsonKey(name: 'district_id') int districtId,
      String name,
      @JsonKey(name: 'mobile_no') String? mobileNo,
      @JsonKey(name: 'membership_no') String membershipNo,
      @JsonKey(name: 'ref_code') String refCode,
      String gender,
      @JsonKey(name: 'date_of_birth') String dateOfBirth,
      String? email,
      @JsonKey(name: 'joining_date') String? joiningDate});
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
    Object? btcAssemblyConstituencyId = null,
    Object? btcConstituency = null,
    Object? partyDistrict = null,
    Object? assemblyConstituency = null,
    Object? primaryId = null,
    Object? boothId = null,
    Object? villageId = null,
    Object? createdBy = freezed,
    Object? updateCount = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? village = null,
    Object? photo = freezed,
    Object? district = null,
    Object? districtId = null,
    Object? name = null,
    Object? mobileNo = freezed,
    Object? membershipNo = null,
    Object? refCode = null,
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? email = freezed,
    Object? joiningDate = freezed,
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
              as String,
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
      btcAssemblyConstituencyId: null == btcAssemblyConstituencyId
          ? _value.btcAssemblyConstituencyId
          : btcAssemblyConstituencyId // ignore: cast_nullable_to_non_nullable
              as int,
      btcConstituency: null == btcConstituency
          ? _value.btcConstituency
          : btcConstituency // ignore: cast_nullable_to_non_nullable
              as int,
      partyDistrict: null == partyDistrict
          ? _value.partyDistrict
          : partyDistrict // ignore: cast_nullable_to_non_nullable
              as int,
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
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      updateCount: freezed == updateCount
          ? _value.updateCount
          : updateCount // ignore: cast_nullable_to_non_nullable
              as int?,
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
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      joiningDate: freezed == joiningDate
          ? _value.joiningDate
          : joiningDate // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'created_by') this.createdBy,
      @JsonKey(name: 'update_count') this.updateCount,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required this.village,
      this.photo,
      required this.district,
      @JsonKey(name: 'district_id') required this.districtId,
      required this.name,
      @JsonKey(name: 'mobile_no') this.mobileNo,
      @JsonKey(name: 'membership_no') required this.membershipNo,
      @JsonKey(name: 'ref_code') required this.refCode,
      required this.gender,
      @JsonKey(name: 'date_of_birth') required this.dateOfBirth,
      this.email,
      @JsonKey(name: 'joining_date') this.joiningDate});

  factory _$ProfileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileDataImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'ref_id')
  final String refId;
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
  final int btcAssemblyConstituencyId;
  @override
  @JsonKey(name: 'btc_constituency')
  final int btcConstituency;
  @override
  @JsonKey(name: 'party_district')
  final int partyDistrict;
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
  final int? createdBy;
  @override
  @JsonKey(name: 'update_count')
  final int? updateCount;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  final String village;
  @override
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
  final String? mobileNo;
  @override
  @JsonKey(name: 'membership_no')
  final String membershipNo;
  @override
  @JsonKey(name: 'ref_code')
  final String refCode;
  @override
  final String gender;
  @override
  @JsonKey(name: 'date_of_birth')
  final String dateOfBirth;
  @override
  final String? email;
  @override
  @JsonKey(name: 'joining_date')
  final String? joiningDate;

  @override
  String toString() {
    return 'ProfileData(id: $id, userId: $userId, refId: $refId, oldRefCode: $oldRefCode, title: $title, address: $address, pinCode: $pinCode, btcAssemblyConstituencyId: $btcAssemblyConstituencyId, btcConstituency: $btcConstituency, partyDistrict: $partyDistrict, assemblyConstituency: $assemblyConstituency, primaryId: $primaryId, boothId: $boothId, villageId: $villageId, createdBy: $createdBy, updateCount: $updateCount, createdAt: $createdAt, updatedAt: $updatedAt, village: $village, photo: $photo, district: $district, districtId: $districtId, name: $name, mobileNo: $mobileNo, membershipNo: $membershipNo, refCode: $refCode, gender: $gender, dateOfBirth: $dateOfBirth, email: $email, joiningDate: $joiningDate)';
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
            (identical(other.joiningDate, joiningDate) ||
                other.joiningDate == joiningDate));
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
        joiningDate
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
          @JsonKey(name: 'ref_id') required final String refId,
          @JsonKey(name: 'old_ref_code') final String? oldRefCode,
          required final String title,
          required final String address,
          @JsonKey(name: 'pin_code') required final String pinCode,
          @JsonKey(name: 'btc_assembly_constituency_id')
          required final int btcAssemblyConstituencyId,
          @JsonKey(name: 'btc_constituency') required final int btcConstituency,
          @JsonKey(name: 'party_district') required final int partyDistrict,
          @JsonKey(name: 'assembly_constituency')
          required final int assemblyConstituency,
          @JsonKey(name: 'primary_id') required final int primaryId,
          @JsonKey(name: 'booth_id') required final int boothId,
          @JsonKey(name: 'village_id') required final int villageId,
          @JsonKey(name: 'created_by') final int? createdBy,
          @JsonKey(name: 'update_count') final int? updateCount,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt,
          required final String village,
          final String? photo,
          required final String district,
          @JsonKey(name: 'district_id') required final int districtId,
          required final String name,
          @JsonKey(name: 'mobile_no') final String? mobileNo,
          @JsonKey(name: 'membership_no') required final String membershipNo,
          @JsonKey(name: 'ref_code') required final String refCode,
          required final String gender,
          @JsonKey(name: 'date_of_birth') required final String dateOfBirth,
          final String? email,
          @JsonKey(name: 'joining_date') final String? joiningDate}) =
      _$ProfileDataImpl;

  factory _ProfileData.fromJson(Map<String, dynamic> json) =
      _$ProfileDataImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'ref_id')
  String get refId;
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
  int get btcAssemblyConstituencyId;
  @override
  @JsonKey(name: 'btc_constituency')
  int get btcConstituency;
  @override
  @JsonKey(name: 'party_district')
  int get partyDistrict;
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
  int? get createdBy;
  @override
  @JsonKey(name: 'update_count')
  int? get updateCount;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  String get village;
  @override
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
  String? get mobileNo;
  @override
  @JsonKey(name: 'membership_no')
  String get membershipNo;
  @override
  @JsonKey(name: 'ref_code')
  String get refCode;
  @override
  String get gender;
  @override
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth;
  @override
  String? get email;
  @override
  @JsonKey(name: 'joining_date')
  String? get joiningDate;

  /// Create a copy of ProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileDataImplCopyWith<_$ProfileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FamilyDetails _$FamilyDetailsFromJson(Map<String, dynamic> json) {
  return _FamilyDetails.fromJson(json);
}

/// @nodoc
mixin _$FamilyDetails {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'head_member_id')
  int get headMemberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ref_id')
  int get refId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ref_code')
  String get refCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_ref_code')
  String? get oldRefCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_no')
  String get membershipNo => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'pin_code')
  String get pinCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'btc_assembly_constituency_id')
  int get btcAssemblyConstituencyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'btc_constituency')
  int get btcConstituency => throw _privateConstructorUsedError;
  int get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'party_district')
  int get partyDistrict => throw _privateConstructorUsedError;
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
  String? get religion => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_religion')
  String? get otherReligion => throw _privateConstructorUsedError;
  String? get caste => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get profession => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_profession')
  String? get otherProfession => throw _privateConstructorUsedError;
  String? get education => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_education')
  String? get otherEducation => throw _privateConstructorUsedError;
  @JsonKey(name: 'aadhaar_no')
  String get aadhaarNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'voter_id')
  String get voterId => throw _privateConstructorUsedError;
  int get relationship => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'mother_tounge')
  String? get motherTounge => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_mother_tounge')
  String? get otherMotherTounge => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this FamilyDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FamilyDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FamilyDetailsCopyWith<FamilyDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyDetailsCopyWith<$Res> {
  factory $FamilyDetailsCopyWith(
          FamilyDetails value, $Res Function(FamilyDetails) then) =
      _$FamilyDetailsCopyWithImpl<$Res, FamilyDetails>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'head_member_id') int headMemberId,
      @JsonKey(name: 'ref_id') int refId,
      @JsonKey(name: 'ref_code') String refCode,
      @JsonKey(name: 'old_ref_code') String? oldRefCode,
      @JsonKey(name: 'membership_no') String membershipNo,
      String title,
      String name,
      String? email,
      String? photo,
      @JsonKey(name: 'date_of_birth') String dateOfBirth,
      int gender,
      String address,
      @JsonKey(name: 'pin_code') String pinCode,
      @JsonKey(name: 'btc_assembly_constituency_id')
      int btcAssemblyConstituencyId,
      @JsonKey(name: 'btc_constituency') int btcConstituency,
      int district,
      @JsonKey(name: 'party_district') int partyDistrict,
      @JsonKey(name: 'assembly_constituency') int assemblyConstituency,
      @JsonKey(name: 'primary_id') int primaryId,
      @JsonKey(name: 'booth_id') int boothId,
      @JsonKey(name: 'village_id') int villageId,
      @JsonKey(name: 'created_by') int createdBy,
      @JsonKey(name: 'update_count') int updateCount,
      String? religion,
      @JsonKey(name: 'other_religion') String? otherReligion,
      String? caste,
      String? category,
      String? profession,
      @JsonKey(name: 'other_profession') String? otherProfession,
      String? education,
      @JsonKey(name: 'other_education') String? otherEducation,
      @JsonKey(name: 'aadhaar_no') String aadhaarNo,
      @JsonKey(name: 'voter_id') String voterId,
      int relationship,
      String? country,
      @JsonKey(name: 'mother_tounge') String? motherTounge,
      @JsonKey(name: 'other_mother_tounge') String? otherMotherTounge,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$FamilyDetailsCopyWithImpl<$Res, $Val extends FamilyDetails>
    implements $FamilyDetailsCopyWith<$Res> {
  _$FamilyDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FamilyDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? headMemberId = null,
    Object? refId = null,
    Object? refCode = null,
    Object? oldRefCode = freezed,
    Object? membershipNo = null,
    Object? title = null,
    Object? name = null,
    Object? email = freezed,
    Object? photo = freezed,
    Object? dateOfBirth = null,
    Object? gender = null,
    Object? address = null,
    Object? pinCode = null,
    Object? btcAssemblyConstituencyId = null,
    Object? btcConstituency = null,
    Object? district = null,
    Object? partyDistrict = null,
    Object? assemblyConstituency = null,
    Object? primaryId = null,
    Object? boothId = null,
    Object? villageId = null,
    Object? createdBy = null,
    Object? updateCount = null,
    Object? religion = freezed,
    Object? otherReligion = freezed,
    Object? caste = freezed,
    Object? category = freezed,
    Object? profession = freezed,
    Object? otherProfession = freezed,
    Object? education = freezed,
    Object? otherEducation = freezed,
    Object? aadhaarNo = null,
    Object? voterId = null,
    Object? relationship = null,
    Object? country = freezed,
    Object? motherTounge = freezed,
    Object? otherMotherTounge = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
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
      headMemberId: null == headMemberId
          ? _value.headMemberId
          : headMemberId // ignore: cast_nullable_to_non_nullable
              as int,
      refId: null == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as int,
      refCode: null == refCode
          ? _value.refCode
          : refCode // ignore: cast_nullable_to_non_nullable
              as String,
      oldRefCode: freezed == oldRefCode
          ? _value.oldRefCode
          : oldRefCode // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipNo: null == membershipNo
          ? _value.membershipNo
          : membershipNo // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      btcAssemblyConstituencyId: null == btcAssemblyConstituencyId
          ? _value.btcAssemblyConstituencyId
          : btcAssemblyConstituencyId // ignore: cast_nullable_to_non_nullable
              as int,
      btcConstituency: null == btcConstituency
          ? _value.btcConstituency
          : btcConstituency // ignore: cast_nullable_to_non_nullable
              as int,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as int,
      partyDistrict: null == partyDistrict
          ? _value.partyDistrict
          : partyDistrict // ignore: cast_nullable_to_non_nullable
              as int,
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
      religion: freezed == religion
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      otherProfession: freezed == otherProfession
          ? _value.otherProfession
          : otherProfession // ignore: cast_nullable_to_non_nullable
              as String?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String?,
      otherEducation: freezed == otherEducation
          ? _value.otherEducation
          : otherEducation // ignore: cast_nullable_to_non_nullable
              as String?,
      aadhaarNo: null == aadhaarNo
          ? _value.aadhaarNo
          : aadhaarNo // ignore: cast_nullable_to_non_nullable
              as String,
      voterId: null == voterId
          ? _value.voterId
          : voterId // ignore: cast_nullable_to_non_nullable
              as String,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as int,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      motherTounge: freezed == motherTounge
          ? _value.motherTounge
          : motherTounge // ignore: cast_nullable_to_non_nullable
              as String?,
      otherMotherTounge: freezed == otherMotherTounge
          ? _value.otherMotherTounge
          : otherMotherTounge // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FamilyDetailsImplCopyWith<$Res>
    implements $FamilyDetailsCopyWith<$Res> {
  factory _$$FamilyDetailsImplCopyWith(
          _$FamilyDetailsImpl value, $Res Function(_$FamilyDetailsImpl) then) =
      __$$FamilyDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'head_member_id') int headMemberId,
      @JsonKey(name: 'ref_id') int refId,
      @JsonKey(name: 'ref_code') String refCode,
      @JsonKey(name: 'old_ref_code') String? oldRefCode,
      @JsonKey(name: 'membership_no') String membershipNo,
      String title,
      String name,
      String? email,
      String? photo,
      @JsonKey(name: 'date_of_birth') String dateOfBirth,
      int gender,
      String address,
      @JsonKey(name: 'pin_code') String pinCode,
      @JsonKey(name: 'btc_assembly_constituency_id')
      int btcAssemblyConstituencyId,
      @JsonKey(name: 'btc_constituency') int btcConstituency,
      int district,
      @JsonKey(name: 'party_district') int partyDistrict,
      @JsonKey(name: 'assembly_constituency') int assemblyConstituency,
      @JsonKey(name: 'primary_id') int primaryId,
      @JsonKey(name: 'booth_id') int boothId,
      @JsonKey(name: 'village_id') int villageId,
      @JsonKey(name: 'created_by') int createdBy,
      @JsonKey(name: 'update_count') int updateCount,
      String? religion,
      @JsonKey(name: 'other_religion') String? otherReligion,
      String? caste,
      String? category,
      String? profession,
      @JsonKey(name: 'other_profession') String? otherProfession,
      String? education,
      @JsonKey(name: 'other_education') String? otherEducation,
      @JsonKey(name: 'aadhaar_no') String aadhaarNo,
      @JsonKey(name: 'voter_id') String voterId,
      int relationship,
      String? country,
      @JsonKey(name: 'mother_tounge') String? motherTounge,
      @JsonKey(name: 'other_mother_tounge') String? otherMotherTounge,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$$FamilyDetailsImplCopyWithImpl<$Res>
    extends _$FamilyDetailsCopyWithImpl<$Res, _$FamilyDetailsImpl>
    implements _$$FamilyDetailsImplCopyWith<$Res> {
  __$$FamilyDetailsImplCopyWithImpl(
      _$FamilyDetailsImpl _value, $Res Function(_$FamilyDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of FamilyDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? headMemberId = null,
    Object? refId = null,
    Object? refCode = null,
    Object? oldRefCode = freezed,
    Object? membershipNo = null,
    Object? title = null,
    Object? name = null,
    Object? email = freezed,
    Object? photo = freezed,
    Object? dateOfBirth = null,
    Object? gender = null,
    Object? address = null,
    Object? pinCode = null,
    Object? btcAssemblyConstituencyId = null,
    Object? btcConstituency = null,
    Object? district = null,
    Object? partyDistrict = null,
    Object? assemblyConstituency = null,
    Object? primaryId = null,
    Object? boothId = null,
    Object? villageId = null,
    Object? createdBy = null,
    Object? updateCount = null,
    Object? religion = freezed,
    Object? otherReligion = freezed,
    Object? caste = freezed,
    Object? category = freezed,
    Object? profession = freezed,
    Object? otherProfession = freezed,
    Object? education = freezed,
    Object? otherEducation = freezed,
    Object? aadhaarNo = null,
    Object? voterId = null,
    Object? relationship = null,
    Object? country = freezed,
    Object? motherTounge = freezed,
    Object? otherMotherTounge = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$FamilyDetailsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      headMemberId: null == headMemberId
          ? _value.headMemberId
          : headMemberId // ignore: cast_nullable_to_non_nullable
              as int,
      refId: null == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as int,
      refCode: null == refCode
          ? _value.refCode
          : refCode // ignore: cast_nullable_to_non_nullable
              as String,
      oldRefCode: freezed == oldRefCode
          ? _value.oldRefCode
          : oldRefCode // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipNo: null == membershipNo
          ? _value.membershipNo
          : membershipNo // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      btcAssemblyConstituencyId: null == btcAssemblyConstituencyId
          ? _value.btcAssemblyConstituencyId
          : btcAssemblyConstituencyId // ignore: cast_nullable_to_non_nullable
              as int,
      btcConstituency: null == btcConstituency
          ? _value.btcConstituency
          : btcConstituency // ignore: cast_nullable_to_non_nullable
              as int,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as int,
      partyDistrict: null == partyDistrict
          ? _value.partyDistrict
          : partyDistrict // ignore: cast_nullable_to_non_nullable
              as int,
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
      religion: freezed == religion
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      otherProfession: freezed == otherProfession
          ? _value.otherProfession
          : otherProfession // ignore: cast_nullable_to_non_nullable
              as String?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String?,
      otherEducation: freezed == otherEducation
          ? _value.otherEducation
          : otherEducation // ignore: cast_nullable_to_non_nullable
              as String?,
      aadhaarNo: null == aadhaarNo
          ? _value.aadhaarNo
          : aadhaarNo // ignore: cast_nullable_to_non_nullable
              as String,
      voterId: null == voterId
          ? _value.voterId
          : voterId // ignore: cast_nullable_to_non_nullable
              as String,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as int,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      motherTounge: freezed == motherTounge
          ? _value.motherTounge
          : motherTounge // ignore: cast_nullable_to_non_nullable
              as String?,
      otherMotherTounge: freezed == otherMotherTounge
          ? _value.otherMotherTounge
          : otherMotherTounge // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FamilyDetailsImpl implements _FamilyDetails {
  const _$FamilyDetailsImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'head_member_id') required this.headMemberId,
      @JsonKey(name: 'ref_id') required this.refId,
      @JsonKey(name: 'ref_code') required this.refCode,
      @JsonKey(name: 'old_ref_code') this.oldRefCode,
      @JsonKey(name: 'membership_no') required this.membershipNo,
      required this.title,
      required this.name,
      this.email,
      this.photo,
      @JsonKey(name: 'date_of_birth') required this.dateOfBirth,
      required this.gender,
      required this.address,
      @JsonKey(name: 'pin_code') required this.pinCode,
      @JsonKey(name: 'btc_assembly_constituency_id')
      required this.btcAssemblyConstituencyId,
      @JsonKey(name: 'btc_constituency') required this.btcConstituency,
      required this.district,
      @JsonKey(name: 'party_district') required this.partyDistrict,
      @JsonKey(name: 'assembly_constituency')
      required this.assemblyConstituency,
      @JsonKey(name: 'primary_id') required this.primaryId,
      @JsonKey(name: 'booth_id') required this.boothId,
      @JsonKey(name: 'village_id') required this.villageId,
      @JsonKey(name: 'created_by') required this.createdBy,
      @JsonKey(name: 'update_count') required this.updateCount,
      this.religion,
      @JsonKey(name: 'other_religion') this.otherReligion,
      this.caste,
      this.category,
      this.profession,
      @JsonKey(name: 'other_profession') this.otherProfession,
      this.education,
      @JsonKey(name: 'other_education') this.otherEducation,
      @JsonKey(name: 'aadhaar_no') required this.aadhaarNo,
      @JsonKey(name: 'voter_id') required this.voterId,
      required this.relationship,
      this.country,
      @JsonKey(name: 'mother_tounge') this.motherTounge,
      @JsonKey(name: 'other_mother_tounge') this.otherMotherTounge,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$FamilyDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilyDetailsImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'head_member_id')
  final int headMemberId;
  @override
  @JsonKey(name: 'ref_id')
  final int refId;
  @override
  @JsonKey(name: 'ref_code')
  final String refCode;
  @override
  @JsonKey(name: 'old_ref_code')
  final String? oldRefCode;
  @override
  @JsonKey(name: 'membership_no')
  final String membershipNo;
  @override
  final String title;
  @override
  final String name;
  @override
  final String? email;
  @override
  final String? photo;
  @override
  @JsonKey(name: 'date_of_birth')
  final String dateOfBirth;
  @override
  final int gender;
  @override
  final String address;
  @override
  @JsonKey(name: 'pin_code')
  final String pinCode;
  @override
  @JsonKey(name: 'btc_assembly_constituency_id')
  final int btcAssemblyConstituencyId;
  @override
  @JsonKey(name: 'btc_constituency')
  final int btcConstituency;
  @override
  final int district;
  @override
  @JsonKey(name: 'party_district')
  final int partyDistrict;
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
  final String? religion;
  @override
  @JsonKey(name: 'other_religion')
  final String? otherReligion;
  @override
  final String? caste;
  @override
  final String? category;
  @override
  final String? profession;
  @override
  @JsonKey(name: 'other_profession')
  final String? otherProfession;
  @override
  final String? education;
  @override
  @JsonKey(name: 'other_education')
  final String? otherEducation;
  @override
  @JsonKey(name: 'aadhaar_no')
  final String aadhaarNo;
  @override
  @JsonKey(name: 'voter_id')
  final String voterId;
  @override
  final int relationship;
  @override
  final String? country;
  @override
  @JsonKey(name: 'mother_tounge')
  final String? motherTounge;
  @override
  @JsonKey(name: 'other_mother_tounge')
  final String? otherMotherTounge;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'FamilyDetails(id: $id, userId: $userId, headMemberId: $headMemberId, refId: $refId, refCode: $refCode, oldRefCode: $oldRefCode, membershipNo: $membershipNo, title: $title, name: $name, email: $email, photo: $photo, dateOfBirth: $dateOfBirth, gender: $gender, address: $address, pinCode: $pinCode, btcAssemblyConstituencyId: $btcAssemblyConstituencyId, btcConstituency: $btcConstituency, district: $district, partyDistrict: $partyDistrict, assemblyConstituency: $assemblyConstituency, primaryId: $primaryId, boothId: $boothId, villageId: $villageId, createdBy: $createdBy, updateCount: $updateCount, religion: $religion, otherReligion: $otherReligion, caste: $caste, category: $category, profession: $profession, otherProfession: $otherProfession, education: $education, otherEducation: $otherEducation, aadhaarNo: $aadhaarNo, voterId: $voterId, relationship: $relationship, country: $country, motherTounge: $motherTounge, otherMotherTounge: $otherMotherTounge, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.headMemberId, headMemberId) ||
                other.headMemberId == headMemberId) &&
            (identical(other.refId, refId) || other.refId == refId) &&
            (identical(other.refCode, refCode) || other.refCode == refCode) &&
            (identical(other.oldRefCode, oldRefCode) ||
                other.oldRefCode == oldRefCode) &&
            (identical(other.membershipNo, membershipNo) ||
                other.membershipNo == membershipNo) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.btcAssemblyConstituencyId,
                    btcAssemblyConstituencyId) ||
                other.btcAssemblyConstituencyId == btcAssemblyConstituencyId) &&
            (identical(other.btcConstituency, btcConstituency) ||
                other.btcConstituency == btcConstituency) &&
            (identical(other.district, district) ||
                other.district == district) &&
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
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.motherTounge, motherTounge) ||
                other.motherTounge == motherTounge) &&
            (identical(other.otherMotherTounge, otherMotherTounge) ||
                other.otherMotherTounge == otherMotherTounge) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        headMemberId,
        refId,
        refCode,
        oldRefCode,
        membershipNo,
        title,
        name,
        email,
        photo,
        dateOfBirth,
        gender,
        address,
        pinCode,
        btcAssemblyConstituencyId,
        btcConstituency,
        district,
        partyDistrict,
        assemblyConstituency,
        primaryId,
        boothId,
        villageId,
        createdBy,
        updateCount,
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
        relationship,
        country,
        motherTounge,
        otherMotherTounge,
        createdAt,
        updatedAt
      ]);

  /// Create a copy of FamilyDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FamilyDetailsImplCopyWith<_$FamilyDetailsImpl> get copyWith =>
      __$$FamilyDetailsImplCopyWithImpl<_$FamilyDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilyDetailsImplToJson(
      this,
    );
  }
}

abstract class _FamilyDetails implements FamilyDetails {
  const factory _FamilyDetails(
          {required final int id,
          @JsonKey(name: 'user_id') required final int userId,
          @JsonKey(name: 'head_member_id') required final int headMemberId,
          @JsonKey(name: 'ref_id') required final int refId,
          @JsonKey(name: 'ref_code') required final String refCode,
          @JsonKey(name: 'old_ref_code') final String? oldRefCode,
          @JsonKey(name: 'membership_no') required final String membershipNo,
          required final String title,
          required final String name,
          final String? email,
          final String? photo,
          @JsonKey(name: 'date_of_birth') required final String dateOfBirth,
          required final int gender,
          required final String address,
          @JsonKey(name: 'pin_code') required final String pinCode,
          @JsonKey(name: 'btc_assembly_constituency_id')
          required final int btcAssemblyConstituencyId,
          @JsonKey(name: 'btc_constituency') required final int btcConstituency,
          required final int district,
          @JsonKey(name: 'party_district') required final int partyDistrict,
          @JsonKey(name: 'assembly_constituency')
          required final int assemblyConstituency,
          @JsonKey(name: 'primary_id') required final int primaryId,
          @JsonKey(name: 'booth_id') required final int boothId,
          @JsonKey(name: 'village_id') required final int villageId,
          @JsonKey(name: 'created_by') required final int createdBy,
          @JsonKey(name: 'update_count') required final int updateCount,
          final String? religion,
          @JsonKey(name: 'other_religion') final String? otherReligion,
          final String? caste,
          final String? category,
          final String? profession,
          @JsonKey(name: 'other_profession') final String? otherProfession,
          final String? education,
          @JsonKey(name: 'other_education') final String? otherEducation,
          @JsonKey(name: 'aadhaar_no') required final String aadhaarNo,
          @JsonKey(name: 'voter_id') required final String voterId,
          required final int relationship,
          final String? country,
          @JsonKey(name: 'mother_tounge') final String? motherTounge,
          @JsonKey(name: 'other_mother_tounge') final String? otherMotherTounge,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt}) =
      _$FamilyDetailsImpl;

  factory _FamilyDetails.fromJson(Map<String, dynamic> json) =
      _$FamilyDetailsImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'head_member_id')
  int get headMemberId;
  @override
  @JsonKey(name: 'ref_id')
  int get refId;
  @override
  @JsonKey(name: 'ref_code')
  String get refCode;
  @override
  @JsonKey(name: 'old_ref_code')
  String? get oldRefCode;
  @override
  @JsonKey(name: 'membership_no')
  String get membershipNo;
  @override
  String get title;
  @override
  String get name;
  @override
  String? get email;
  @override
  String? get photo;
  @override
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth;
  @override
  int get gender;
  @override
  String get address;
  @override
  @JsonKey(name: 'pin_code')
  String get pinCode;
  @override
  @JsonKey(name: 'btc_assembly_constituency_id')
  int get btcAssemblyConstituencyId;
  @override
  @JsonKey(name: 'btc_constituency')
  int get btcConstituency;
  @override
  int get district;
  @override
  @JsonKey(name: 'party_district')
  int get partyDistrict;
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
  String? get religion;
  @override
  @JsonKey(name: 'other_religion')
  String? get otherReligion;
  @override
  String? get caste;
  @override
  String? get category;
  @override
  String? get profession;
  @override
  @JsonKey(name: 'other_profession')
  String? get otherProfession;
  @override
  String? get education;
  @override
  @JsonKey(name: 'other_education')
  String? get otherEducation;
  @override
  @JsonKey(name: 'aadhaar_no')
  String get aadhaarNo;
  @override
  @JsonKey(name: 'voter_id')
  String get voterId;
  @override
  int get relationship;
  @override
  String? get country;
  @override
  @JsonKey(name: 'mother_tounge')
  String? get motherTounge;
  @override
  @JsonKey(name: 'other_mother_tounge')
  String? get otherMotherTounge;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of FamilyDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FamilyDetailsImplCopyWith<_$FamilyDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
