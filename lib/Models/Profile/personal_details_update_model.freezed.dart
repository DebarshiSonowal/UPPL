// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_details_update_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PersonalDetailsUpdateModel _$PersonalDetailsUpdateModelFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _PersonalDetailsModel.fromJson(json);
    case 'withError':
      return _PersonalDetailsModelWithError.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'PersonalDetailsUpdateModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PersonalDetailsUpdateModel {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int status, String message, MemberData? data,
            PersonalDetailsError? error, int code)
        $default, {
    required TResult Function(String message) withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int status, String message, MemberData? data,
            PersonalDetailsError? error, int code)?
        $default, {
    TResult? Function(String message)? withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int status, String message, MemberData? data,
            PersonalDetailsError? error, int code)?
        $default, {
    TResult Function(String message)? withError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PersonalDetailsModel value) $default, {
    required TResult Function(_PersonalDetailsModelWithError value) withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PersonalDetailsModel value)? $default, {
    TResult? Function(_PersonalDetailsModelWithError value)? withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PersonalDetailsModel value)? $default, {
    TResult Function(_PersonalDetailsModelWithError value)? withError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PersonalDetailsUpdateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PersonalDetailsUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PersonalDetailsUpdateModelCopyWith<PersonalDetailsUpdateModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalDetailsUpdateModelCopyWith<$Res> {
  factory $PersonalDetailsUpdateModelCopyWith(PersonalDetailsUpdateModel value,
          $Res Function(PersonalDetailsUpdateModel) then) =
      _$PersonalDetailsUpdateModelCopyWithImpl<$Res,
          PersonalDetailsUpdateModel>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$PersonalDetailsUpdateModelCopyWithImpl<$Res,
        $Val extends PersonalDetailsUpdateModel>
    implements $PersonalDetailsUpdateModelCopyWith<$Res> {
  _$PersonalDetailsUpdateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PersonalDetailsUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonalDetailsModelImplCopyWith<$Res>
    implements $PersonalDetailsUpdateModelCopyWith<$Res> {
  factory _$$PersonalDetailsModelImplCopyWith(_$PersonalDetailsModelImpl value,
          $Res Function(_$PersonalDetailsModelImpl) then) =
      __$$PersonalDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String message,
      MemberData? data,
      PersonalDetailsError? error,
      int code});

  $MemberDataCopyWith<$Res>? get data;
  $PersonalDetailsErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$PersonalDetailsModelImplCopyWithImpl<$Res>
    extends _$PersonalDetailsUpdateModelCopyWithImpl<$Res,
        _$PersonalDetailsModelImpl>
    implements _$$PersonalDetailsModelImplCopyWith<$Res> {
  __$$PersonalDetailsModelImplCopyWithImpl(_$PersonalDetailsModelImpl _value,
      $Res Function(_$PersonalDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PersonalDetailsUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
    Object? error = freezed,
    Object? code = null,
  }) {
    return _then(_$PersonalDetailsModelImpl(
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
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as PersonalDetailsError?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of PersonalDetailsUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $MemberDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }

  /// Create a copy of PersonalDetailsUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PersonalDetailsErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $PersonalDetailsErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonalDetailsModelImpl implements _PersonalDetailsModel {
  const _$PersonalDetailsModelImpl(
      {required this.status,
      required this.message,
      this.data,
      this.error,
      required this.code,
      final String? $type})
      : $type = $type ?? 'default';

  factory _$PersonalDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonalDetailsModelImplFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final MemberData? data;
  @override
  final PersonalDetailsError? error;
  @override
  final int code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PersonalDetailsUpdateModel(status: $status, message: $message, data: $data, error: $error, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalDetailsModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, message, data, error, code);

  /// Create a copy of PersonalDetailsUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalDetailsModelImplCopyWith<_$PersonalDetailsModelImpl>
      get copyWith =>
          __$$PersonalDetailsModelImplCopyWithImpl<_$PersonalDetailsModelImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int status, String message, MemberData? data,
            PersonalDetailsError? error, int code)
        $default, {
    required TResult Function(String message) withError,
  }) {
    return $default(status, message, data, error, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int status, String message, MemberData? data,
            PersonalDetailsError? error, int code)?
        $default, {
    TResult? Function(String message)? withError,
  }) {
    return $default?.call(status, message, data, error, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int status, String message, MemberData? data,
            PersonalDetailsError? error, int code)?
        $default, {
    TResult Function(String message)? withError,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(status, message, data, error, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PersonalDetailsModel value) $default, {
    required TResult Function(_PersonalDetailsModelWithError value) withError,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PersonalDetailsModel value)? $default, {
    TResult? Function(_PersonalDetailsModelWithError value)? withError,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PersonalDetailsModel value)? $default, {
    TResult Function(_PersonalDetailsModelWithError value)? withError,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonalDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _PersonalDetailsModel implements PersonalDetailsUpdateModel {
  const factory _PersonalDetailsModel(
      {required final int status,
      required final String message,
      final MemberData? data,
      final PersonalDetailsError? error,
      required final int code}) = _$PersonalDetailsModelImpl;

  factory _PersonalDetailsModel.fromJson(Map<String, dynamic> json) =
      _$PersonalDetailsModelImpl.fromJson;

  int get status;
  @override
  String get message;
  MemberData? get data;
  PersonalDetailsError? get error;
  int get code;

  /// Create a copy of PersonalDetailsUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonalDetailsModelImplCopyWith<_$PersonalDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PersonalDetailsModelWithErrorImplCopyWith<$Res>
    implements $PersonalDetailsUpdateModelCopyWith<$Res> {
  factory _$$PersonalDetailsModelWithErrorImplCopyWith(
          _$PersonalDetailsModelWithErrorImpl value,
          $Res Function(_$PersonalDetailsModelWithErrorImpl) then) =
      __$$PersonalDetailsModelWithErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PersonalDetailsModelWithErrorImplCopyWithImpl<$Res>
    extends _$PersonalDetailsUpdateModelCopyWithImpl<$Res,
        _$PersonalDetailsModelWithErrorImpl>
    implements _$$PersonalDetailsModelWithErrorImplCopyWith<$Res> {
  __$$PersonalDetailsModelWithErrorImplCopyWithImpl(
      _$PersonalDetailsModelWithErrorImpl _value,
      $Res Function(_$PersonalDetailsModelWithErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PersonalDetailsUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PersonalDetailsModelWithErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonalDetailsModelWithErrorImpl
    implements _PersonalDetailsModelWithError {
  const _$PersonalDetailsModelWithErrorImpl(this.message, {final String? $type})
      : $type = $type ?? 'withError';

  factory _$PersonalDetailsModelWithErrorImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PersonalDetailsModelWithErrorImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PersonalDetailsUpdateModel.withError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalDetailsModelWithErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of PersonalDetailsUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalDetailsModelWithErrorImplCopyWith<
          _$PersonalDetailsModelWithErrorImpl>
      get copyWith => __$$PersonalDetailsModelWithErrorImplCopyWithImpl<
          _$PersonalDetailsModelWithErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int status, String message, MemberData? data,
            PersonalDetailsError? error, int code)
        $default, {
    required TResult Function(String message) withError,
  }) {
    return withError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int status, String message, MemberData? data,
            PersonalDetailsError? error, int code)?
        $default, {
    TResult? Function(String message)? withError,
  }) {
    return withError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int status, String message, MemberData? data,
            PersonalDetailsError? error, int code)?
        $default, {
    TResult Function(String message)? withError,
    required TResult orElse(),
  }) {
    if (withError != null) {
      return withError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PersonalDetailsModel value) $default, {
    required TResult Function(_PersonalDetailsModelWithError value) withError,
  }) {
    return withError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PersonalDetailsModel value)? $default, {
    TResult? Function(_PersonalDetailsModelWithError value)? withError,
  }) {
    return withError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PersonalDetailsModel value)? $default, {
    TResult Function(_PersonalDetailsModelWithError value)? withError,
    required TResult orElse(),
  }) {
    if (withError != null) {
      return withError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonalDetailsModelWithErrorImplToJson(
      this,
    );
  }
}

abstract class _PersonalDetailsModelWithError
    implements PersonalDetailsUpdateModel {
  const factory _PersonalDetailsModelWithError(final String message) =
      _$PersonalDetailsModelWithErrorImpl;

  factory _PersonalDetailsModelWithError.fromJson(Map<String, dynamic> json) =
      _$PersonalDetailsModelWithErrorImpl.fromJson;

  @override
  String get message;

  /// Create a copy of PersonalDetailsUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonalDetailsModelWithErrorImplCopyWith<
          _$PersonalDetailsModelWithErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MemberData _$MemberDataFromJson(Map<String, dynamic> json) {
  return _MemberData.fromJson(json);
}

/// @nodoc
mixin _$MemberData {
  ProfileData get profileData => throw _privateConstructorUsedError;
  PersonalDetails get personalDetails => throw _privateConstructorUsedError;

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
  $Res call({ProfileData profileData, PersonalDetails personalDetails});

  $ProfileDataCopyWith<$Res> get profileData;
  $PersonalDetailsCopyWith<$Res> get personalDetails;
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

  /// Create a copy of MemberData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileDataCopyWith<$Res> get profileData {
    return $ProfileDataCopyWith<$Res>(_value.profileData, (value) {
      return _then(_value.copyWith(profileData: value) as $Val);
    });
  }

  /// Create a copy of MemberData
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
abstract class _$$MemberDataImplCopyWith<$Res>
    implements $MemberDataCopyWith<$Res> {
  factory _$$MemberDataImplCopyWith(
          _$MemberDataImpl value, $Res Function(_$MemberDataImpl) then) =
      __$$MemberDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileData profileData, PersonalDetails personalDetails});

  @override
  $ProfileDataCopyWith<$Res> get profileData;
  @override
  $PersonalDetailsCopyWith<$Res> get personalDetails;
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
    Object? profileData = null,
    Object? personalDetails = null,
  }) {
    return _then(_$MemberDataImpl(
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
class _$MemberDataImpl implements _MemberData {
  const _$MemberDataImpl(
      {required this.profileData, required this.personalDetails});

  factory _$MemberDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberDataImplFromJson(json);

  @override
  final ProfileData profileData;
  @override
  final PersonalDetails personalDetails;

  @override
  String toString() {
    return 'MemberData(profileData: $profileData, personalDetails: $personalDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberDataImpl &&
            (identical(other.profileData, profileData) ||
                other.profileData == profileData) &&
            (identical(other.personalDetails, personalDetails) ||
                other.personalDetails == personalDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, profileData, personalDetails);

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
      {required final ProfileData profileData,
      required final PersonalDetails personalDetails}) = _$MemberDataImpl;

  factory _MemberData.fromJson(Map<String, dynamic> json) =
      _$MemberDataImpl.fromJson;

  @override
  ProfileData get profileData;
  @override
  PersonalDetails get personalDetails;

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
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ref_id')
  int? get refId => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_ref_code')
  String? get oldRefCode => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get pinCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'btc_assembly_constituency_id')
  int? get btcAssemblyConstituencyId => throw _privateConstructorUsedError;
  int? get btcConstituency => throw _privateConstructorUsedError;
  @JsonKey(name: 'party_district')
  int? get partyDistrict => throw _privateConstructorUsedError;
  int? get assemblyConstituency => throw _privateConstructorUsedError;
  int? get primaryId => throw _privateConstructorUsedError;
  int? get boothId => throw _privateConstructorUsedError;
  int? get villageId => throw _privateConstructorUsedError;
  int? get createdBy => throw _privateConstructorUsedError;
  int? get updateCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  String? get village => throw _privateConstructorUsedError;
  @JsonKey(name: 'village_id ')
  int? get villageId_ => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'district_id')
  int? get districtId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_no')
  String get mobileNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_no')
  String get membershipNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'ref_code')
  String get refCode => throw _privateConstructorUsedError;
  int? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

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
      int userId,
      @JsonKey(name: 'ref_id') int? refId,
      @JsonKey(name: 'old_ref_code') String? oldRefCode,
      String? title,
      String? address,
      String? pinCode,
      @JsonKey(name: 'btc_assembly_constituency_id')
      int? btcAssemblyConstituencyId,
      int? btcConstituency,
      @JsonKey(name: 'party_district') int? partyDistrict,
      int? assemblyConstituency,
      int? primaryId,
      int? boothId,
      int? villageId,
      int? createdBy,
      int? updateCount,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      String? village,
      @JsonKey(name: 'village_id ') int? villageId_,
      String? photo,
      String? district,
      @JsonKey(name: 'district_id') int? districtId,
      String name,
      @JsonKey(name: 'mobile_no') String mobileNo,
      @JsonKey(name: 'membership_no') String membershipNo,
      @JsonKey(name: 'ref_code') String refCode,
      int? gender,
      @JsonKey(name: 'date_of_birth') String dateOfBirth,
      String? email});
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
    Object? refId = freezed,
    Object? oldRefCode = freezed,
    Object? title = freezed,
    Object? address = freezed,
    Object? pinCode = freezed,
    Object? btcAssemblyConstituencyId = freezed,
    Object? btcConstituency = freezed,
    Object? partyDistrict = freezed,
    Object? assemblyConstituency = freezed,
    Object? primaryId = freezed,
    Object? boothId = freezed,
    Object? villageId = freezed,
    Object? createdBy = freezed,
    Object? updateCount = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? village = freezed,
    Object? villageId_ = freezed,
    Object? photo = freezed,
    Object? district = freezed,
    Object? districtId = freezed,
    Object? name = null,
    Object? mobileNo = null,
    Object? membershipNo = null,
    Object? refCode = null,
    Object? gender = freezed,
    Object? dateOfBirth = null,
    Object? email = freezed,
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
      refId: freezed == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as int?,
      oldRefCode: freezed == oldRefCode
          ? _value.oldRefCode
          : oldRefCode // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String?,
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
      assemblyConstituency: freezed == assemblyConstituency
          ? _value.assemblyConstituency
          : assemblyConstituency // ignore: cast_nullable_to_non_nullable
              as int?,
      primaryId: freezed == primaryId
          ? _value.primaryId
          : primaryId // ignore: cast_nullable_to_non_nullable
              as int?,
      boothId: freezed == boothId
          ? _value.boothId
          : boothId // ignore: cast_nullable_to_non_nullable
              as int?,
      villageId: freezed == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      village: freezed == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as String?,
      villageId_: freezed == villageId_
          ? _value.villageId_
          : villageId_ // ignore: cast_nullable_to_non_nullable
              as int?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
      int userId,
      @JsonKey(name: 'ref_id') int? refId,
      @JsonKey(name: 'old_ref_code') String? oldRefCode,
      String? title,
      String? address,
      String? pinCode,
      @JsonKey(name: 'btc_assembly_constituency_id')
      int? btcAssemblyConstituencyId,
      int? btcConstituency,
      @JsonKey(name: 'party_district') int? partyDistrict,
      int? assemblyConstituency,
      int? primaryId,
      int? boothId,
      int? villageId,
      int? createdBy,
      int? updateCount,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      String? village,
      @JsonKey(name: 'village_id ') int? villageId_,
      String? photo,
      String? district,
      @JsonKey(name: 'district_id') int? districtId,
      String name,
      @JsonKey(name: 'mobile_no') String mobileNo,
      @JsonKey(name: 'membership_no') String membershipNo,
      @JsonKey(name: 'ref_code') String refCode,
      int? gender,
      @JsonKey(name: 'date_of_birth') String dateOfBirth,
      String? email});
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
    Object? refId = freezed,
    Object? oldRefCode = freezed,
    Object? title = freezed,
    Object? address = freezed,
    Object? pinCode = freezed,
    Object? btcAssemblyConstituencyId = freezed,
    Object? btcConstituency = freezed,
    Object? partyDistrict = freezed,
    Object? assemblyConstituency = freezed,
    Object? primaryId = freezed,
    Object? boothId = freezed,
    Object? villageId = freezed,
    Object? createdBy = freezed,
    Object? updateCount = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? village = freezed,
    Object? villageId_ = freezed,
    Object? photo = freezed,
    Object? district = freezed,
    Object? districtId = freezed,
    Object? name = null,
    Object? mobileNo = null,
    Object? membershipNo = null,
    Object? refCode = null,
    Object? gender = freezed,
    Object? dateOfBirth = null,
    Object? email = freezed,
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
      refId: freezed == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as int?,
      oldRefCode: freezed == oldRefCode
          ? _value.oldRefCode
          : oldRefCode // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String?,
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
      assemblyConstituency: freezed == assemblyConstituency
          ? _value.assemblyConstituency
          : assemblyConstituency // ignore: cast_nullable_to_non_nullable
              as int?,
      primaryId: freezed == primaryId
          ? _value.primaryId
          : primaryId // ignore: cast_nullable_to_non_nullable
              as int?,
      boothId: freezed == boothId
          ? _value.boothId
          : boothId // ignore: cast_nullable_to_non_nullable
              as int?,
      villageId: freezed == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      village: freezed == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as String?,
      villageId_: freezed == villageId_
          ? _value.villageId_
          : villageId_ // ignore: cast_nullable_to_non_nullable
              as int?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileDataImpl implements _ProfileData {
  const _$ProfileDataImpl(
      {required this.id,
      required this.userId,
      @JsonKey(name: 'ref_id') this.refId,
      @JsonKey(name: 'old_ref_code') this.oldRefCode,
      this.title,
      this.address,
      this.pinCode,
      @JsonKey(name: 'btc_assembly_constituency_id')
      this.btcAssemblyConstituencyId,
      this.btcConstituency,
      @JsonKey(name: 'party_district') this.partyDistrict,
      this.assemblyConstituency,
      this.primaryId,
      this.boothId,
      this.villageId,
      this.createdBy,
      this.updateCount,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      this.village,
      @JsonKey(name: 'village_id ') this.villageId_,
      this.photo,
      this.district,
      @JsonKey(name: 'district_id') this.districtId,
      required this.name,
      @JsonKey(name: 'mobile_no') required this.mobileNo,
      @JsonKey(name: 'membership_no') required this.membershipNo,
      @JsonKey(name: 'ref_code') required this.refCode,
      this.gender,
      @JsonKey(name: 'date_of_birth') required this.dateOfBirth,
      this.email});

  factory _$ProfileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileDataImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  @JsonKey(name: 'ref_id')
  final int? refId;
  @override
  @JsonKey(name: 'old_ref_code')
  final String? oldRefCode;
  @override
  final String? title;
  @override
  final String? address;
  @override
  final String? pinCode;
  @override
  @JsonKey(name: 'btc_assembly_constituency_id')
  final int? btcAssemblyConstituencyId;
  @override
  final int? btcConstituency;
  @override
  @JsonKey(name: 'party_district')
  final int? partyDistrict;
  @override
  final int? assemblyConstituency;
  @override
  final int? primaryId;
  @override
  final int? boothId;
  @override
  final int? villageId;
  @override
  final int? createdBy;
  @override
  final int? updateCount;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  final String? village;
  @override
  @JsonKey(name: 'village_id ')
  final int? villageId_;
  @override
  final String? photo;
  @override
  final String? district;
  @override
  @JsonKey(name: 'district_id')
  final int? districtId;
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
  final int? gender;
  @override
  @JsonKey(name: 'date_of_birth')
  final String dateOfBirth;
  @override
  final String? email;

  @override
  String toString() {
    return 'ProfileData(id: $id, userId: $userId, refId: $refId, oldRefCode: $oldRefCode, title: $title, address: $address, pinCode: $pinCode, btcAssemblyConstituencyId: $btcAssemblyConstituencyId, btcConstituency: $btcConstituency, partyDistrict: $partyDistrict, assemblyConstituency: $assemblyConstituency, primaryId: $primaryId, boothId: $boothId, villageId: $villageId, createdBy: $createdBy, updateCount: $updateCount, createdAt: $createdAt, updatedAt: $updatedAt, village: $village, villageId_: $villageId_, photo: $photo, district: $district, districtId: $districtId, name: $name, mobileNo: $mobileNo, membershipNo: $membershipNo, refCode: $refCode, gender: $gender, dateOfBirth: $dateOfBirth, email: $email)';
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
            (identical(other.villageId_, villageId_) ||
                other.villageId_ == villageId_) &&
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
            (identical(other.email, email) || other.email == email));
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
        villageId_,
        photo,
        district,
        districtId,
        name,
        mobileNo,
        membershipNo,
        refCode,
        gender,
        dateOfBirth,
        email
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
      required final int userId,
      @JsonKey(name: 'ref_id') final int? refId,
      @JsonKey(name: 'old_ref_code') final String? oldRefCode,
      final String? title,
      final String? address,
      final String? pinCode,
      @JsonKey(name: 'btc_assembly_constituency_id')
      final int? btcAssemblyConstituencyId,
      final int? btcConstituency,
      @JsonKey(name: 'party_district') final int? partyDistrict,
      final int? assemblyConstituency,
      final int? primaryId,
      final int? boothId,
      final int? villageId,
      final int? createdBy,
      final int? updateCount,
      @JsonKey(name: 'created_at') required final String createdAt,
      @JsonKey(name: 'updated_at') required final String updatedAt,
      final String? village,
      @JsonKey(name: 'village_id ') final int? villageId_,
      final String? photo,
      final String? district,
      @JsonKey(name: 'district_id') final int? districtId,
      required final String name,
      @JsonKey(name: 'mobile_no') required final String mobileNo,
      @JsonKey(name: 'membership_no') required final String membershipNo,
      @JsonKey(name: 'ref_code') required final String refCode,
      final int? gender,
      @JsonKey(name: 'date_of_birth') required final String dateOfBirth,
      final String? email}) = _$ProfileDataImpl;

  factory _ProfileData.fromJson(Map<String, dynamic> json) =
      _$ProfileDataImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  @JsonKey(name: 'ref_id')
  int? get refId;
  @override
  @JsonKey(name: 'old_ref_code')
  String? get oldRefCode;
  @override
  String? get title;
  @override
  String? get address;
  @override
  String? get pinCode;
  @override
  @JsonKey(name: 'btc_assembly_constituency_id')
  int? get btcAssemblyConstituencyId;
  @override
  int? get btcConstituency;
  @override
  @JsonKey(name: 'party_district')
  int? get partyDistrict;
  @override
  int? get assemblyConstituency;
  @override
  int? get primaryId;
  @override
  int? get boothId;
  @override
  int? get villageId;
  @override
  int? get createdBy;
  @override
  int? get updateCount;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  String? get village;
  @override
  @JsonKey(name: 'village_id ')
  int? get villageId_;
  @override
  String? get photo;
  @override
  String? get district;
  @override
  @JsonKey(name: 'district_id')
  int? get districtId;
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
  int? get gender;
  @override
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth;
  @override
  String? get email;

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
  int? get gender => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  int? get religion => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_religion')
  String? get otherReligion => throw _privateConstructorUsedError;
  String? get caste => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
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
      int? gender,
      String? email,
      int? religion,
      @JsonKey(name: 'other_religion') String? otherReligion,
      String? caste,
      String? category,
      int? profession,
      @JsonKey(name: 'other_profession') String? otherProfession,
      int? education,
      @JsonKey(name: 'other_education') String? otherEducation,
      @JsonKey(name: 'aadhaar_no') String? aadhaarNo,
      @JsonKey(name: 'voter_id') String? voterId,
      @JsonKey(name: 'mobile_no') String mobileNo});
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
    Object? gender = freezed,
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
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as String?,
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
      int? gender,
      String? email,
      int? religion,
      @JsonKey(name: 'other_religion') String? otherReligion,
      String? caste,
      String? category,
      int? profession,
      @JsonKey(name: 'other_profession') String? otherProfession,
      int? education,
      @JsonKey(name: 'other_education') String? otherEducation,
      @JsonKey(name: 'aadhaar_no') String? aadhaarNo,
      @JsonKey(name: 'voter_id') String? voterId,
      @JsonKey(name: 'mobile_no') String mobileNo});
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
    Object? gender = freezed,
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
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as String?,
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
      this.gender,
      this.email,
      this.religion,
      @JsonKey(name: 'other_religion') this.otherReligion,
      this.caste,
      this.category,
      this.profession,
      @JsonKey(name: 'other_profession') this.otherProfession,
      this.education,
      @JsonKey(name: 'other_education') this.otherEducation,
      @JsonKey(name: 'aadhaar_no') this.aadhaarNo,
      @JsonKey(name: 'voter_id') this.voterId,
      @JsonKey(name: 'mobile_no') required this.mobileNo});

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
  final int? gender;
  @override
  final String? email;
  @override
  final int? religion;
  @override
  @JsonKey(name: 'other_religion')
  final String? otherReligion;
  @override
  final String? caste;
  @override
  final String? category;
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
  String toString() {
    return 'PersonalDetails(memberId: $memberId, name: $name, dateOfBirth: $dateOfBirth, gender: $gender, email: $email, religion: $religion, otherReligion: $otherReligion, caste: $caste, category: $category, profession: $profession, otherProfession: $otherProfession, education: $education, otherEducation: $otherEducation, aadhaarNo: $aadhaarNo, voterId: $voterId, mobileNo: $mobileNo)';
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
                other.mobileNo == mobileNo));
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
      mobileNo);

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
          final int? gender,
          final String? email,
          final int? religion,
          @JsonKey(name: 'other_religion') final String? otherReligion,
          final String? caste,
          final String? category,
          final int? profession,
          @JsonKey(name: 'other_profession') final String? otherProfession,
          final int? education,
          @JsonKey(name: 'other_education') final String? otherEducation,
          @JsonKey(name: 'aadhaar_no') final String? aadhaarNo,
          @JsonKey(name: 'voter_id') final String? voterId,
          @JsonKey(name: 'mobile_no') required final String mobileNo}) =
      _$PersonalDetailsImpl;

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
  int? get gender;
  @override
  String? get email;
  @override
  int? get religion;
  @override
  @JsonKey(name: 'other_religion')
  String? get otherReligion;
  @override
  String? get caste;
  @override
  String? get category;
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

  /// Create a copy of PersonalDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonalDetailsImplCopyWith<_$PersonalDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PersonalDetailsError _$PersonalDetailsErrorFromJson(Map<String, dynamic> json) {
  return _PersonalDetailsError.fromJson(json);
}

/// @nodoc
mixin _$PersonalDetailsError {
  Map<String, List<String>> get errors => throw _privateConstructorUsedError;

  /// Serializes this PersonalDetailsError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PersonalDetailsError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PersonalDetailsErrorCopyWith<PersonalDetailsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalDetailsErrorCopyWith<$Res> {
  factory $PersonalDetailsErrorCopyWith(PersonalDetailsError value,
          $Res Function(PersonalDetailsError) then) =
      _$PersonalDetailsErrorCopyWithImpl<$Res, PersonalDetailsError>;
  @useResult
  $Res call({Map<String, List<String>> errors});
}

/// @nodoc
class _$PersonalDetailsErrorCopyWithImpl<$Res,
        $Val extends PersonalDetailsError>
    implements $PersonalDetailsErrorCopyWith<$Res> {
  _$PersonalDetailsErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PersonalDetailsError
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
abstract class _$$PersonalDetailsErrorImplCopyWith<$Res>
    implements $PersonalDetailsErrorCopyWith<$Res> {
  factory _$$PersonalDetailsErrorImplCopyWith(_$PersonalDetailsErrorImpl value,
          $Res Function(_$PersonalDetailsErrorImpl) then) =
      __$$PersonalDetailsErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, List<String>> errors});
}

/// @nodoc
class __$$PersonalDetailsErrorImplCopyWithImpl<$Res>
    extends _$PersonalDetailsErrorCopyWithImpl<$Res, _$PersonalDetailsErrorImpl>
    implements _$$PersonalDetailsErrorImplCopyWith<$Res> {
  __$$PersonalDetailsErrorImplCopyWithImpl(_$PersonalDetailsErrorImpl _value,
      $Res Function(_$PersonalDetailsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PersonalDetailsError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = null,
  }) {
    return _then(_$PersonalDetailsErrorImpl(
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonalDetailsErrorImpl implements _PersonalDetailsError {
  const _$PersonalDetailsErrorImpl(
      {required final Map<String, List<String>> errors})
      : _errors = errors;

  factory _$PersonalDetailsErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonalDetailsErrorImplFromJson(json);

  final Map<String, List<String>> _errors;
  @override
  Map<String, List<String>> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @override
  String toString() {
    return 'PersonalDetailsError(errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalDetailsErrorImpl &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_errors));

  /// Create a copy of PersonalDetailsError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalDetailsErrorImplCopyWith<_$PersonalDetailsErrorImpl>
      get copyWith =>
          __$$PersonalDetailsErrorImplCopyWithImpl<_$PersonalDetailsErrorImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonalDetailsErrorImplToJson(
      this,
    );
  }
}

abstract class _PersonalDetailsError implements PersonalDetailsError {
  const factory _PersonalDetailsError(
          {required final Map<String, List<String>> errors}) =
      _$PersonalDetailsErrorImpl;

  factory _PersonalDetailsError.fromJson(Map<String, dynamic> json) =
      _$PersonalDetailsErrorImpl.fromJson;

  @override
  Map<String, List<String>> get errors;

  /// Create a copy of PersonalDetailsError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonalDetailsErrorImplCopyWith<_$PersonalDetailsErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
