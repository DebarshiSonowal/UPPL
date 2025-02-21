// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_member_personal_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateMemberPersonalDetailsModel _$UpdateMemberPersonalDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateMemberPersonalDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateMemberPersonalDetailsModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  UpdateMemberPersonalDetailsData? get data =>
      throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  /// Serializes this UpdateMemberPersonalDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateMemberPersonalDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateMemberPersonalDetailsModelCopyWith<UpdateMemberPersonalDetailsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateMemberPersonalDetailsModelCopyWith<$Res> {
  factory $UpdateMemberPersonalDetailsModelCopyWith(
          UpdateMemberPersonalDetailsModel value,
          $Res Function(UpdateMemberPersonalDetailsModel) then) =
      _$UpdateMemberPersonalDetailsModelCopyWithImpl<$Res,
          UpdateMemberPersonalDetailsModel>;
  @useResult
  $Res call(
      {int status,
      String message,
      UpdateMemberPersonalDetailsData? data,
      int code});

  $UpdateMemberPersonalDetailsDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UpdateMemberPersonalDetailsModelCopyWithImpl<$Res,
        $Val extends UpdateMemberPersonalDetailsModel>
    implements $UpdateMemberPersonalDetailsModelCopyWith<$Res> {
  _$UpdateMemberPersonalDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateMemberPersonalDetailsModel
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
              as UpdateMemberPersonalDetailsData?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of UpdateMemberPersonalDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdateMemberPersonalDetailsDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UpdateMemberPersonalDetailsDataCopyWith<$Res>(_value.data!,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateMemberPersonalDetailsModelImplCopyWith<$Res>
    implements $UpdateMemberPersonalDetailsModelCopyWith<$Res> {
  factory _$$UpdateMemberPersonalDetailsModelImplCopyWith(
          _$UpdateMemberPersonalDetailsModelImpl value,
          $Res Function(_$UpdateMemberPersonalDetailsModelImpl) then) =
      __$$UpdateMemberPersonalDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String message,
      UpdateMemberPersonalDetailsData? data,
      int code});

  @override
  $UpdateMemberPersonalDetailsDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UpdateMemberPersonalDetailsModelImplCopyWithImpl<$Res>
    extends _$UpdateMemberPersonalDetailsModelCopyWithImpl<$Res,
        _$UpdateMemberPersonalDetailsModelImpl>
    implements _$$UpdateMemberPersonalDetailsModelImplCopyWith<$Res> {
  __$$UpdateMemberPersonalDetailsModelImplCopyWithImpl(
      _$UpdateMemberPersonalDetailsModelImpl _value,
      $Res Function(_$UpdateMemberPersonalDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateMemberPersonalDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
    Object? code = null,
  }) {
    return _then(_$UpdateMemberPersonalDetailsModelImpl(
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
              as UpdateMemberPersonalDetailsData?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateMemberPersonalDetailsModelImpl
    implements _UpdateMemberPersonalDetailsModel {
  const _$UpdateMemberPersonalDetailsModelImpl(
      {required this.status,
      required this.message,
      this.data,
      required this.code});

  factory _$UpdateMemberPersonalDetailsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateMemberPersonalDetailsModelImplFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final UpdateMemberPersonalDetailsData? data;
  @override
  final int code;

  @override
  String toString() {
    return 'UpdateMemberPersonalDetailsModel(status: $status, message: $message, data: $data, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMemberPersonalDetailsModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data, code);

  /// Create a copy of UpdateMemberPersonalDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMemberPersonalDetailsModelImplCopyWith<
          _$UpdateMemberPersonalDetailsModelImpl>
      get copyWith => __$$UpdateMemberPersonalDetailsModelImplCopyWithImpl<
          _$UpdateMemberPersonalDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateMemberPersonalDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateMemberPersonalDetailsModel
    implements UpdateMemberPersonalDetailsModel {
  const factory _UpdateMemberPersonalDetailsModel(
      {required final int status,
      required final String message,
      final UpdateMemberPersonalDetailsData? data,
      required final int code}) = _$UpdateMemberPersonalDetailsModelImpl;

  factory _UpdateMemberPersonalDetailsModel.fromJson(
          Map<String, dynamic> json) =
      _$UpdateMemberPersonalDetailsModelImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  UpdateMemberPersonalDetailsData? get data;
  @override
  int get code;

  /// Create a copy of UpdateMemberPersonalDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateMemberPersonalDetailsModelImplCopyWith<
          _$UpdateMemberPersonalDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateMemberPersonalDetailsData _$UpdateMemberPersonalDetailsDataFromJson(
    Map<String, dynamic> json) {
  return _UpdateMemberPersonalDetailsData.fromJson(json);
}

/// @nodoc
mixin _$UpdateMemberPersonalDetailsData {
  @JsonKey(name: 'errors')
  Map<String, List<String>>? get errors => throw _privateConstructorUsedError;
  @JsonKey(name: 'member')
  MemberDetails? get member => throw _privateConstructorUsedError;

  /// Serializes this UpdateMemberPersonalDetailsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateMemberPersonalDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateMemberPersonalDetailsDataCopyWith<UpdateMemberPersonalDetailsData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateMemberPersonalDetailsDataCopyWith<$Res> {
  factory $UpdateMemberPersonalDetailsDataCopyWith(
          UpdateMemberPersonalDetailsData value,
          $Res Function(UpdateMemberPersonalDetailsData) then) =
      _$UpdateMemberPersonalDetailsDataCopyWithImpl<$Res,
          UpdateMemberPersonalDetailsData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'errors') Map<String, List<String>>? errors,
      @JsonKey(name: 'member') MemberDetails? member});

  $MemberDetailsCopyWith<$Res>? get member;
}

/// @nodoc
class _$UpdateMemberPersonalDetailsDataCopyWithImpl<$Res,
        $Val extends UpdateMemberPersonalDetailsData>
    implements $UpdateMemberPersonalDetailsDataCopyWith<$Res> {
  _$UpdateMemberPersonalDetailsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateMemberPersonalDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = freezed,
    Object? member = freezed,
  }) {
    return _then(_value.copyWith(
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
      member: freezed == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as MemberDetails?,
    ) as $Val);
  }

  /// Create a copy of UpdateMemberPersonalDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberDetailsCopyWith<$Res>? get member {
    if (_value.member == null) {
      return null;
    }

    return $MemberDetailsCopyWith<$Res>(_value.member!, (value) {
      return _then(_value.copyWith(member: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateMemberPersonalDetailsDataImplCopyWith<$Res>
    implements $UpdateMemberPersonalDetailsDataCopyWith<$Res> {
  factory _$$UpdateMemberPersonalDetailsDataImplCopyWith(
          _$UpdateMemberPersonalDetailsDataImpl value,
          $Res Function(_$UpdateMemberPersonalDetailsDataImpl) then) =
      __$$UpdateMemberPersonalDetailsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'errors') Map<String, List<String>>? errors,
      @JsonKey(name: 'member') MemberDetails? member});

  @override
  $MemberDetailsCopyWith<$Res>? get member;
}

/// @nodoc
class __$$UpdateMemberPersonalDetailsDataImplCopyWithImpl<$Res>
    extends _$UpdateMemberPersonalDetailsDataCopyWithImpl<$Res,
        _$UpdateMemberPersonalDetailsDataImpl>
    implements _$$UpdateMemberPersonalDetailsDataImplCopyWith<$Res> {
  __$$UpdateMemberPersonalDetailsDataImplCopyWithImpl(
      _$UpdateMemberPersonalDetailsDataImpl _value,
      $Res Function(_$UpdateMemberPersonalDetailsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateMemberPersonalDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = freezed,
    Object? member = freezed,
  }) {
    return _then(_$UpdateMemberPersonalDetailsDataImpl(
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
      member: freezed == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as MemberDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateMemberPersonalDetailsDataImpl
    implements _UpdateMemberPersonalDetailsData {
  const _$UpdateMemberPersonalDetailsDataImpl(
      {@JsonKey(name: 'errors') final Map<String, List<String>>? errors,
      @JsonKey(name: 'member') this.member})
      : _errors = errors;

  factory _$UpdateMemberPersonalDetailsDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateMemberPersonalDetailsDataImplFromJson(json);

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
  @JsonKey(name: 'member')
  final MemberDetails? member;

  @override
  String toString() {
    return 'UpdateMemberPersonalDetailsData(errors: $errors, member: $member)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMemberPersonalDetailsDataImpl &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            (identical(other.member, member) || other.member == member));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_errors), member);

  /// Create a copy of UpdateMemberPersonalDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMemberPersonalDetailsDataImplCopyWith<
          _$UpdateMemberPersonalDetailsDataImpl>
      get copyWith => __$$UpdateMemberPersonalDetailsDataImplCopyWithImpl<
          _$UpdateMemberPersonalDetailsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateMemberPersonalDetailsDataImplToJson(
      this,
    );
  }
}

abstract class _UpdateMemberPersonalDetailsData
    implements UpdateMemberPersonalDetailsData {
  const factory _UpdateMemberPersonalDetailsData(
          {@JsonKey(name: 'errors') final Map<String, List<String>>? errors,
          @JsonKey(name: 'member') final MemberDetails? member}) =
      _$UpdateMemberPersonalDetailsDataImpl;

  factory _UpdateMemberPersonalDetailsData.fromJson(Map<String, dynamic> json) =
      _$UpdateMemberPersonalDetailsDataImpl.fromJson;

  @override
  @JsonKey(name: 'errors')
  Map<String, List<String>>? get errors;
  @override
  @JsonKey(name: 'member')
  MemberDetails? get member;

  /// Create a copy of UpdateMemberPersonalDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateMemberPersonalDetailsDataImplCopyWith<
          _$UpdateMemberPersonalDetailsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MemberDetails _$MemberDetailsFromJson(Map<String, dynamic> json) {
  return _MemberDetails.fromJson(json);
}

/// @nodoc
mixin _$MemberDetails {
  @JsonKey(name: 'profile_data')
  ProfileData get profileData => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_details')
  PersonalDetails get personalDetails => throw _privateConstructorUsedError;

  /// Serializes this MemberDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberDetailsCopyWith<MemberDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberDetailsCopyWith<$Res> {
  factory $MemberDetailsCopyWith(
          MemberDetails value, $Res Function(MemberDetails) then) =
      _$MemberDetailsCopyWithImpl<$Res, MemberDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'profile_data') ProfileData profileData,
      @JsonKey(name: 'personal_details') PersonalDetails personalDetails});

  $ProfileDataCopyWith<$Res> get profileData;
  $PersonalDetailsCopyWith<$Res> get personalDetails;
}

/// @nodoc
class _$MemberDetailsCopyWithImpl<$Res, $Val extends MemberDetails>
    implements $MemberDetailsCopyWith<$Res> {
  _$MemberDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileData = null,
    Object? personalDetails = null,
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
    ) as $Val);
  }

  /// Create a copy of MemberDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileDataCopyWith<$Res> get profileData {
    return $ProfileDataCopyWith<$Res>(_value.profileData, (value) {
      return _then(_value.copyWith(profileData: value) as $Val);
    });
  }

  /// Create a copy of MemberDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PersonalDetailsCopyWith<$Res> get personalDetails {
    return $PersonalDetailsCopyWith<$Res>(_value.personalDetails, (value) {
      return _then(_value.copyWith(personalDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemberDetailsImplCopyWith<$Res>
    implements $MemberDetailsCopyWith<$Res> {
  factory _$$MemberDetailsImplCopyWith(
          _$MemberDetailsImpl value, $Res Function(_$MemberDetailsImpl) then) =
      __$$MemberDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'profile_data') ProfileData profileData,
      @JsonKey(name: 'personal_details') PersonalDetails personalDetails});

  @override
  $ProfileDataCopyWith<$Res> get profileData;
  @override
  $PersonalDetailsCopyWith<$Res> get personalDetails;
}

/// @nodoc
class __$$MemberDetailsImplCopyWithImpl<$Res>
    extends _$MemberDetailsCopyWithImpl<$Res, _$MemberDetailsImpl>
    implements _$$MemberDetailsImplCopyWith<$Res> {
  __$$MemberDetailsImplCopyWithImpl(
      _$MemberDetailsImpl _value, $Res Function(_$MemberDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileData = null,
    Object? personalDetails = null,
  }) {
    return _then(_$MemberDetailsImpl(
      profileData: null == profileData
          ? _value.profileData
          : profileData // ignore: cast_nullable_to_non_nullable
              as ProfileData,
      personalDetails: null == personalDetails
          ? _value.personalDetails
          : personalDetails // ignore: cast_nullable_to_non_nullable
              as PersonalDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberDetailsImpl implements _MemberDetails {
  const _$MemberDetailsImpl(
      {@JsonKey(name: 'profile_data') required this.profileData,
      @JsonKey(name: 'personal_details') required this.personalDetails});

  factory _$MemberDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberDetailsImplFromJson(json);

  @override
  @JsonKey(name: 'profile_data')
  final ProfileData profileData;
  @override
  @JsonKey(name: 'personal_details')
  final PersonalDetails personalDetails;

  @override
  String toString() {
    return 'MemberDetails(profileData: $profileData, personalDetails: $personalDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberDetailsImpl &&
            (identical(other.profileData, profileData) ||
                other.profileData == profileData) &&
            (identical(other.personalDetails, personalDetails) ||
                other.personalDetails == personalDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, profileData, personalDetails);

  /// Create a copy of MemberDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberDetailsImplCopyWith<_$MemberDetailsImpl> get copyWith =>
      __$$MemberDetailsImplCopyWithImpl<_$MemberDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberDetailsImplToJson(
      this,
    );
  }
}

abstract class _MemberDetails implements MemberDetails {
  const factory _MemberDetails(
      {@JsonKey(name: 'profile_data') required final ProfileData profileData,
      @JsonKey(name: 'personal_details')
      required final PersonalDetails personalDetails}) = _$MemberDetailsImpl;

  factory _MemberDetails.fromJson(Map<String, dynamic> json) =
      _$MemberDetailsImpl.fromJson;

  @override
  @JsonKey(name: 'profile_data')
  ProfileData get profileData;
  @override
  @JsonKey(name: 'personal_details')
  PersonalDetails get personalDetails;

  /// Create a copy of MemberDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberDetailsImplCopyWith<_$MemberDetailsImpl> get copyWith =>
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
  String? get oldRefCode =>
      throw _privateConstructorUsedError; // Nullable field
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
  int get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'update_count')
  int get updateCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  String get village => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
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
  int get gender =>
      throw _privateConstructorUsedError; // Changed from String to int
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError; // Nullable field
  @JsonKey(name: 'mother_tounge')
  int get motherTongue =>
      throw _privateConstructorUsedError; // Changed from String to int
  @JsonKey(name: 'other_mother_tounge')
  String? get otherMotherTongue => throw _privateConstructorUsedError;

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
      int btcAssemblyConstituencyId,
      @JsonKey(name: 'btc_constituency') int btcConstituency,
      @JsonKey(name: 'party_district') int partyDistrict,
      @JsonKey(name: 'assembly_constituency') int assemblyConstituency,
      @JsonKey(name: 'primary_id') int primaryId,
      @JsonKey(name: 'booth_id') int boothId,
      @JsonKey(name: 'village_id') int villageId,
      @JsonKey(name: 'created_by') int createdBy,
      @JsonKey(name: 'update_count') int updateCount,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      String village,
      String photo,
      String district,
      @JsonKey(name: 'district_id') int districtId,
      String name,
      @JsonKey(name: 'mobile_no') String mobileNo,
      @JsonKey(name: 'membership_no') String membershipNo,
      @JsonKey(name: 'ref_code') String refCode,
      int gender,
      @JsonKey(name: 'date_of_birth') String dateOfBirth,
      String? email,
      @JsonKey(name: 'mother_tounge') int motherTongue,
      @JsonKey(name: 'other_mother_tounge') String? otherMotherTongue});
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
    Object? createdBy = null,
    Object? updateCount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? village = null,
    Object? photo = null,
    Object? district = null,
    Object? districtId = null,
    Object? name = null,
    Object? mobileNo = null,
    Object? membershipNo = null,
    Object? refCode = null,
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? email = freezed,
    Object? motherTongue = null,
    Object? otherMotherTongue = freezed,
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
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
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
      motherTongue: null == motherTongue
          ? _value.motherTongue
          : motherTongue // ignore: cast_nullable_to_non_nullable
              as int,
      otherMotherTongue: freezed == otherMotherTongue
          ? _value.otherMotherTongue
          : otherMotherTongue // ignore: cast_nullable_to_non_nullable
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
      int btcAssemblyConstituencyId,
      @JsonKey(name: 'btc_constituency') int btcConstituency,
      @JsonKey(name: 'party_district') int partyDistrict,
      @JsonKey(name: 'assembly_constituency') int assemblyConstituency,
      @JsonKey(name: 'primary_id') int primaryId,
      @JsonKey(name: 'booth_id') int boothId,
      @JsonKey(name: 'village_id') int villageId,
      @JsonKey(name: 'created_by') int createdBy,
      @JsonKey(name: 'update_count') int updateCount,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      String village,
      String photo,
      String district,
      @JsonKey(name: 'district_id') int districtId,
      String name,
      @JsonKey(name: 'mobile_no') String mobileNo,
      @JsonKey(name: 'membership_no') String membershipNo,
      @JsonKey(name: 'ref_code') String refCode,
      int gender,
      @JsonKey(name: 'date_of_birth') String dateOfBirth,
      String? email,
      @JsonKey(name: 'mother_tounge') int motherTongue,
      @JsonKey(name: 'other_mother_tounge') String? otherMotherTongue});
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
    Object? createdBy = null,
    Object? updateCount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? village = null,
    Object? photo = null,
    Object? district = null,
    Object? districtId = null,
    Object? name = null,
    Object? mobileNo = null,
    Object? membershipNo = null,
    Object? refCode = null,
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? email = freezed,
    Object? motherTongue = null,
    Object? otherMotherTongue = freezed,
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
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
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
      motherTongue: null == motherTongue
          ? _value.motherTongue
          : motherTongue // ignore: cast_nullable_to_non_nullable
              as int,
      otherMotherTongue: freezed == otherMotherTongue
          ? _value.otherMotherTongue
          : otherMotherTongue // ignore: cast_nullable_to_non_nullable
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
      required this.photo,
      required this.district,
      @JsonKey(name: 'district_id') required this.districtId,
      required this.name,
      @JsonKey(name: 'mobile_no') required this.mobileNo,
      @JsonKey(name: 'membership_no') required this.membershipNo,
      @JsonKey(name: 'ref_code') required this.refCode,
      required this.gender,
      @JsonKey(name: 'date_of_birth') required this.dateOfBirth,
      this.email,
      @JsonKey(name: 'mother_tounge') required this.motherTongue,
      @JsonKey(name: 'other_mother_tounge') this.otherMotherTongue});

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
// Nullable field
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
  final String photo;
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
// Changed from String to int
  @override
  @JsonKey(name: 'date_of_birth')
  final String dateOfBirth;
  @override
  final String? email;
// Nullable field
  @override
  @JsonKey(name: 'mother_tounge')
  final int motherTongue;
// Changed from String to int
  @override
  @JsonKey(name: 'other_mother_tounge')
  final String? otherMotherTongue;

  @override
  String toString() {
    return 'ProfileData(id: $id, userId: $userId, refId: $refId, oldRefCode: $oldRefCode, title: $title, address: $address, pinCode: $pinCode, btcAssemblyConstituencyId: $btcAssemblyConstituencyId, btcConstituency: $btcConstituency, partyDistrict: $partyDistrict, assemblyConstituency: $assemblyConstituency, primaryId: $primaryId, boothId: $boothId, villageId: $villageId, createdBy: $createdBy, updateCount: $updateCount, createdAt: $createdAt, updatedAt: $updatedAt, village: $village, photo: $photo, district: $district, districtId: $districtId, name: $name, mobileNo: $mobileNo, membershipNo: $membershipNo, refCode: $refCode, gender: $gender, dateOfBirth: $dateOfBirth, email: $email, motherTongue: $motherTongue, otherMotherTongue: $otherMotherTongue)';
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
            (identical(other.motherTongue, motherTongue) ||
                other.motherTongue == motherTongue) &&
            (identical(other.otherMotherTongue, otherMotherTongue) ||
                other.otherMotherTongue == otherMotherTongue));
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
        motherTongue,
        otherMotherTongue
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
      required final int btcAssemblyConstituencyId,
      @JsonKey(name: 'btc_constituency') required final int btcConstituency,
      @JsonKey(name: 'party_district') required final int partyDistrict,
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
      required final String photo,
      required final String district,
      @JsonKey(name: 'district_id') required final int districtId,
      required final String name,
      @JsonKey(name: 'mobile_no') required final String mobileNo,
      @JsonKey(name: 'membership_no') required final String membershipNo,
      @JsonKey(name: 'ref_code') required final String refCode,
      required final int gender,
      @JsonKey(name: 'date_of_birth') required final String dateOfBirth,
      final String? email,
      @JsonKey(name: 'mother_tounge') required final int motherTongue,
      @JsonKey(name: 'other_mother_tounge')
      final String? otherMotherTongue}) = _$ProfileDataImpl;

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
  String? get oldRefCode; // Nullable field
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
  String get photo;
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
  int get gender; // Changed from String to int
  @override
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth;
  @override
  String? get email; // Nullable field
  @override
  @JsonKey(name: 'mother_tounge')
  int get motherTongue; // Changed from String to int
  @override
  @JsonKey(name: 'other_mother_tounge')
  String? get otherMotherTongue;

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
  int get gender =>
      throw _privateConstructorUsedError; // Changed from String to int
  String? get email => throw _privateConstructorUsedError; // Nullable field
  int get religion =>
      throw _privateConstructorUsedError; // Changed from String to int
  @JsonKey(name: 'other_religion')
  String? get otherReligion =>
      throw _privateConstructorUsedError; // Nullable field
  String? get caste => throw _privateConstructorUsedError; // Nullable field
  int get category =>
      throw _privateConstructorUsedError; // Changed from String to int
  int get profession =>
      throw _privateConstructorUsedError; // Changed from String to int
  @JsonKey(name: 'other_profession')
  String? get otherProfession =>
      throw _privateConstructorUsedError; // Nullable field
  int? get education =>
      throw _privateConstructorUsedError; // Changed from String to int
  @JsonKey(name: 'other_education')
  String? get otherEducation =>
      throw _privateConstructorUsedError; // Nullable field
  @JsonKey(name: 'aadhaar_no')
  String? get aadhaarNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'voter_id')
  String get voterId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_no')
  String get mobileNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'community')
  int get community => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_community')
  String? get otherCommunity => throw _privateConstructorUsedError;
  @JsonKey(name: 'mother_tounge')
  int get motherTongue =>
      throw _privateConstructorUsedError; // Changed from String to int
  @JsonKey(name: 'other_mother_tounge')
  String? get otherMotherTongue => throw _privateConstructorUsedError;

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
      int religion,
      @JsonKey(name: 'other_religion') String? otherReligion,
      String? caste,
      int category,
      int profession,
      @JsonKey(name: 'other_profession') String? otherProfession,
      int? education,
      @JsonKey(name: 'other_education') String? otherEducation,
      @JsonKey(name: 'aadhaar_no') String? aadhaarNo,
      @JsonKey(name: 'voter_id') String voterId,
      @JsonKey(name: 'mobile_no') String mobileNo,
      @JsonKey(name: 'community') int community,
      @JsonKey(name: 'other_community') String? otherCommunity,
      @JsonKey(name: 'mother_tounge') int motherTongue,
      @JsonKey(name: 'other_mother_tounge') String? otherMotherTongue});
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
    Object? religion = null,
    Object? otherReligion = freezed,
    Object? caste = freezed,
    Object? category = null,
    Object? profession = null,
    Object? otherProfession = freezed,
    Object? education = freezed,
    Object? otherEducation = freezed,
    Object? aadhaarNo = freezed,
    Object? voterId = null,
    Object? mobileNo = null,
    Object? community = null,
    Object? otherCommunity = freezed,
    Object? motherTongue = null,
    Object? otherMotherTongue = freezed,
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
      religion: null == religion
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as int,
      otherReligion: freezed == otherReligion
          ? _value.otherReligion
          : otherReligion // ignore: cast_nullable_to_non_nullable
              as String?,
      caste: freezed == caste
          ? _value.caste
          : caste // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      profession: null == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as int,
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
      voterId: null == voterId
          ? _value.voterId
          : voterId // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNo: null == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String,
      community: null == community
          ? _value.community
          : community // ignore: cast_nullable_to_non_nullable
              as int,
      otherCommunity: freezed == otherCommunity
          ? _value.otherCommunity
          : otherCommunity // ignore: cast_nullable_to_non_nullable
              as String?,
      motherTongue: null == motherTongue
          ? _value.motherTongue
          : motherTongue // ignore: cast_nullable_to_non_nullable
              as int,
      otherMotherTongue: freezed == otherMotherTongue
          ? _value.otherMotherTongue
          : otherMotherTongue // ignore: cast_nullable_to_non_nullable
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
      int religion,
      @JsonKey(name: 'other_religion') String? otherReligion,
      String? caste,
      int category,
      int profession,
      @JsonKey(name: 'other_profession') String? otherProfession,
      int? education,
      @JsonKey(name: 'other_education') String? otherEducation,
      @JsonKey(name: 'aadhaar_no') String? aadhaarNo,
      @JsonKey(name: 'voter_id') String voterId,
      @JsonKey(name: 'mobile_no') String mobileNo,
      @JsonKey(name: 'community') int community,
      @JsonKey(name: 'other_community') String? otherCommunity,
      @JsonKey(name: 'mother_tounge') int motherTongue,
      @JsonKey(name: 'other_mother_tounge') String? otherMotherTongue});
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
    Object? religion = null,
    Object? otherReligion = freezed,
    Object? caste = freezed,
    Object? category = null,
    Object? profession = null,
    Object? otherProfession = freezed,
    Object? education = freezed,
    Object? otherEducation = freezed,
    Object? aadhaarNo = freezed,
    Object? voterId = null,
    Object? mobileNo = null,
    Object? community = null,
    Object? otherCommunity = freezed,
    Object? motherTongue = null,
    Object? otherMotherTongue = freezed,
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
      religion: null == religion
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as int,
      otherReligion: freezed == otherReligion
          ? _value.otherReligion
          : otherReligion // ignore: cast_nullable_to_non_nullable
              as String?,
      caste: freezed == caste
          ? _value.caste
          : caste // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      profession: null == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as int,
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
      voterId: null == voterId
          ? _value.voterId
          : voterId // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNo: null == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String,
      community: null == community
          ? _value.community
          : community // ignore: cast_nullable_to_non_nullable
              as int,
      otherCommunity: freezed == otherCommunity
          ? _value.otherCommunity
          : otherCommunity // ignore: cast_nullable_to_non_nullable
              as String?,
      motherTongue: null == motherTongue
          ? _value.motherTongue
          : motherTongue // ignore: cast_nullable_to_non_nullable
              as int,
      otherMotherTongue: freezed == otherMotherTongue
          ? _value.otherMotherTongue
          : otherMotherTongue // ignore: cast_nullable_to_non_nullable
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
      required this.religion,
      @JsonKey(name: 'other_religion') this.otherReligion,
      this.caste,
      required this.category,
      required this.profession,
      @JsonKey(name: 'other_profession') this.otherProfession,
      this.education,
      @JsonKey(name: 'other_education') this.otherEducation,
      @JsonKey(name: 'aadhaar_no') this.aadhaarNo,
      @JsonKey(name: 'voter_id') required this.voterId,
      @JsonKey(name: 'mobile_no') required this.mobileNo,
      @JsonKey(name: 'community') required this.community,
      @JsonKey(name: 'other_community') this.otherCommunity,
      @JsonKey(name: 'mother_tounge') required this.motherTongue,
      @JsonKey(name: 'other_mother_tounge') this.otherMotherTongue});

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
// Changed from String to int
  @override
  final String? email;
// Nullable field
  @override
  final int religion;
// Changed from String to int
  @override
  @JsonKey(name: 'other_religion')
  final String? otherReligion;
// Nullable field
  @override
  final String? caste;
// Nullable field
  @override
  final int category;
// Changed from String to int
  @override
  final int profession;
// Changed from String to int
  @override
  @JsonKey(name: 'other_profession')
  final String? otherProfession;
// Nullable field
  @override
  final int? education;
// Changed from String to int
  @override
  @JsonKey(name: 'other_education')
  final String? otherEducation;
// Nullable field
  @override
  @JsonKey(name: 'aadhaar_no')
  final String? aadhaarNo;
  @override
  @JsonKey(name: 'voter_id')
  final String voterId;
  @override
  @JsonKey(name: 'mobile_no')
  final String mobileNo;
  @override
  @JsonKey(name: 'community')
  final int community;
  @override
  @JsonKey(name: 'other_community')
  final String? otherCommunity;
  @override
  @JsonKey(name: 'mother_tounge')
  final int motherTongue;
// Changed from String to int
  @override
  @JsonKey(name: 'other_mother_tounge')
  final String? otherMotherTongue;

  @override
  String toString() {
    return 'PersonalDetails(memberId: $memberId, name: $name, dateOfBirth: $dateOfBirth, gender: $gender, email: $email, religion: $religion, otherReligion: $otherReligion, caste: $caste, category: $category, profession: $profession, otherProfession: $otherProfession, education: $education, otherEducation: $otherEducation, aadhaarNo: $aadhaarNo, voterId: $voterId, mobileNo: $mobileNo, community: $community, otherCommunity: $otherCommunity, motherTongue: $motherTongue, otherMotherTongue: $otherMotherTongue)';
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
            (identical(other.community, community) ||
                other.community == community) &&
            (identical(other.otherCommunity, otherCommunity) ||
                other.otherCommunity == otherCommunity) &&
            (identical(other.motherTongue, motherTongue) ||
                other.motherTongue == motherTongue) &&
            (identical(other.otherMotherTongue, otherMotherTongue) ||
                other.otherMotherTongue == otherMotherTongue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
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
        community,
        otherCommunity,
        motherTongue,
        otherMotherTongue
      ]);

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
      required final int religion,
      @JsonKey(name: 'other_religion') final String? otherReligion,
      final String? caste,
      required final int category,
      required final int profession,
      @JsonKey(name: 'other_profession') final String? otherProfession,
      final int? education,
      @JsonKey(name: 'other_education') final String? otherEducation,
      @JsonKey(name: 'aadhaar_no') final String? aadhaarNo,
      @JsonKey(name: 'voter_id') required final String voterId,
      @JsonKey(name: 'mobile_no') required final String mobileNo,
      @JsonKey(name: 'community') required final int community,
      @JsonKey(name: 'other_community') final String? otherCommunity,
      @JsonKey(name: 'mother_tounge') required final int motherTongue,
      @JsonKey(name: 'other_mother_tounge')
      final String? otherMotherTongue}) = _$PersonalDetailsImpl;

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
  int get gender; // Changed from String to int
  @override
  String? get email; // Nullable field
  @override
  int get religion; // Changed from String to int
  @override
  @JsonKey(name: 'other_religion')
  String? get otherReligion; // Nullable field
  @override
  String? get caste; // Nullable field
  @override
  int get category; // Changed from String to int
  @override
  int get profession; // Changed from String to int
  @override
  @JsonKey(name: 'other_profession')
  String? get otherProfession; // Nullable field
  @override
  int? get education; // Changed from String to int
  @override
  @JsonKey(name: 'other_education')
  String? get otherEducation; // Nullable field
  @override
  @JsonKey(name: 'aadhaar_no')
  String? get aadhaarNo;
  @override
  @JsonKey(name: 'voter_id')
  String get voterId;
  @override
  @JsonKey(name: 'mobile_no')
  String get mobileNo;
  @override
  @JsonKey(name: 'community')
  int get community;
  @override
  @JsonKey(name: 'other_community')
  String? get otherCommunity;
  @override
  @JsonKey(name: 'mother_tounge')
  int get motherTongue; // Changed from String to int
  @override
  @JsonKey(name: 'other_mother_tounge')
  String? get otherMotherTongue;

  /// Create a copy of PersonalDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonalDetailsImplCopyWith<_$PersonalDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
