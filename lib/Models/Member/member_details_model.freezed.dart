// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MemberDetailsModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  Object get data => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int status, String message, MemberDetailsData data, int code)
        success,
    required TResult Function(
            int status, String message, MemberDetailsError data, int code)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int status, String message, MemberDetailsData data, int code)?
        success,
    TResult? Function(
            int status, String message, MemberDetailsError data, int code)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int status, String message, MemberDetailsData data, int code)?
        success,
    TResult Function(
            int status, String message, MemberDetailsError data, int code)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessResponse value) success,
    required TResult Function(ErrorResponse value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessResponse value)? success,
    TResult? Function(ErrorResponse value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessResponse value)? success,
    TResult Function(ErrorResponse value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MemberDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberDetailsModelCopyWith<MemberDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberDetailsModelCopyWith<$Res> {
  factory $MemberDetailsModelCopyWith(
          MemberDetailsModel value, $Res Function(MemberDetailsModel) then) =
      _$MemberDetailsModelCopyWithImpl<$Res, MemberDetailsModel>;
  @useResult
  $Res call({int status, String message, int code});
}

/// @nodoc
class _$MemberDetailsModelCopyWithImpl<$Res, $Val extends MemberDetailsModel>
    implements $MemberDetailsModelCopyWith<$Res> {
  _$MemberDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
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
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuccessResponseImplCopyWith<$Res>
    implements $MemberDetailsModelCopyWith<$Res> {
  factory _$$SuccessResponseImplCopyWith(_$SuccessResponseImpl value,
          $Res Function(_$SuccessResponseImpl) then) =
      __$$SuccessResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, MemberDetailsData data, int code});

  $MemberDetailsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SuccessResponseImplCopyWithImpl<$Res>
    extends _$MemberDetailsModelCopyWithImpl<$Res, _$SuccessResponseImpl>
    implements _$$SuccessResponseImplCopyWith<$Res> {
  __$$SuccessResponseImplCopyWithImpl(
      _$SuccessResponseImpl _value, $Res Function(_$SuccessResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
    Object? code = null,
  }) {
    return _then(_$SuccessResponseImpl(
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
              as MemberDetailsData,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of MemberDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberDetailsDataCopyWith<$Res> get data {
    return $MemberDetailsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$SuccessResponseImpl implements SuccessResponse {
  const _$SuccessResponseImpl(
      {required this.status,
      required this.message,
      required this.data,
      required this.code});

  @override
  final int status;
  @override
  final String message;
  @override
  final MemberDetailsData data;
  @override
  final int code;

  @override
  String toString() {
    return 'MemberDetailsModel.success(status: $status, message: $message, data: $data, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message, data, code);

  /// Create a copy of MemberDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessResponseImplCopyWith<_$SuccessResponseImpl> get copyWith =>
      __$$SuccessResponseImplCopyWithImpl<_$SuccessResponseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int status, String message, MemberDetailsData data, int code)
        success,
    required TResult Function(
            int status, String message, MemberDetailsError data, int code)
        error,
  }) {
    return success(status, message, data, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int status, String message, MemberDetailsData data, int code)?
        success,
    TResult? Function(
            int status, String message, MemberDetailsError data, int code)?
        error,
  }) {
    return success?.call(status, message, data, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int status, String message, MemberDetailsData data, int code)?
        success,
    TResult Function(
            int status, String message, MemberDetailsError data, int code)?
        error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(status, message, data, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessResponse value) success,
    required TResult Function(ErrorResponse value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessResponse value)? success,
    TResult? Function(ErrorResponse value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessResponse value)? success,
    TResult Function(ErrorResponse value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessResponse implements MemberDetailsModel {
  const factory SuccessResponse(
      {required final int status,
      required final String message,
      required final MemberDetailsData data,
      required final int code}) = _$SuccessResponseImpl;

  @override
  int get status;
  @override
  String get message;
  @override
  MemberDetailsData get data;
  @override
  int get code;

  /// Create a copy of MemberDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessResponseImplCopyWith<_$SuccessResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorResponseImplCopyWith<$Res>
    implements $MemberDetailsModelCopyWith<$Res> {
  factory _$$ErrorResponseImplCopyWith(
          _$ErrorResponseImpl value, $Res Function(_$ErrorResponseImpl) then) =
      __$$ErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, MemberDetailsError data, int code});

  $MemberDetailsErrorCopyWith<$Res> get data;
}

/// @nodoc
class __$$ErrorResponseImplCopyWithImpl<$Res>
    extends _$MemberDetailsModelCopyWithImpl<$Res, _$ErrorResponseImpl>
    implements _$$ErrorResponseImplCopyWith<$Res> {
  __$$ErrorResponseImplCopyWithImpl(
      _$ErrorResponseImpl _value, $Res Function(_$ErrorResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
    Object? code = null,
  }) {
    return _then(_$ErrorResponseImpl(
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
              as MemberDetailsError,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of MemberDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberDetailsErrorCopyWith<$Res> get data {
    return $MemberDetailsErrorCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$ErrorResponseImpl implements ErrorResponse {
  const _$ErrorResponseImpl(
      {required this.status,
      required this.message,
      required this.data,
      required this.code});

  @override
  final int status;
  @override
  final String message;
  @override
  final MemberDetailsError data;
  @override
  final int code;

  @override
  String toString() {
    return 'MemberDetailsModel.error(status: $status, message: $message, data: $data, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message, data, code);

  /// Create a copy of MemberDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorResponseImplCopyWith<_$ErrorResponseImpl> get copyWith =>
      __$$ErrorResponseImplCopyWithImpl<_$ErrorResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int status, String message, MemberDetailsData data, int code)
        success,
    required TResult Function(
            int status, String message, MemberDetailsError data, int code)
        error,
  }) {
    return error(status, message, data, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int status, String message, MemberDetailsData data, int code)?
        success,
    TResult? Function(
            int status, String message, MemberDetailsError data, int code)?
        error,
  }) {
    return error?.call(status, message, data, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int status, String message, MemberDetailsData data, int code)?
        success,
    TResult Function(
            int status, String message, MemberDetailsError data, int code)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(status, message, data, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessResponse value) success,
    required TResult Function(ErrorResponse value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessResponse value)? success,
    TResult? Function(ErrorResponse value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessResponse value)? success,
    TResult Function(ErrorResponse value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorResponse implements MemberDetailsModel {
  const factory ErrorResponse(
      {required final int status,
      required final String message,
      required final MemberDetailsError data,
      required final int code}) = _$ErrorResponseImpl;

  @override
  int get status;
  @override
  String get message;
  @override
  MemberDetailsError get data;
  @override
  int get code;

  /// Create a copy of MemberDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorResponseImplCopyWith<_$ErrorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MemberDetailsData _$MemberDetailsDataFromJson(Map<String, dynamic> json) {
  return _MemberDetailsData.fromJson(json);
}

/// @nodoc
mixin _$MemberDetailsData {
  @JsonKey(name: 'membership_card_data')
  MembershipCardData get membershipCardData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_details')
  MemberPersonalDetails get personalDetails =>
      throw _privateConstructorUsedError;

  /// Serializes this MemberDetailsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberDetailsDataCopyWith<MemberDetailsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberDetailsDataCopyWith<$Res> {
  factory $MemberDetailsDataCopyWith(
          MemberDetailsData value, $Res Function(MemberDetailsData) then) =
      _$MemberDetailsDataCopyWithImpl<$Res, MemberDetailsData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'membership_card_data')
      MembershipCardData membershipCardData,
      @JsonKey(name: 'personal_details')
      MemberPersonalDetails personalDetails});

  $MembershipCardDataCopyWith<$Res> get membershipCardData;
  $MemberPersonalDetailsCopyWith<$Res> get personalDetails;
}

/// @nodoc
class _$MemberDetailsDataCopyWithImpl<$Res, $Val extends MemberDetailsData>
    implements $MemberDetailsDataCopyWith<$Res> {
  _$MemberDetailsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? membershipCardData = null,
    Object? personalDetails = null,
  }) {
    return _then(_value.copyWith(
      membershipCardData: null == membershipCardData
          ? _value.membershipCardData
          : membershipCardData // ignore: cast_nullable_to_non_nullable
              as MembershipCardData,
      personalDetails: null == personalDetails
          ? _value.personalDetails
          : personalDetails // ignore: cast_nullable_to_non_nullable
              as MemberPersonalDetails,
    ) as $Val);
  }

  /// Create a copy of MemberDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MembershipCardDataCopyWith<$Res> get membershipCardData {
    return $MembershipCardDataCopyWith<$Res>(_value.membershipCardData,
        (value) {
      return _then(_value.copyWith(membershipCardData: value) as $Val);
    });
  }

  /// Create a copy of MemberDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberPersonalDetailsCopyWith<$Res> get personalDetails {
    return $MemberPersonalDetailsCopyWith<$Res>(_value.personalDetails,
        (value) {
      return _then(_value.copyWith(personalDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemberDetailsDataImplCopyWith<$Res>
    implements $MemberDetailsDataCopyWith<$Res> {
  factory _$$MemberDetailsDataImplCopyWith(_$MemberDetailsDataImpl value,
          $Res Function(_$MemberDetailsDataImpl) then) =
      __$$MemberDetailsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'membership_card_data')
      MembershipCardData membershipCardData,
      @JsonKey(name: 'personal_details')
      MemberPersonalDetails personalDetails});

  @override
  $MembershipCardDataCopyWith<$Res> get membershipCardData;
  @override
  $MemberPersonalDetailsCopyWith<$Res> get personalDetails;
}

/// @nodoc
class __$$MemberDetailsDataImplCopyWithImpl<$Res>
    extends _$MemberDetailsDataCopyWithImpl<$Res, _$MemberDetailsDataImpl>
    implements _$$MemberDetailsDataImplCopyWith<$Res> {
  __$$MemberDetailsDataImplCopyWithImpl(_$MemberDetailsDataImpl _value,
      $Res Function(_$MemberDetailsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? membershipCardData = null,
    Object? personalDetails = null,
  }) {
    return _then(_$MemberDetailsDataImpl(
      membershipCardData: null == membershipCardData
          ? _value.membershipCardData
          : membershipCardData // ignore: cast_nullable_to_non_nullable
              as MembershipCardData,
      personalDetails: null == personalDetails
          ? _value.personalDetails
          : personalDetails // ignore: cast_nullable_to_non_nullable
              as MemberPersonalDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberDetailsDataImpl implements _MemberDetailsData {
  const _$MemberDetailsDataImpl(
      {@JsonKey(name: 'membership_card_data') required this.membershipCardData,
      @JsonKey(name: 'personal_details') required this.personalDetails});

  factory _$MemberDetailsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberDetailsDataImplFromJson(json);

  @override
  @JsonKey(name: 'membership_card_data')
  final MembershipCardData membershipCardData;
  @override
  @JsonKey(name: 'personal_details')
  final MemberPersonalDetails personalDetails;

  @override
  String toString() {
    return 'MemberDetailsData(membershipCardData: $membershipCardData, personalDetails: $personalDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberDetailsDataImpl &&
            (identical(other.membershipCardData, membershipCardData) ||
                other.membershipCardData == membershipCardData) &&
            (identical(other.personalDetails, personalDetails) ||
                other.personalDetails == personalDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, membershipCardData, personalDetails);

  /// Create a copy of MemberDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberDetailsDataImplCopyWith<_$MemberDetailsDataImpl> get copyWith =>
      __$$MemberDetailsDataImplCopyWithImpl<_$MemberDetailsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberDetailsDataImplToJson(
      this,
    );
  }
}

abstract class _MemberDetailsData implements MemberDetailsData {
  const factory _MemberDetailsData(
          {@JsonKey(name: 'membership_card_data')
          required final MembershipCardData membershipCardData,
          @JsonKey(name: 'personal_details')
          required final MemberPersonalDetails personalDetails}) =
      _$MemberDetailsDataImpl;

  factory _MemberDetailsData.fromJson(Map<String, dynamic> json) =
      _$MemberDetailsDataImpl.fromJson;

  @override
  @JsonKey(name: 'membership_card_data')
  MembershipCardData get membershipCardData;
  @override
  @JsonKey(name: 'personal_details')
  MemberPersonalDetails get personalDetails;

  /// Create a copy of MemberDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberDetailsDataImplCopyWith<_$MemberDetailsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MembershipCardData _$MembershipCardDataFromJson(Map<String, dynamic> json) {
  return _MembershipCardData.fromJson(json);
}

/// @nodoc
mixin _$MembershipCardData {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_no')
  String? get membershipNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_no')
  String get mobileNo => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth => throw _privateConstructorUsedError;
  int? get gender => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'ref_code')
  String? get refCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'joining_date')
  String get joiningDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'referral_link')
  String get referralLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_of_registered_member')
  int get noOfRegisteredMember => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'membership_no') String? membershipNo,
      @JsonKey(name: 'mobile_no') String mobileNo,
      String? email,
      @JsonKey(name: 'date_of_birth') String? dateOfBirth,
      int? gender,
      String? photo,
      String? district,
      @JsonKey(name: 'ref_code') String? refCode,
      @JsonKey(name: 'joining_date') String joiningDate,
      @JsonKey(name: 'referral_link') String referralLink,
      @JsonKey(name: 'no_of_registered_member') int noOfRegisteredMember});
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
      @JsonKey(name: 'membership_no') String? membershipNo,
      @JsonKey(name: 'mobile_no') String mobileNo,
      String? email,
      @JsonKey(name: 'date_of_birth') String? dateOfBirth,
      int? gender,
      String? photo,
      String? district,
      @JsonKey(name: 'ref_code') String? refCode,
      @JsonKey(name: 'joining_date') String joiningDate,
      @JsonKey(name: 'referral_link') String referralLink,
      @JsonKey(name: 'no_of_registered_member') int noOfRegisteredMember});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MembershipCardDataImpl implements _MembershipCardData {
  const _$MembershipCardDataImpl(
      {required this.name,
      @JsonKey(name: 'membership_no') this.membershipNo,
      @JsonKey(name: 'mobile_no') required this.mobileNo,
      this.email,
      @JsonKey(name: 'date_of_birth') this.dateOfBirth,
      this.gender,
      this.photo,
      this.district,
      @JsonKey(name: 'ref_code') this.refCode,
      @JsonKey(name: 'joining_date') required this.joiningDate,
      @JsonKey(name: 'referral_link') required this.referralLink,
      @JsonKey(name: 'no_of_registered_member')
      required this.noOfRegisteredMember});

  factory _$MembershipCardDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MembershipCardDataImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'membership_no')
  final String? membershipNo;
  @override
  @JsonKey(name: 'mobile_no')
  final String mobileNo;
  @override
  final String? email;
  @override
  @JsonKey(name: 'date_of_birth')
  final String? dateOfBirth;
  @override
  final int? gender;
  @override
  final String? photo;
  @override
  final String? district;
  @override
  @JsonKey(name: 'ref_code')
  final String? refCode;
  @override
  @JsonKey(name: 'joining_date')
  final String joiningDate;
  @override
  @JsonKey(name: 'referral_link')
  final String referralLink;
  @override
  @JsonKey(name: 'no_of_registered_member')
  final int noOfRegisteredMember;

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
      {required final String name,
      @JsonKey(name: 'membership_no') final String? membershipNo,
      @JsonKey(name: 'mobile_no') required final String mobileNo,
      final String? email,
      @JsonKey(name: 'date_of_birth') final String? dateOfBirth,
      final int? gender,
      final String? photo,
      final String? district,
      @JsonKey(name: 'ref_code') final String? refCode,
      @JsonKey(name: 'joining_date') required final String joiningDate,
      @JsonKey(name: 'referral_link') required final String referralLink,
      @JsonKey(name: 'no_of_registered_member')
      required final int noOfRegisteredMember}) = _$MembershipCardDataImpl;

  factory _MembershipCardData.fromJson(Map<String, dynamic> json) =
      _$MembershipCardDataImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'membership_no')
  String? get membershipNo;
  @override
  @JsonKey(name: 'mobile_no')
  String get mobileNo;
  @override
  String? get email;
  @override
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth;
  @override
  int? get gender;
  @override
  String? get photo;
  @override
  String? get district;
  @override
  @JsonKey(name: 'ref_code')
  String? get refCode;
  @override
  @JsonKey(name: 'joining_date')
  String get joiningDate;
  @override
  @JsonKey(name: 'referral_link')
  String get referralLink;
  @override
  @JsonKey(name: 'no_of_registered_member')
  int get noOfRegisteredMember;

  /// Create a copy of MembershipCardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MembershipCardDataImplCopyWith<_$MembershipCardDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MemberPersonalDetails _$MemberPersonalDetailsFromJson(
    Map<String, dynamic> json) {
  return _MemberPersonalDetails.fromJson(json);
}

/// @nodoc
mixin _$MemberPersonalDetails {
  @JsonKey(name: 'member_id')
  int get memberId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  int? get religion => throw _privateConstructorUsedError;
  String? get caste => throw _privateConstructorUsedError;
  int? get category => throw _privateConstructorUsedError;
  int? get profession => throw _privateConstructorUsedError;
  int? get education => throw _privateConstructorUsedError;
  @JsonKey(name: 'aadhaar_no')
  String? get aadhaarNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'voter_id')
  String? get voterId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_no')
  String get mobileNo => throw _privateConstructorUsedError;

  /// Serializes this MemberPersonalDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberPersonalDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberPersonalDetailsCopyWith<MemberPersonalDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberPersonalDetailsCopyWith<$Res> {
  factory $MemberPersonalDetailsCopyWith(MemberPersonalDetails value,
          $Res Function(MemberPersonalDetails) then) =
      _$MemberPersonalDetailsCopyWithImpl<$Res, MemberPersonalDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'member_id') int memberId,
      String name,
      @JsonKey(name: 'date_of_birth') String dateOfBirth,
      int gender,
      String? email,
      int? religion,
      String? caste,
      int? category,
      int? profession,
      int? education,
      @JsonKey(name: 'aadhaar_no') String? aadhaarNo,
      @JsonKey(name: 'voter_id') String? voterId,
      @JsonKey(name: 'mobile_no') String mobileNo});
}

/// @nodoc
class _$MemberPersonalDetailsCopyWithImpl<$Res,
        $Val extends MemberPersonalDetails>
    implements $MemberPersonalDetailsCopyWith<$Res> {
  _$MemberPersonalDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberPersonalDetails
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
    Object? caste = freezed,
    Object? category = freezed,
    Object? profession = freezed,
    Object? education = freezed,
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
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$MemberPersonalDetailsImplCopyWith<$Res>
    implements $MemberPersonalDetailsCopyWith<$Res> {
  factory _$$MemberPersonalDetailsImplCopyWith(
          _$MemberPersonalDetailsImpl value,
          $Res Function(_$MemberPersonalDetailsImpl) then) =
      __$$MemberPersonalDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'member_id') int memberId,
      String name,
      @JsonKey(name: 'date_of_birth') String dateOfBirth,
      int gender,
      String? email,
      int? religion,
      String? caste,
      int? category,
      int? profession,
      int? education,
      @JsonKey(name: 'aadhaar_no') String? aadhaarNo,
      @JsonKey(name: 'voter_id') String? voterId,
      @JsonKey(name: 'mobile_no') String mobileNo});
}

/// @nodoc
class __$$MemberPersonalDetailsImplCopyWithImpl<$Res>
    extends _$MemberPersonalDetailsCopyWithImpl<$Res,
        _$MemberPersonalDetailsImpl>
    implements _$$MemberPersonalDetailsImplCopyWith<$Res> {
  __$$MemberPersonalDetailsImplCopyWithImpl(_$MemberPersonalDetailsImpl _value,
      $Res Function(_$MemberPersonalDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberPersonalDetails
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
    Object? caste = freezed,
    Object? category = freezed,
    Object? profession = freezed,
    Object? education = freezed,
    Object? aadhaarNo = freezed,
    Object? voterId = freezed,
    Object? mobileNo = null,
  }) {
    return _then(_$MemberPersonalDetailsImpl(
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
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$MemberPersonalDetailsImpl implements _MemberPersonalDetails {
  const _$MemberPersonalDetailsImpl(
      {@JsonKey(name: 'member_id') required this.memberId,
      required this.name,
      @JsonKey(name: 'date_of_birth') required this.dateOfBirth,
      required this.gender,
      this.email,
      this.religion,
      this.caste,
      this.category,
      this.profession,
      this.education,
      @JsonKey(name: 'aadhaar_no') this.aadhaarNo,
      @JsonKey(name: 'voter_id') this.voterId,
      @JsonKey(name: 'mobile_no') required this.mobileNo});

  factory _$MemberPersonalDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberPersonalDetailsImplFromJson(json);

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
  final int? religion;
  @override
  final String? caste;
  @override
  final int? category;
  @override
  final int? profession;
  @override
  final int? education;
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
    return 'MemberPersonalDetails(memberId: $memberId, name: $name, dateOfBirth: $dateOfBirth, gender: $gender, email: $email, religion: $religion, caste: $caste, category: $category, profession: $profession, education: $education, aadhaarNo: $aadhaarNo, voterId: $voterId, mobileNo: $mobileNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberPersonalDetailsImpl &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.religion, religion) ||
                other.religion == religion) &&
            (identical(other.caste, caste) || other.caste == caste) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.education, education) ||
                other.education == education) &&
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
      caste,
      category,
      profession,
      education,
      aadhaarNo,
      voterId,
      mobileNo);

  /// Create a copy of MemberPersonalDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberPersonalDetailsImplCopyWith<_$MemberPersonalDetailsImpl>
      get copyWith => __$$MemberPersonalDetailsImplCopyWithImpl<
          _$MemberPersonalDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberPersonalDetailsImplToJson(
      this,
    );
  }
}

abstract class _MemberPersonalDetails implements MemberPersonalDetails {
  const factory _MemberPersonalDetails(
          {@JsonKey(name: 'member_id') required final int memberId,
          required final String name,
          @JsonKey(name: 'date_of_birth') required final String dateOfBirth,
          required final int gender,
          final String? email,
          final int? religion,
          final String? caste,
          final int? category,
          final int? profession,
          final int? education,
          @JsonKey(name: 'aadhaar_no') final String? aadhaarNo,
          @JsonKey(name: 'voter_id') final String? voterId,
          @JsonKey(name: 'mobile_no') required final String mobileNo}) =
      _$MemberPersonalDetailsImpl;

  factory _MemberPersonalDetails.fromJson(Map<String, dynamic> json) =
      _$MemberPersonalDetailsImpl.fromJson;

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
  int? get religion;
  @override
  String? get caste;
  @override
  int? get category;
  @override
  int? get profession;
  @override
  int? get education;
  @override
  @JsonKey(name: 'aadhaar_no')
  String? get aadhaarNo;
  @override
  @JsonKey(name: 'voter_id')
  String? get voterId;
  @override
  @JsonKey(name: 'mobile_no')
  String get mobileNo;

  /// Create a copy of MemberPersonalDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberPersonalDetailsImplCopyWith<_$MemberPersonalDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MemberDetailsError _$MemberDetailsErrorFromJson(Map<String, dynamic> json) {
  return _MemberDetailsError.fromJson(json);
}

/// @nodoc
mixin _$MemberDetailsError {
  Map<String, List<String>> get errors => throw _privateConstructorUsedError;

  /// Serializes this MemberDetailsError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberDetailsError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberDetailsErrorCopyWith<MemberDetailsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberDetailsErrorCopyWith<$Res> {
  factory $MemberDetailsErrorCopyWith(
          MemberDetailsError value, $Res Function(MemberDetailsError) then) =
      _$MemberDetailsErrorCopyWithImpl<$Res, MemberDetailsError>;
  @useResult
  $Res call({Map<String, List<String>> errors});
}

/// @nodoc
class _$MemberDetailsErrorCopyWithImpl<$Res, $Val extends MemberDetailsError>
    implements $MemberDetailsErrorCopyWith<$Res> {
  _$MemberDetailsErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberDetailsError
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
abstract class _$$MemberDetailsErrorImplCopyWith<$Res>
    implements $MemberDetailsErrorCopyWith<$Res> {
  factory _$$MemberDetailsErrorImplCopyWith(_$MemberDetailsErrorImpl value,
          $Res Function(_$MemberDetailsErrorImpl) then) =
      __$$MemberDetailsErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, List<String>> errors});
}

/// @nodoc
class __$$MemberDetailsErrorImplCopyWithImpl<$Res>
    extends _$MemberDetailsErrorCopyWithImpl<$Res, _$MemberDetailsErrorImpl>
    implements _$$MemberDetailsErrorImplCopyWith<$Res> {
  __$$MemberDetailsErrorImplCopyWithImpl(_$MemberDetailsErrorImpl _value,
      $Res Function(_$MemberDetailsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberDetailsError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = null,
  }) {
    return _then(_$MemberDetailsErrorImpl(
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberDetailsErrorImpl implements _MemberDetailsError {
  const _$MemberDetailsErrorImpl(
      {required final Map<String, List<String>> errors})
      : _errors = errors;

  factory _$MemberDetailsErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberDetailsErrorImplFromJson(json);

  final Map<String, List<String>> _errors;
  @override
  Map<String, List<String>> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @override
  String toString() {
    return 'MemberDetailsError(errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberDetailsErrorImpl &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_errors));

  /// Create a copy of MemberDetailsError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberDetailsErrorImplCopyWith<_$MemberDetailsErrorImpl> get copyWith =>
      __$$MemberDetailsErrorImplCopyWithImpl<_$MemberDetailsErrorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberDetailsErrorImplToJson(
      this,
    );
  }
}

abstract class _MemberDetailsError implements MemberDetailsError {
  const factory _MemberDetailsError(
          {required final Map<String, List<String>> errors}) =
      _$MemberDetailsErrorImpl;

  factory _MemberDetailsError.fromJson(Map<String, dynamic> json) =
      _$MemberDetailsErrorImpl.fromJson;

  @override
  Map<String, List<String>> get errors;

  /// Create a copy of MemberDetailsError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberDetailsErrorImplCopyWith<_$MemberDetailsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
