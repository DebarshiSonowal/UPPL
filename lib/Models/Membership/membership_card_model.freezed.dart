// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'membership_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MembershipCardModel {
  int get status => throw _privateConstructorUsedError;
  String get message =>
      throw _privateConstructorUsedError; // Make data nullable
  int get code => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int status, String message,
            List<MembershipCardInfoData>? data, int code)
        success,
    required TResult Function(
            int status, String message, Map<String, dynamic>? errors, int code)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int status, String message,
            List<MembershipCardInfoData>? data, int code)?
        success,
    TResult? Function(
            int status, String message, Map<String, dynamic>? errors, int code)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int status, String message,
            List<MembershipCardInfoData>? data, int code)?
        success,
    TResult Function(
            int status, String message, Map<String, dynamic>? errors, int code)?
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

  /// Create a copy of MembershipCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MembershipCardModelCopyWith<MembershipCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembershipCardModelCopyWith<$Res> {
  factory $MembershipCardModelCopyWith(
          MembershipCardModel value, $Res Function(MembershipCardModel) then) =
      _$MembershipCardModelCopyWithImpl<$Res, MembershipCardModel>;
  @useResult
  $Res call({int status, String message, int code});
}

/// @nodoc
class _$MembershipCardModelCopyWithImpl<$Res, $Val extends MembershipCardModel>
    implements $MembershipCardModelCopyWith<$Res> {
  _$MembershipCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MembershipCardModel
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
    implements $MembershipCardModelCopyWith<$Res> {
  factory _$$SuccessResponseImplCopyWith(_$SuccessResponseImpl value,
          $Res Function(_$SuccessResponseImpl) then) =
      __$$SuccessResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String message,
      List<MembershipCardInfoData>? data,
      int code});
}

/// @nodoc
class __$$SuccessResponseImplCopyWithImpl<$Res>
    extends _$MembershipCardModelCopyWithImpl<$Res, _$SuccessResponseImpl>
    implements _$$SuccessResponseImplCopyWith<$Res> {
  __$$SuccessResponseImplCopyWithImpl(
      _$SuccessResponseImpl _value, $Res Function(_$SuccessResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MembershipCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
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
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MembershipCardInfoData>?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SuccessResponseImpl implements SuccessResponse {
  const _$SuccessResponseImpl(
      {required this.status,
      required this.message,
      required final List<MembershipCardInfoData>? data,
      required this.code})
      : _data = data;

  @override
  final int status;
  @override
  final String message;
  final List<MembershipCardInfoData>? _data;
  @override
  List<MembershipCardInfoData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Make data nullable
  @override
  final int code;

  @override
  String toString() {
    return 'MembershipCardModel.success(status: $status, message: $message, data: $data, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_data), code);

  /// Create a copy of MembershipCardModel
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
    required TResult Function(int status, String message,
            List<MembershipCardInfoData>? data, int code)
        success,
    required TResult Function(
            int status, String message, Map<String, dynamic>? errors, int code)
        error,
  }) {
    return success(status, message, data, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int status, String message,
            List<MembershipCardInfoData>? data, int code)?
        success,
    TResult? Function(
            int status, String message, Map<String, dynamic>? errors, int code)?
        error,
  }) {
    return success?.call(status, message, data, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int status, String message,
            List<MembershipCardInfoData>? data, int code)?
        success,
    TResult Function(
            int status, String message, Map<String, dynamic>? errors, int code)?
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

abstract class SuccessResponse implements MembershipCardModel {
  const factory SuccessResponse(
      {required final int status,
      required final String message,
      required final List<MembershipCardInfoData>? data,
      required final int code}) = _$SuccessResponseImpl;

  @override
  int get status;
  @override
  String get message;
  List<MembershipCardInfoData>? get data; // Make data nullable
  @override
  int get code;

  /// Create a copy of MembershipCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessResponseImplCopyWith<_$SuccessResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorResponseImplCopyWith<$Res>
    implements $MembershipCardModelCopyWith<$Res> {
  factory _$$ErrorResponseImplCopyWith(
          _$ErrorResponseImpl value, $Res Function(_$ErrorResponseImpl) then) =
      __$$ErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status, String message, Map<String, dynamic>? errors, int code});
}

/// @nodoc
class __$$ErrorResponseImplCopyWithImpl<$Res>
    extends _$MembershipCardModelCopyWithImpl<$Res, _$ErrorResponseImpl>
    implements _$$ErrorResponseImplCopyWith<$Res> {
  __$$ErrorResponseImplCopyWithImpl(
      _$ErrorResponseImpl _value, $Res Function(_$ErrorResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MembershipCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? errors = freezed,
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
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ErrorResponseImpl implements ErrorResponse {
  const _$ErrorResponseImpl(
      {required this.status,
      required this.message,
      required final Map<String, dynamic>? errors,
      required this.code})
      : _errors = errors;

  @override
  final int status;
  @override
  final String message;
  final Map<String, dynamic>? _errors;
  @override
  Map<String, dynamic>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

// Adjust type to match API structure
  @override
  final int code;

  @override
  String toString() {
    return 'MembershipCardModel.error(status: $status, message: $message, errors: $errors, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_errors), code);

  /// Create a copy of MembershipCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorResponseImplCopyWith<_$ErrorResponseImpl> get copyWith =>
      __$$ErrorResponseImplCopyWithImpl<_$ErrorResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int status, String message,
            List<MembershipCardInfoData>? data, int code)
        success,
    required TResult Function(
            int status, String message, Map<String, dynamic>? errors, int code)
        error,
  }) {
    return error(status, message, errors, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int status, String message,
            List<MembershipCardInfoData>? data, int code)?
        success,
    TResult? Function(
            int status, String message, Map<String, dynamic>? errors, int code)?
        error,
  }) {
    return error?.call(status, message, errors, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int status, String message,
            List<MembershipCardInfoData>? data, int code)?
        success,
    TResult Function(
            int status, String message, Map<String, dynamic>? errors, int code)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(status, message, errors, code);
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

abstract class ErrorResponse implements MembershipCardModel {
  const factory ErrorResponse(
      {required final int status,
      required final String message,
      required final Map<String, dynamic>? errors,
      required final int code}) = _$ErrorResponseImpl;

  @override
  int get status;
  @override
  String get message;
  Map<String, dynamic>? get errors; // Adjust type to match API structure
  @override
  int get code;

  /// Create a copy of MembershipCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorResponseImplCopyWith<_$ErrorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MembershipCardInfoData _$MembershipCardInfoDataFromJson(
    Map<String, dynamic> json) {
  return _MembershipCardInfoData.fromJson(json);
}

/// @nodoc
mixin _$MembershipCardInfoData {
  String get name => throw _privateConstructorUsedError;
  String? get mobileNo =>
      throw _privateConstructorUsedError; // Mark as nullable if it might be null in JSON
  String? get email =>
      throw _privateConstructorUsedError; // Mark as nullable if it might be null in JSON
  String? get dateOfBirth =>
      throw _privateConstructorUsedError; // Mark as nullable if it might be null in JSON
  int? get gender =>
      throw _privateConstructorUsedError; // Make nullable if it might be null in JSON
  String? get file => throw _privateConstructorUsedError;

  /// Serializes this MembershipCardInfoData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MembershipCardInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MembershipCardInfoDataCopyWith<MembershipCardInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembershipCardInfoDataCopyWith<$Res> {
  factory $MembershipCardInfoDataCopyWith(MembershipCardInfoData value,
          $Res Function(MembershipCardInfoData) then) =
      _$MembershipCardInfoDataCopyWithImpl<$Res, MembershipCardInfoData>;
  @useResult
  $Res call(
      {String name,
      String? mobileNo,
      String? email,
      String? dateOfBirth,
      int? gender,
      String? file});
}

/// @nodoc
class _$MembershipCardInfoDataCopyWithImpl<$Res,
        $Val extends MembershipCardInfoData>
    implements $MembershipCardInfoDataCopyWith<$Res> {
  _$MembershipCardInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MembershipCardInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? mobileNo = freezed,
    Object? email = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
              as int?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MembershipCardInfoDataImplCopyWith<$Res>
    implements $MembershipCardInfoDataCopyWith<$Res> {
  factory _$$MembershipCardInfoDataImplCopyWith(
          _$MembershipCardInfoDataImpl value,
          $Res Function(_$MembershipCardInfoDataImpl) then) =
      __$$MembershipCardInfoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? mobileNo,
      String? email,
      String? dateOfBirth,
      int? gender,
      String? file});
}

/// @nodoc
class __$$MembershipCardInfoDataImplCopyWithImpl<$Res>
    extends _$MembershipCardInfoDataCopyWithImpl<$Res,
        _$MembershipCardInfoDataImpl>
    implements _$$MembershipCardInfoDataImplCopyWith<$Res> {
  __$$MembershipCardInfoDataImplCopyWithImpl(
      _$MembershipCardInfoDataImpl _value,
      $Res Function(_$MembershipCardInfoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MembershipCardInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? mobileNo = freezed,
    Object? email = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? file = freezed,
  }) {
    return _then(_$MembershipCardInfoDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
              as int?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MembershipCardInfoDataImpl implements _MembershipCardInfoData {
  const _$MembershipCardInfoDataImpl(
      {required this.name,
      this.mobileNo,
      this.email,
      this.dateOfBirth,
      this.gender,
      this.file});

  factory _$MembershipCardInfoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MembershipCardInfoDataImplFromJson(json);

  @override
  final String name;
  @override
  final String? mobileNo;
// Mark as nullable if it might be null in JSON
  @override
  final String? email;
// Mark as nullable if it might be null in JSON
  @override
  final String? dateOfBirth;
// Mark as nullable if it might be null in JSON
  @override
  final int? gender;
// Make nullable if it might be null in JSON
  @override
  final String? file;

  @override
  String toString() {
    return 'MembershipCardInfoData(name: $name, mobileNo: $mobileNo, email: $email, dateOfBirth: $dateOfBirth, gender: $gender, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MembershipCardInfoDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, mobileNo, email, dateOfBirth, gender, file);

  /// Create a copy of MembershipCardInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MembershipCardInfoDataImplCopyWith<_$MembershipCardInfoDataImpl>
      get copyWith => __$$MembershipCardInfoDataImplCopyWithImpl<
          _$MembershipCardInfoDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MembershipCardInfoDataImplToJson(
      this,
    );
  }
}

abstract class _MembershipCardInfoData implements MembershipCardInfoData {
  const factory _MembershipCardInfoData(
      {required final String name,
      final String? mobileNo,
      final String? email,
      final String? dateOfBirth,
      final int? gender,
      final String? file}) = _$MembershipCardInfoDataImpl;

  factory _MembershipCardInfoData.fromJson(Map<String, dynamic> json) =
      _$MembershipCardInfoDataImpl.fromJson;

  @override
  String get name;
  @override
  String? get mobileNo; // Mark as nullable if it might be null in JSON
  @override
  String? get email; // Mark as nullable if it might be null in JSON
  @override
  String? get dateOfBirth; // Mark as nullable if it might be null in JSON
  @override
  int? get gender; // Make nullable if it might be null in JSON
  @override
  String? get file;

  /// Create a copy of MembershipCardInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MembershipCardInfoDataImplCopyWith<_$MembershipCardInfoDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
