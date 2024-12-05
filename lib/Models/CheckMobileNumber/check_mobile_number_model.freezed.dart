// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_mobile_number_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OtpResponseModel _$OtpResponseModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _OtpResponseModel.fromJson(json);
    case 'withError':
      return _OtpResponseModelWithError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'OtpResponseModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$OtpResponseModel {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int status, String message, OtpData? data, OtpError? error,
            int code)
        $default, {
    required TResult Function(String message) withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int status, String message, OtpData? data,
            OtpError? error, int code)?
        $default, {
    TResult? Function(String message)? withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int status, String message, OtpData? data, OtpError? error,
            int code)?
        $default, {
    TResult Function(String message)? withError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OtpResponseModel value) $default, {
    required TResult Function(_OtpResponseModelWithError value) withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_OtpResponseModel value)? $default, {
    TResult? Function(_OtpResponseModelWithError value)? withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OtpResponseModel value)? $default, {
    TResult Function(_OtpResponseModelWithError value)? withError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this OtpResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OtpResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpResponseModelCopyWith<OtpResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpResponseModelCopyWith<$Res> {
  factory $OtpResponseModelCopyWith(
          OtpResponseModel value, $Res Function(OtpResponseModel) then) =
      _$OtpResponseModelCopyWithImpl<$Res, OtpResponseModel>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$OtpResponseModelCopyWithImpl<$Res, $Val extends OtpResponseModel>
    implements $OtpResponseModelCopyWith<$Res> {
  _$OtpResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpResponseModel
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
abstract class _$$OtpResponseModelImplCopyWith<$Res>
    implements $OtpResponseModelCopyWith<$Res> {
  factory _$$OtpResponseModelImplCopyWith(_$OtpResponseModelImpl value,
          $Res Function(_$OtpResponseModelImpl) then) =
      __$$OtpResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status, String message, OtpData? data, OtpError? error, int code});

  $OtpDataCopyWith<$Res>? get data;
  $OtpErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$OtpResponseModelImplCopyWithImpl<$Res>
    extends _$OtpResponseModelCopyWithImpl<$Res, _$OtpResponseModelImpl>
    implements _$$OtpResponseModelImplCopyWith<$Res> {
  __$$OtpResponseModelImplCopyWithImpl(_$OtpResponseModelImpl _value,
      $Res Function(_$OtpResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpResponseModel
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
    return _then(_$OtpResponseModelImpl(
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
              as OtpData?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as OtpError?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of OtpResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OtpDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $OtpDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }

  /// Create a copy of OtpResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OtpErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $OtpErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$OtpResponseModelImpl implements _OtpResponseModel {
  const _$OtpResponseModelImpl(
      {required this.status,
      required this.message,
      this.data,
      this.error,
      required this.code,
      final String? $type})
      : $type = $type ?? 'default';

  factory _$OtpResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpResponseModelImplFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final OtpData? data;
  @override
  final OtpError? error;
  @override
  final int code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OtpResponseModel(status: $status, message: $message, data: $data, error: $error, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpResponseModelImpl &&
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

  /// Create a copy of OtpResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpResponseModelImplCopyWith<_$OtpResponseModelImpl> get copyWith =>
      __$$OtpResponseModelImplCopyWithImpl<_$OtpResponseModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int status, String message, OtpData? data, OtpError? error,
            int code)
        $default, {
    required TResult Function(String message) withError,
  }) {
    return $default(status, message, data, error, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int status, String message, OtpData? data,
            OtpError? error, int code)?
        $default, {
    TResult? Function(String message)? withError,
  }) {
    return $default?.call(status, message, data, error, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int status, String message, OtpData? data, OtpError? error,
            int code)?
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
    TResult Function(_OtpResponseModel value) $default, {
    required TResult Function(_OtpResponseModelWithError value) withError,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_OtpResponseModel value)? $default, {
    TResult? Function(_OtpResponseModelWithError value)? withError,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OtpResponseModel value)? $default, {
    TResult Function(_OtpResponseModelWithError value)? withError,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpResponseModelImplToJson(
      this,
    );
  }
}

abstract class _OtpResponseModel implements OtpResponseModel {
  const factory _OtpResponseModel(
      {required final int status,
      required final String message,
      final OtpData? data,
      final OtpError? error,
      required final int code}) = _$OtpResponseModelImpl;

  factory _OtpResponseModel.fromJson(Map<String, dynamic> json) =
      _$OtpResponseModelImpl.fromJson;

  int get status;
  @override
  String get message;
  OtpData? get data;
  OtpError? get error;
  int get code;

  /// Create a copy of OtpResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpResponseModelImplCopyWith<_$OtpResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpResponseModelWithErrorImplCopyWith<$Res>
    implements $OtpResponseModelCopyWith<$Res> {
  factory _$$OtpResponseModelWithErrorImplCopyWith(
          _$OtpResponseModelWithErrorImpl value,
          $Res Function(_$OtpResponseModelWithErrorImpl) then) =
      __$$OtpResponseModelWithErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OtpResponseModelWithErrorImplCopyWithImpl<$Res>
    extends _$OtpResponseModelCopyWithImpl<$Res,
        _$OtpResponseModelWithErrorImpl>
    implements _$$OtpResponseModelWithErrorImplCopyWith<$Res> {
  __$$OtpResponseModelWithErrorImplCopyWithImpl(
      _$OtpResponseModelWithErrorImpl _value,
      $Res Function(_$OtpResponseModelWithErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$OtpResponseModelWithErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtpResponseModelWithErrorImpl implements _OtpResponseModelWithError {
  const _$OtpResponseModelWithErrorImpl(this.message, {final String? $type})
      : $type = $type ?? 'withError';

  factory _$OtpResponseModelWithErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpResponseModelWithErrorImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OtpResponseModel.withError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpResponseModelWithErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of OtpResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpResponseModelWithErrorImplCopyWith<_$OtpResponseModelWithErrorImpl>
      get copyWith => __$$OtpResponseModelWithErrorImplCopyWithImpl<
          _$OtpResponseModelWithErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int status, String message, OtpData? data, OtpError? error,
            int code)
        $default, {
    required TResult Function(String message) withError,
  }) {
    return withError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int status, String message, OtpData? data,
            OtpError? error, int code)?
        $default, {
    TResult? Function(String message)? withError,
  }) {
    return withError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int status, String message, OtpData? data, OtpError? error,
            int code)?
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
    TResult Function(_OtpResponseModel value) $default, {
    required TResult Function(_OtpResponseModelWithError value) withError,
  }) {
    return withError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_OtpResponseModel value)? $default, {
    TResult? Function(_OtpResponseModelWithError value)? withError,
  }) {
    return withError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OtpResponseModel value)? $default, {
    TResult Function(_OtpResponseModelWithError value)? withError,
    required TResult orElse(),
  }) {
    if (withError != null) {
      return withError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpResponseModelWithErrorImplToJson(
      this,
    );
  }
}

abstract class _OtpResponseModelWithError implements OtpResponseModel {
  const factory _OtpResponseModelWithError(final String message) =
      _$OtpResponseModelWithErrorImpl;

  factory _OtpResponseModelWithError.fromJson(Map<String, dynamic> json) =
      _$OtpResponseModelWithErrorImpl.fromJson;

  @override
  String get message;

  /// Create a copy of OtpResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpResponseModelWithErrorImplCopyWith<_$OtpResponseModelWithErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OtpData _$OtpDataFromJson(Map<String, dynamic> json) {
  return _OtpData.fromJson(json);
}

/// @nodoc
mixin _$OtpData {
  String? get otp => throw _privateConstructorUsedError;

  /// Serializes this OtpData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OtpData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpDataCopyWith<OtpData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpDataCopyWith<$Res> {
  factory $OtpDataCopyWith(OtpData value, $Res Function(OtpData) then) =
      _$OtpDataCopyWithImpl<$Res, OtpData>;
  @useResult
  $Res call({String? otp});
}

/// @nodoc
class _$OtpDataCopyWithImpl<$Res, $Val extends OtpData>
    implements $OtpDataCopyWith<$Res> {
  _$OtpDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = freezed,
  }) {
    return _then(_value.copyWith(
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpDataImplCopyWith<$Res> implements $OtpDataCopyWith<$Res> {
  factory _$$OtpDataImplCopyWith(
          _$OtpDataImpl value, $Res Function(_$OtpDataImpl) then) =
      __$$OtpDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? otp});
}

/// @nodoc
class __$$OtpDataImplCopyWithImpl<$Res>
    extends _$OtpDataCopyWithImpl<$Res, _$OtpDataImpl>
    implements _$$OtpDataImplCopyWith<$Res> {
  __$$OtpDataImplCopyWithImpl(
      _$OtpDataImpl _value, $Res Function(_$OtpDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = freezed,
  }) {
    return _then(_$OtpDataImpl(
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtpDataImpl implements _OtpData {
  const _$OtpDataImpl({this.otp});

  factory _$OtpDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpDataImplFromJson(json);

  @override
  final String? otp;

  @override
  String toString() {
    return 'OtpData(otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpDataImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, otp);

  /// Create a copy of OtpData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpDataImplCopyWith<_$OtpDataImpl> get copyWith =>
      __$$OtpDataImplCopyWithImpl<_$OtpDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpDataImplToJson(
      this,
    );
  }
}

abstract class _OtpData implements OtpData {
  const factory _OtpData({final String? otp}) = _$OtpDataImpl;

  factory _OtpData.fromJson(Map<String, dynamic> json) = _$OtpDataImpl.fromJson;

  @override
  String? get otp;

  /// Create a copy of OtpData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpDataImplCopyWith<_$OtpDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OtpError _$OtpErrorFromJson(Map<String, dynamic> json) {
  return _OtpError.fromJson(json);
}

/// @nodoc
mixin _$OtpError {
  Map<String, List<String>> get errors => throw _privateConstructorUsedError;

  /// Serializes this OtpError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OtpError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpErrorCopyWith<OtpError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpErrorCopyWith<$Res> {
  factory $OtpErrorCopyWith(OtpError value, $Res Function(OtpError) then) =
      _$OtpErrorCopyWithImpl<$Res, OtpError>;
  @useResult
  $Res call({Map<String, List<String>> errors});
}

/// @nodoc
class _$OtpErrorCopyWithImpl<$Res, $Val extends OtpError>
    implements $OtpErrorCopyWith<$Res> {
  _$OtpErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpError
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
abstract class _$$OtpErrorImplCopyWith<$Res>
    implements $OtpErrorCopyWith<$Res> {
  factory _$$OtpErrorImplCopyWith(
          _$OtpErrorImpl value, $Res Function(_$OtpErrorImpl) then) =
      __$$OtpErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, List<String>> errors});
}

/// @nodoc
class __$$OtpErrorImplCopyWithImpl<$Res>
    extends _$OtpErrorCopyWithImpl<$Res, _$OtpErrorImpl>
    implements _$$OtpErrorImplCopyWith<$Res> {
  __$$OtpErrorImplCopyWithImpl(
      _$OtpErrorImpl _value, $Res Function(_$OtpErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = null,
  }) {
    return _then(_$OtpErrorImpl(
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtpErrorImpl implements _OtpError {
  const _$OtpErrorImpl({required final Map<String, List<String>> errors})
      : _errors = errors;

  factory _$OtpErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpErrorImplFromJson(json);

  final Map<String, List<String>> _errors;
  @override
  Map<String, List<String>> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @override
  String toString() {
    return 'OtpError(errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpErrorImpl &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_errors));

  /// Create a copy of OtpError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpErrorImplCopyWith<_$OtpErrorImpl> get copyWith =>
      __$$OtpErrorImplCopyWithImpl<_$OtpErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpErrorImplToJson(
      this,
    );
  }
}

abstract class _OtpError implements OtpError {
  const factory _OtpError({required final Map<String, List<String>> errors}) =
      _$OtpErrorImpl;

  factory _OtpError.fromJson(Map<String, dynamic> json) =
      _$OtpErrorImpl.fromJson;

  @override
  Map<String, List<String>> get errors;

  /// Create a copy of OtpError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpErrorImplCopyWith<_$OtpErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
