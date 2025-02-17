// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  SuccessData get data => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginModelCopyWith<LoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginModelCopyWith<$Res> {
  factory $LoginModelCopyWith(
          LoginModel value, $Res Function(LoginModel) then) =
      _$LoginModelCopyWithImpl<$Res, LoginModel>;
  @useResult
  $Res call({int status, String message, SuccessData data, int code});

  $SuccessDataCopyWith<$Res> get data;
}

/// @nodoc
class _$LoginModelCopyWithImpl<$Res, $Val extends LoginModel>
    implements $LoginModelCopyWith<$Res> {
  _$LoginModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SuccessData,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SuccessDataCopyWith<$Res> get data {
    return $SuccessDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginModelImplCopyWith<$Res>
    implements $LoginModelCopyWith<$Res> {
  factory _$$LoginModelImplCopyWith(
          _$LoginModelImpl value, $Res Function(_$LoginModelImpl) then) =
      __$$LoginModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, SuccessData data, int code});

  @override
  $SuccessDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoginModelImplCopyWithImpl<$Res>
    extends _$LoginModelCopyWithImpl<$Res, _$LoginModelImpl>
    implements _$$LoginModelImplCopyWith<$Res> {
  __$$LoginModelImplCopyWithImpl(
      _$LoginModelImpl _value, $Res Function(_$LoginModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
    Object? code = null,
  }) {
    return _then(_$LoginModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SuccessData,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoginModelImpl implements _LoginModel {
  const _$LoginModelImpl(
      {required this.status,
      required this.message,
      required this.data,
      required this.code});

  @override
  final int status;
  @override
  final String message;
  @override
  final SuccessData data;
  @override
  final int code;

  @override
  String toString() {
    return 'LoginModel(status: $status, message: $message, data: $data, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message, data, code);

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginModelImplCopyWith<_$LoginModelImpl> get copyWith =>
      __$$LoginModelImplCopyWithImpl<_$LoginModelImpl>(this, _$identity);
}

abstract class _LoginModel implements LoginModel {
  const factory _LoginModel(
      {required final int status,
      required final String message,
      required final SuccessData data,
      required final int code}) = _$LoginModelImpl;

  @override
  int get status;
  @override
  String get message;
  @override
  SuccessData get data;
  @override
  int get code;

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginModelImplCopyWith<_$LoginModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SuccessData _$SuccessDataFromJson(Map<String, dynamic> json) {
  return _SuccessData.fromJson(json);
}

/// @nodoc
mixin _$SuccessData {
  @JsonKey(name: "access_token")
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "refresh_token")
  String? get refreshToken => throw _privateConstructorUsedError;
  MembershipCardData? get membershipCardData =>
      throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'errors')
  Map<String, List<String>>? get errors => throw _privateConstructorUsedError;

  /// Serializes this SuccessData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SuccessData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuccessDataCopyWith<SuccessData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessDataCopyWith<$Res> {
  factory $SuccessDataCopyWith(
          SuccessData value, $Res Function(SuccessData) then) =
      _$SuccessDataCopyWithImpl<$Res, SuccessData>;
  @useResult
  $Res call(
      {@JsonKey(name: "access_token") String? accessToken,
      @JsonKey(name: "refresh_token") String? refreshToken,
      MembershipCardData? membershipCardData,
      String? role,
      @JsonKey(name: "phone_number") String? phoneNumber,
      @JsonKey(name: 'errors') Map<String, List<String>>? errors});

  $MembershipCardDataCopyWith<$Res>? get membershipCardData;
}

/// @nodoc
class _$SuccessDataCopyWithImpl<$Res, $Val extends SuccessData>
    implements $SuccessDataCopyWith<$Res> {
  _$SuccessDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuccessData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? membershipCardData = freezed,
    Object? role = freezed,
    Object? phoneNumber = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipCardData: freezed == membershipCardData
          ? _value.membershipCardData
          : membershipCardData // ignore: cast_nullable_to_non_nullable
              as MembershipCardData?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
    ) as $Val);
  }

  /// Create a copy of SuccessData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MembershipCardDataCopyWith<$Res>? get membershipCardData {
    if (_value.membershipCardData == null) {
      return null;
    }

    return $MembershipCardDataCopyWith<$Res>(_value.membershipCardData!,
        (value) {
      return _then(_value.copyWith(membershipCardData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SuccessDataImplCopyWith<$Res>
    implements $SuccessDataCopyWith<$Res> {
  factory _$$SuccessDataImplCopyWith(
          _$SuccessDataImpl value, $Res Function(_$SuccessDataImpl) then) =
      __$$SuccessDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "access_token") String? accessToken,
      @JsonKey(name: "refresh_token") String? refreshToken,
      MembershipCardData? membershipCardData,
      String? role,
      @JsonKey(name: "phone_number") String? phoneNumber,
      @JsonKey(name: 'errors') Map<String, List<String>>? errors});

  @override
  $MembershipCardDataCopyWith<$Res>? get membershipCardData;
}

/// @nodoc
class __$$SuccessDataImplCopyWithImpl<$Res>
    extends _$SuccessDataCopyWithImpl<$Res, _$SuccessDataImpl>
    implements _$$SuccessDataImplCopyWith<$Res> {
  __$$SuccessDataImplCopyWithImpl(
      _$SuccessDataImpl _value, $Res Function(_$SuccessDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuccessData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? membershipCardData = freezed,
    Object? role = freezed,
    Object? phoneNumber = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$SuccessDataImpl(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipCardData: freezed == membershipCardData
          ? _value.membershipCardData
          : membershipCardData // ignore: cast_nullable_to_non_nullable
              as MembershipCardData?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
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
class _$SuccessDataImpl implements _SuccessData {
  const _$SuccessDataImpl(
      {@JsonKey(name: "access_token") this.accessToken,
      @JsonKey(name: "refresh_token") this.refreshToken,
      this.membershipCardData,
      this.role,
      @JsonKey(name: "phone_number") this.phoneNumber,
      @JsonKey(name: 'errors') final Map<String, List<String>>? errors})
      : _errors = errors;

  factory _$SuccessDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuccessDataImplFromJson(json);

  @override
  @JsonKey(name: "access_token")
  final String? accessToken;
  @override
  @JsonKey(name: "refresh_token")
  final String? refreshToken;
  @override
  final MembershipCardData? membershipCardData;
  @override
  final String? role;
  @override
  @JsonKey(name: "phone_number")
  final String? phoneNumber;
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
    return 'SuccessData(accessToken: $accessToken, refreshToken: $refreshToken, membershipCardData: $membershipCardData, role: $role, phoneNumber: $phoneNumber, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessDataImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.membershipCardData, membershipCardData) ||
                other.membershipCardData == membershipCardData) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      accessToken,
      refreshToken,
      membershipCardData,
      role,
      phoneNumber,
      const DeepCollectionEquality().hash(_errors));

  /// Create a copy of SuccessData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessDataImplCopyWith<_$SuccessDataImpl> get copyWith =>
      __$$SuccessDataImplCopyWithImpl<_$SuccessDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuccessDataImplToJson(
      this,
    );
  }
}

abstract class _SuccessData implements SuccessData {
  const factory _SuccessData(
          {@JsonKey(name: "access_token") final String? accessToken,
          @JsonKey(name: "refresh_token") final String? refreshToken,
          final MembershipCardData? membershipCardData,
          final String? role,
          @JsonKey(name: "phone_number") final String? phoneNumber,
          @JsonKey(name: 'errors') final Map<String, List<String>>? errors}) =
      _$SuccessDataImpl;

  factory _SuccessData.fromJson(Map<String, dynamic> json) =
      _$SuccessDataImpl.fromJson;

  @override
  @JsonKey(name: "access_token")
  String? get accessToken;
  @override
  @JsonKey(name: "refresh_token")
  String? get refreshToken;
  @override
  MembershipCardData? get membershipCardData;
  @override
  String? get role;
  @override
  @JsonKey(name: "phone_number")
  String? get phoneNumber;
  @override
  @JsonKey(name: 'errors')
  Map<String, List<String>>? get errors;

  /// Create a copy of SuccessData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessDataImplCopyWith<_$SuccessDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MembershipCardData _$MembershipCardDataFromJson(Map<String, dynamic> json) {
  return _MembershipCardData.fromJson(json);
}

/// @nodoc
mixin _$MembershipCardData {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "membership_no")
  String? get membershipNo => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile_no")
  String get mobileNo => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "date_of_birth")
  String? get dateOfBirth => throw _privateConstructorUsedError;
  int? get gender => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  @JsonKey(name: "ref_code")
  String? get refCode => throw _privateConstructorUsedError;
  @JsonKey(name: "joining_date")
  String get joiningDate => throw _privateConstructorUsedError;
  @JsonKey(name: "referral_link")
  String get referralLink => throw _privateConstructorUsedError;
  @JsonKey(name: "no_of_registered_member")
  int get noOfRegisteredMember => throw _privateConstructorUsedError;
  @JsonKey(name: 'errors')
  Map<String, List<String>>? get errors => throw _privateConstructorUsedError;

  /// Serializes this MembershipCardData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MembershipCardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MembershipCardDataCopyWith<MembershipCardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembershipCardDataCopyWith<$Res> {
  factory $MembershipCardDataCopyWith(
          MembershipCardData value, $Res Function(MembershipCardData) then) =
      _$MembershipCardDataCopyWithImpl<$Res, MembershipCardData>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: "membership_no") String? membershipNo,
      @JsonKey(name: "mobile_no") String mobileNo,
      String? email,
      @JsonKey(name: "date_of_birth") String? dateOfBirth,
      int? gender,
      String? photo,
      String? district,
      @JsonKey(name: "ref_code") String? refCode,
      @JsonKey(name: "joining_date") String joiningDate,
      @JsonKey(name: "referral_link") String referralLink,
      @JsonKey(name: "no_of_registered_member") int noOfRegisteredMember,
      @JsonKey(name: 'errors') Map<String, List<String>>? errors});
}

/// @nodoc
class _$MembershipCardDataCopyWithImpl<$Res, $Val extends MembershipCardData>
    implements $MembershipCardDataCopyWith<$Res> {
  _$MembershipCardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MembershipCardData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? membershipNo = freezed,
    Object? mobileNo = null,
    Object? email = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? photo = freezed,
    Object? district = freezed,
    Object? refCode = freezed,
    Object? joiningDate = null,
    Object? referralLink = null,
    Object? noOfRegisteredMember = null,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      membershipNo: freezed == membershipNo
          ? _value.membershipNo
          : membershipNo // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: null == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      refCode: freezed == refCode
          ? _value.refCode
          : refCode // ignore: cast_nullable_to_non_nullable
              as String?,
      joiningDate: null == joiningDate
          ? _value.joiningDate
          : joiningDate // ignore: cast_nullable_to_non_nullable
              as String,
      referralLink: null == referralLink
          ? _value.referralLink
          : referralLink // ignore: cast_nullable_to_non_nullable
              as String,
      noOfRegisteredMember: null == noOfRegisteredMember
          ? _value.noOfRegisteredMember
          : noOfRegisteredMember // ignore: cast_nullable_to_non_nullable
              as int,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MembershipCardDataImplCopyWith<$Res>
    implements $MembershipCardDataCopyWith<$Res> {
  factory _$$MembershipCardDataImplCopyWith(_$MembershipCardDataImpl value,
          $Res Function(_$MembershipCardDataImpl) then) =
      __$$MembershipCardDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: "membership_no") String? membershipNo,
      @JsonKey(name: "mobile_no") String mobileNo,
      String? email,
      @JsonKey(name: "date_of_birth") String? dateOfBirth,
      int? gender,
      String? photo,
      String? district,
      @JsonKey(name: "ref_code") String? refCode,
      @JsonKey(name: "joining_date") String joiningDate,
      @JsonKey(name: "referral_link") String referralLink,
      @JsonKey(name: "no_of_registered_member") int noOfRegisteredMember,
      @JsonKey(name: 'errors') Map<String, List<String>>? errors});
}

/// @nodoc
class __$$MembershipCardDataImplCopyWithImpl<$Res>
    extends _$MembershipCardDataCopyWithImpl<$Res, _$MembershipCardDataImpl>
    implements _$$MembershipCardDataImplCopyWith<$Res> {
  __$$MembershipCardDataImplCopyWithImpl(_$MembershipCardDataImpl _value,
      $Res Function(_$MembershipCardDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MembershipCardData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? membershipNo = freezed,
    Object? mobileNo = null,
    Object? email = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? photo = freezed,
    Object? district = freezed,
    Object? refCode = freezed,
    Object? joiningDate = null,
    Object? referralLink = null,
    Object? noOfRegisteredMember = null,
    Object? errors = freezed,
  }) {
    return _then(_$MembershipCardDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      membershipNo: freezed == membershipNo
          ? _value.membershipNo
          : membershipNo // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: null == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      refCode: freezed == refCode
          ? _value.refCode
          : refCode // ignore: cast_nullable_to_non_nullable
              as String?,
      joiningDate: null == joiningDate
          ? _value.joiningDate
          : joiningDate // ignore: cast_nullable_to_non_nullable
              as String,
      referralLink: null == referralLink
          ? _value.referralLink
          : referralLink // ignore: cast_nullable_to_non_nullable
              as String,
      noOfRegisteredMember: null == noOfRegisteredMember
          ? _value.noOfRegisteredMember
          : noOfRegisteredMember // ignore: cast_nullable_to_non_nullable
              as int,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MembershipCardDataImpl implements _MembershipCardData {
  const _$MembershipCardDataImpl(
      {required this.name,
      @JsonKey(name: "membership_no") this.membershipNo,
      @JsonKey(name: "mobile_no") required this.mobileNo,
      this.email,
      @JsonKey(name: "date_of_birth") this.dateOfBirth,
      this.gender,
      this.photo,
      this.district,
      @JsonKey(name: "ref_code") this.refCode,
      @JsonKey(name: "joining_date") required this.joiningDate,
      @JsonKey(name: "referral_link") required this.referralLink,
      @JsonKey(name: "no_of_registered_member")
      required this.noOfRegisteredMember,
      @JsonKey(name: 'errors') final Map<String, List<String>>? errors})
      : _errors = errors;

  factory _$MembershipCardDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MembershipCardDataImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: "membership_no")
  final String? membershipNo;
  @override
  @JsonKey(name: "mobile_no")
  final String mobileNo;
  @override
  final String? email;
  @override
  @JsonKey(name: "date_of_birth")
  final String? dateOfBirth;
  @override
  final int? gender;
  @override
  final String? photo;
  @override
  final String? district;
  @override
  @JsonKey(name: "ref_code")
  final String? refCode;
  @override
  @JsonKey(name: "joining_date")
  final String joiningDate;
  @override
  @JsonKey(name: "referral_link")
  final String referralLink;
  @override
  @JsonKey(name: "no_of_registered_member")
  final int noOfRegisteredMember;
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
    return 'MembershipCardData(name: $name, membershipNo: $membershipNo, mobileNo: $mobileNo, email: $email, dateOfBirth: $dateOfBirth, gender: $gender, photo: $photo, district: $district, refCode: $refCode, joiningDate: $joiningDate, referralLink: $referralLink, noOfRegisteredMember: $noOfRegisteredMember, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MembershipCardDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.membershipNo, membershipNo) ||
                other.membershipNo == membershipNo) &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.refCode, refCode) || other.refCode == refCode) &&
            (identical(other.joiningDate, joiningDate) ||
                other.joiningDate == joiningDate) &&
            (identical(other.referralLink, referralLink) ||
                other.referralLink == referralLink) &&
            (identical(other.noOfRegisteredMember, noOfRegisteredMember) ||
                other.noOfRegisteredMember == noOfRegisteredMember) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      membershipNo,
      mobileNo,
      email,
      dateOfBirth,
      gender,
      photo,
      district,
      refCode,
      joiningDate,
      referralLink,
      noOfRegisteredMember,
      const DeepCollectionEquality().hash(_errors));

  /// Create a copy of MembershipCardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MembershipCardDataImplCopyWith<_$MembershipCardDataImpl> get copyWith =>
      __$$MembershipCardDataImplCopyWithImpl<_$MembershipCardDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MembershipCardDataImplToJson(
      this,
    );
  }
}

abstract class _MembershipCardData implements MembershipCardData {
  const factory _MembershipCardData(
          {required final String name,
          @JsonKey(name: "membership_no") final String? membershipNo,
          @JsonKey(name: "mobile_no") required final String mobileNo,
          final String? email,
          @JsonKey(name: "date_of_birth") final String? dateOfBirth,
          final int? gender,
          final String? photo,
          final String? district,
          @JsonKey(name: "ref_code") final String? refCode,
          @JsonKey(name: "joining_date") required final String joiningDate,
          @JsonKey(name: "referral_link") required final String referralLink,
          @JsonKey(name: "no_of_registered_member")
          required final int noOfRegisteredMember,
          @JsonKey(name: 'errors') final Map<String, List<String>>? errors}) =
      _$MembershipCardDataImpl;

  factory _MembershipCardData.fromJson(Map<String, dynamic> json) =
      _$MembershipCardDataImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: "membership_no")
  String? get membershipNo;
  @override
  @JsonKey(name: "mobile_no")
  String get mobileNo;
  @override
  String? get email;
  @override
  @JsonKey(name: "date_of_birth")
  String? get dateOfBirth;
  @override
  int? get gender;
  @override
  String? get photo;
  @override
  String? get district;
  @override
  @JsonKey(name: "ref_code")
  String? get refCode;
  @override
  @JsonKey(name: "joining_date")
  String get joiningDate;
  @override
  @JsonKey(name: "referral_link")
  String get referralLink;
  @override
  @JsonKey(name: "no_of_registered_member")
  int get noOfRegisteredMember;
  @override
  @JsonKey(name: 'errors')
  Map<String, List<String>>? get errors;

  /// Create a copy of MembershipCardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MembershipCardDataImplCopyWith<_$MembershipCardDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
