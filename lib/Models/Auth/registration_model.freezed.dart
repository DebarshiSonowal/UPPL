// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegistrationResponseModel _$RegistrationResponseModelFromJson(
    Map<String, dynamic> json) {
  return _RegistrationResponseModel.fromJson(json);
}

/// @nodoc
mixin _$RegistrationResponseModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  RegistrationData? get data => throw _privateConstructorUsedError;
  int? get code =>
      throw _privateConstructorUsedError; // Optional, as some error responses might not have a `code`
  RegistrationError? get error => throw _privateConstructorUsedError;

  /// Serializes this RegistrationResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegistrationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistrationResponseModelCopyWith<RegistrationResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationResponseModelCopyWith<$Res> {
  factory $RegistrationResponseModelCopyWith(RegistrationResponseModel value,
          $Res Function(RegistrationResponseModel) then) =
      _$RegistrationResponseModelCopyWithImpl<$Res, RegistrationResponseModel>;
  @useResult
  $Res call(
      {int status,
      String message,
      RegistrationData? data,
      int? code,
      RegistrationError? error});

  $RegistrationDataCopyWith<$Res>? get data;
  $RegistrationErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$RegistrationResponseModelCopyWithImpl<$Res,
        $Val extends RegistrationResponseModel>
    implements $RegistrationResponseModelCopyWith<$Res> {
  _$RegistrationResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
    Object? code = freezed,
    Object? error = freezed,
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
              as RegistrationData?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as RegistrationError?,
    ) as $Val);
  }

  /// Create a copy of RegistrationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegistrationDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $RegistrationDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  /// Create a copy of RegistrationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegistrationErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $RegistrationErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegistrationResponseModelImplCopyWith<$Res>
    implements $RegistrationResponseModelCopyWith<$Res> {
  factory _$$RegistrationResponseModelImplCopyWith(
          _$RegistrationResponseModelImpl value,
          $Res Function(_$RegistrationResponseModelImpl) then) =
      __$$RegistrationResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String message,
      RegistrationData? data,
      int? code,
      RegistrationError? error});

  @override
  $RegistrationDataCopyWith<$Res>? get data;
  @override
  $RegistrationErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$RegistrationResponseModelImplCopyWithImpl<$Res>
    extends _$RegistrationResponseModelCopyWithImpl<$Res,
        _$RegistrationResponseModelImpl>
    implements _$$RegistrationResponseModelImplCopyWith<$Res> {
  __$$RegistrationResponseModelImplCopyWithImpl(
      _$RegistrationResponseModelImpl _value,
      $Res Function(_$RegistrationResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
    Object? code = freezed,
    Object? error = freezed,
  }) {
    return _then(_$RegistrationResponseModelImpl(
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
              as RegistrationData?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as RegistrationError?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistrationResponseModelImpl implements _RegistrationResponseModel {
  const _$RegistrationResponseModelImpl(
      {required this.status,
      required this.message,
      this.data,
      this.code,
      this.error});

  factory _$RegistrationResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegistrationResponseModelImplFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final RegistrationData? data;
  @override
  final int? code;
// Optional, as some error responses might not have a `code`
  @override
  final RegistrationError? error;

  @override
  String toString() {
    return 'RegistrationResponseModel(status: $status, message: $message, data: $data, code: $code, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, message, data, code, error);

  /// Create a copy of RegistrationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationResponseModelImplCopyWith<_$RegistrationResponseModelImpl>
      get copyWith => __$$RegistrationResponseModelImplCopyWithImpl<
          _$RegistrationResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationResponseModelImplToJson(
      this,
    );
  }
}

abstract class _RegistrationResponseModel implements RegistrationResponseModel {
  const factory _RegistrationResponseModel(
      {required final int status,
      required final String message,
      final RegistrationData? data,
      final int? code,
      final RegistrationError? error}) = _$RegistrationResponseModelImpl;

  factory _RegistrationResponseModel.fromJson(Map<String, dynamic> json) =
      _$RegistrationResponseModelImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  RegistrationData? get data;
  @override
  int? get code; // Optional, as some error responses might not have a `code`
  @override
  RegistrationError? get error;

  /// Create a copy of RegistrationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationResponseModelImplCopyWith<_$RegistrationResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RegistrationData _$RegistrationDataFromJson(Map<String, dynamic> json) {
  return _RegistrationData.fromJson(json);
}

/// @nodoc
mixin _$RegistrationData {
  @JsonKey(name: 'errors')
  Map<String, List<String>>? get errors => throw _privateConstructorUsedError;
  @JsonKey(name: 'membershipCardData')
  MembershipCardData? get membershipCardData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String? get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this RegistrationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegistrationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistrationDataCopyWith<RegistrationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationDataCopyWith<$Res> {
  factory $RegistrationDataCopyWith(
          RegistrationData value, $Res Function(RegistrationData) then) =
      _$RegistrationDataCopyWithImpl<$Res, RegistrationData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'errors') Map<String, List<String>>? errors,
      @JsonKey(name: 'membershipCardData')
      MembershipCardData? membershipCardData,
      @JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'refresh_token') String? refreshToken});

  $MembershipCardDataCopyWith<$Res>? get membershipCardData;
}

/// @nodoc
class _$RegistrationDataCopyWithImpl<$Res, $Val extends RegistrationData>
    implements $RegistrationDataCopyWith<$Res> {
  _$RegistrationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = freezed,
    Object? membershipCardData = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
      membershipCardData: freezed == membershipCardData
          ? _value.membershipCardData
          : membershipCardData // ignore: cast_nullable_to_non_nullable
              as MembershipCardData?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of RegistrationData
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
abstract class _$$RegistrationDataImplCopyWith<$Res>
    implements $RegistrationDataCopyWith<$Res> {
  factory _$$RegistrationDataImplCopyWith(_$RegistrationDataImpl value,
          $Res Function(_$RegistrationDataImpl) then) =
      __$$RegistrationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'errors') Map<String, List<String>>? errors,
      @JsonKey(name: 'membershipCardData')
      MembershipCardData? membershipCardData,
      @JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'refresh_token') String? refreshToken});

  @override
  $MembershipCardDataCopyWith<$Res>? get membershipCardData;
}

/// @nodoc
class __$$RegistrationDataImplCopyWithImpl<$Res>
    extends _$RegistrationDataCopyWithImpl<$Res, _$RegistrationDataImpl>
    implements _$$RegistrationDataImplCopyWith<$Res> {
  __$$RegistrationDataImplCopyWithImpl(_$RegistrationDataImpl _value,
      $Res Function(_$RegistrationDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = freezed,
    Object? membershipCardData = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_$RegistrationDataImpl(
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
      membershipCardData: freezed == membershipCardData
          ? _value.membershipCardData
          : membershipCardData // ignore: cast_nullable_to_non_nullable
              as MembershipCardData?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistrationDataImpl implements _RegistrationData {
  const _$RegistrationDataImpl(
      {@JsonKey(name: 'errors') final Map<String, List<String>>? errors,
      @JsonKey(name: 'membershipCardData') this.membershipCardData,
      @JsonKey(name: 'access_token') this.accessToken,
      @JsonKey(name: 'refresh_token') this.refreshToken})
      : _errors = errors;

  factory _$RegistrationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegistrationDataImplFromJson(json);

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
  @JsonKey(name: 'membershipCardData')
  final MembershipCardData? membershipCardData;
  @override
  @JsonKey(name: 'access_token')
  final String? accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;

  @override
  String toString() {
    return 'RegistrationData(errors: $errors, membershipCardData: $membershipCardData, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationDataImpl &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            (identical(other.membershipCardData, membershipCardData) ||
                other.membershipCardData == membershipCardData) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_errors),
      membershipCardData,
      accessToken,
      refreshToken);

  /// Create a copy of RegistrationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationDataImplCopyWith<_$RegistrationDataImpl> get copyWith =>
      __$$RegistrationDataImplCopyWithImpl<_$RegistrationDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationDataImplToJson(
      this,
    );
  }
}

abstract class _RegistrationData implements RegistrationData {
  const factory _RegistrationData(
          {@JsonKey(name: 'errors') final Map<String, List<String>>? errors,
          @JsonKey(name: 'membershipCardData')
          final MembershipCardData? membershipCardData,
          @JsonKey(name: 'access_token') final String? accessToken,
          @JsonKey(name: 'refresh_token') final String? refreshToken}) =
      _$RegistrationDataImpl;

  factory _RegistrationData.fromJson(Map<String, dynamic> json) =
      _$RegistrationDataImpl.fromJson;

  @override
  @JsonKey(name: 'errors')
  Map<String, List<String>>? get errors;
  @override
  @JsonKey(name: 'membershipCardData')
  MembershipCardData? get membershipCardData;
  @override
  @JsonKey(name: 'access_token')
  String? get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String? get refreshToken;

  /// Create a copy of RegistrationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationDataImplCopyWith<_$RegistrationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MembershipCardData _$MembershipCardDataFromJson(Map<String, dynamic> json) {
  return _MembershipCardData.fromJson(json);
}

/// @nodoc
mixin _$MembershipCardData {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_no')
  String? get membershipNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_no')
  String? get mobileNo => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'ref_code')
  String? get refCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'joining_date')
  String? get joiningDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'referral_link')
  String? get referralLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_of_registered_member')
  int? get noOfRegisteredMember => throw _privateConstructorUsedError;

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
      {String? name,
      @JsonKey(name: 'membership_no') String? membershipNo,
      @JsonKey(name: 'mobile_no') String? mobileNo,
      String? email,
      @JsonKey(name: 'date_of_birth') String? dateOfBirth,
      String? gender,
      String? photo,
      String? district,
      @JsonKey(name: 'ref_code') String? refCode,
      @JsonKey(name: 'joining_date') String? joiningDate,
      @JsonKey(name: 'referral_link') String? referralLink,
      @JsonKey(name: 'no_of_registered_member') int? noOfRegisteredMember});
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
    Object? name = freezed,
    Object? membershipNo = freezed,
    Object? mobileNo = freezed,
    Object? email = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? photo = freezed,
    Object? district = freezed,
    Object? refCode = freezed,
    Object? joiningDate = freezed,
    Object? referralLink = freezed,
    Object? noOfRegisteredMember = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipNo: freezed == membershipNo
          ? _value.membershipNo
          : membershipNo // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String?,
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
      joiningDate: freezed == joiningDate
          ? _value.joiningDate
          : joiningDate // ignore: cast_nullable_to_non_nullable
              as String?,
      referralLink: freezed == referralLink
          ? _value.referralLink
          : referralLink // ignore: cast_nullable_to_non_nullable
              as String?,
      noOfRegisteredMember: freezed == noOfRegisteredMember
          ? _value.noOfRegisteredMember
          : noOfRegisteredMember // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {String? name,
      @JsonKey(name: 'membership_no') String? membershipNo,
      @JsonKey(name: 'mobile_no') String? mobileNo,
      String? email,
      @JsonKey(name: 'date_of_birth') String? dateOfBirth,
      String? gender,
      String? photo,
      String? district,
      @JsonKey(name: 'ref_code') String? refCode,
      @JsonKey(name: 'joining_date') String? joiningDate,
      @JsonKey(name: 'referral_link') String? referralLink,
      @JsonKey(name: 'no_of_registered_member') int? noOfRegisteredMember});
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
    Object? name = freezed,
    Object? membershipNo = freezed,
    Object? mobileNo = freezed,
    Object? email = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? photo = freezed,
    Object? district = freezed,
    Object? refCode = freezed,
    Object? joiningDate = freezed,
    Object? referralLink = freezed,
    Object? noOfRegisteredMember = freezed,
  }) {
    return _then(_$MembershipCardDataImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipNo: freezed == membershipNo
          ? _value.membershipNo
          : membershipNo // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String?,
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
      joiningDate: freezed == joiningDate
          ? _value.joiningDate
          : joiningDate // ignore: cast_nullable_to_non_nullable
              as String?,
      referralLink: freezed == referralLink
          ? _value.referralLink
          : referralLink // ignore: cast_nullable_to_non_nullable
              as String?,
      noOfRegisteredMember: freezed == noOfRegisteredMember
          ? _value.noOfRegisteredMember
          : noOfRegisteredMember // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MembershipCardDataImpl implements _MembershipCardData {
  const _$MembershipCardDataImpl(
      {this.name,
      @JsonKey(name: 'membership_no') this.membershipNo,
      @JsonKey(name: 'mobile_no') this.mobileNo,
      this.email,
      @JsonKey(name: 'date_of_birth') this.dateOfBirth,
      this.gender,
      this.photo,
      this.district,
      @JsonKey(name: 'ref_code') this.refCode,
      @JsonKey(name: 'joining_date') this.joiningDate,
      @JsonKey(name: 'referral_link') this.referralLink,
      @JsonKey(name: 'no_of_registered_member') this.noOfRegisteredMember});

  factory _$MembershipCardDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MembershipCardDataImplFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: 'membership_no')
  final String? membershipNo;
  @override
  @JsonKey(name: 'mobile_no')
  final String? mobileNo;
  @override
  final String? email;
  @override
  @JsonKey(name: 'date_of_birth')
  final String? dateOfBirth;
  @override
  final String? gender;
  @override
  final String? photo;
  @override
  final String? district;
  @override
  @JsonKey(name: 'ref_code')
  final String? refCode;
  @override
  @JsonKey(name: 'joining_date')
  final String? joiningDate;
  @override
  @JsonKey(name: 'referral_link')
  final String? referralLink;
  @override
  @JsonKey(name: 'no_of_registered_member')
  final int? noOfRegisteredMember;

  @override
  String toString() {
    return 'MembershipCardData(name: $name, membershipNo: $membershipNo, mobileNo: $mobileNo, email: $email, dateOfBirth: $dateOfBirth, gender: $gender, photo: $photo, district: $district, refCode: $refCode, joiningDate: $joiningDate, referralLink: $referralLink, noOfRegisteredMember: $noOfRegisteredMember)';
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
                other.noOfRegisteredMember == noOfRegisteredMember));
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
      noOfRegisteredMember);

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
      {final String? name,
      @JsonKey(name: 'membership_no') final String? membershipNo,
      @JsonKey(name: 'mobile_no') final String? mobileNo,
      final String? email,
      @JsonKey(name: 'date_of_birth') final String? dateOfBirth,
      final String? gender,
      final String? photo,
      final String? district,
      @JsonKey(name: 'ref_code') final String? refCode,
      @JsonKey(name: 'joining_date') final String? joiningDate,
      @JsonKey(name: 'referral_link') final String? referralLink,
      @JsonKey(name: 'no_of_registered_member')
      final int? noOfRegisteredMember}) = _$MembershipCardDataImpl;

  factory _MembershipCardData.fromJson(Map<String, dynamic> json) =
      _$MembershipCardDataImpl.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(name: 'membership_no')
  String? get membershipNo;
  @override
  @JsonKey(name: 'mobile_no')
  String? get mobileNo;
  @override
  String? get email;
  @override
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth;
  @override
  String? get gender;
  @override
  String? get photo;
  @override
  String? get district;
  @override
  @JsonKey(name: 'ref_code')
  String? get refCode;
  @override
  @JsonKey(name: 'joining_date')
  String? get joiningDate;
  @override
  @JsonKey(name: 'referral_link')
  String? get referralLink;
  @override
  @JsonKey(name: 'no_of_registered_member')
  int? get noOfRegisteredMember;

  /// Create a copy of MembershipCardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MembershipCardDataImplCopyWith<_$MembershipCardDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegistrationError _$RegistrationErrorFromJson(Map<String, dynamic> json) {
  return _RegistrationError.fromJson(json);
}

/// @nodoc
mixin _$RegistrationError {
  Map<String, List<String>> get errors => throw _privateConstructorUsedError;

  /// Serializes this RegistrationError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegistrationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistrationErrorCopyWith<RegistrationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationErrorCopyWith<$Res> {
  factory $RegistrationErrorCopyWith(
          RegistrationError value, $Res Function(RegistrationError) then) =
      _$RegistrationErrorCopyWithImpl<$Res, RegistrationError>;
  @useResult
  $Res call({Map<String, List<String>> errors});
}

/// @nodoc
class _$RegistrationErrorCopyWithImpl<$Res, $Val extends RegistrationError>
    implements $RegistrationErrorCopyWith<$Res> {
  _$RegistrationErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistrationErrorImplCopyWith<$Res>
    implements $RegistrationErrorCopyWith<$Res> {
  factory _$$RegistrationErrorImplCopyWith(_$RegistrationErrorImpl value,
          $Res Function(_$RegistrationErrorImpl) then) =
      __$$RegistrationErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, List<String>> errors});
}

/// @nodoc
class __$$RegistrationErrorImplCopyWithImpl<$Res>
    extends _$RegistrationErrorCopyWithImpl<$Res, _$RegistrationErrorImpl>
    implements _$$RegistrationErrorImplCopyWith<$Res> {
  __$$RegistrationErrorImplCopyWithImpl(_$RegistrationErrorImpl _value,
      $Res Function(_$RegistrationErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = null,
  }) {
    return _then(_$RegistrationErrorImpl(
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistrationErrorImpl implements _RegistrationError {
  const _$RegistrationErrorImpl(
      {required final Map<String, List<String>> errors})
      : _errors = errors;

  factory _$RegistrationErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegistrationErrorImplFromJson(json);

  final Map<String, List<String>> _errors;
  @override
  Map<String, List<String>> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @override
  String toString() {
    return 'RegistrationError(errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationErrorImpl &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_errors));

  /// Create a copy of RegistrationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationErrorImplCopyWith<_$RegistrationErrorImpl> get copyWith =>
      __$$RegistrationErrorImplCopyWithImpl<_$RegistrationErrorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationErrorImplToJson(
      this,
    );
  }
}

abstract class _RegistrationError implements RegistrationError {
  const factory _RegistrationError(
          {required final Map<String, List<String>> errors}) =
      _$RegistrationErrorImpl;

  factory _RegistrationError.fromJson(Map<String, dynamic> json) =
      _$RegistrationErrorImpl.fromJson;

  @override
  Map<String, List<String>> get errors;

  /// Create a copy of RegistrationError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationErrorImplCopyWith<_$RegistrationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
