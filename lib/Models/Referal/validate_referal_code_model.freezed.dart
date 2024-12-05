// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validate_referal_code_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ValidateMemberModel _$ValidateMemberModelFromJson(Map<String, dynamic> json) {
  return _ValidateMemberModel.fromJson(json);
}

/// @nodoc
mixin _$ValidateMemberModel {
  int get status =>
      throw _privateConstructorUsedError; // Status of the response
  String get message =>
      throw _privateConstructorUsedError; // Message from the response
  ValidateMemberData? get data =>
      throw _privateConstructorUsedError; // Optional data field for successful responses
  ValidateMemberError? get error =>
      throw _privateConstructorUsedError; // Optional error field for errors
  int get code => throw _privateConstructorUsedError;

  /// Serializes this ValidateMemberModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValidateMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidateMemberModelCopyWith<ValidateMemberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateMemberModelCopyWith<$Res> {
  factory $ValidateMemberModelCopyWith(
          ValidateMemberModel value, $Res Function(ValidateMemberModel) then) =
      _$ValidateMemberModelCopyWithImpl<$Res, ValidateMemberModel>;
  @useResult
  $Res call(
      {int status,
      String message,
      ValidateMemberData? data,
      ValidateMemberError? error,
      int code});

  $ValidateMemberDataCopyWith<$Res>? get data;
  $ValidateMemberErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$ValidateMemberModelCopyWithImpl<$Res, $Val extends ValidateMemberModel>
    implements $ValidateMemberModelCopyWith<$Res> {
  _$ValidateMemberModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidateMemberModel
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
              as ValidateMemberData?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ValidateMemberError?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of ValidateMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValidateMemberDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ValidateMemberDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  /// Create a copy of ValidateMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValidateMemberErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $ValidateMemberErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ValidateMemberModelImplCopyWith<$Res>
    implements $ValidateMemberModelCopyWith<$Res> {
  factory _$$ValidateMemberModelImplCopyWith(_$ValidateMemberModelImpl value,
          $Res Function(_$ValidateMemberModelImpl) then) =
      __$$ValidateMemberModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String message,
      ValidateMemberData? data,
      ValidateMemberError? error,
      int code});

  @override
  $ValidateMemberDataCopyWith<$Res>? get data;
  @override
  $ValidateMemberErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$ValidateMemberModelImplCopyWithImpl<$Res>
    extends _$ValidateMemberModelCopyWithImpl<$Res, _$ValidateMemberModelImpl>
    implements _$$ValidateMemberModelImplCopyWith<$Res> {
  __$$ValidateMemberModelImplCopyWithImpl(_$ValidateMemberModelImpl _value,
      $Res Function(_$ValidateMemberModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValidateMemberModel
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
    return _then(_$ValidateMemberModelImpl(
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
              as ValidateMemberData?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ValidateMemberError?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidateMemberModelImpl implements _ValidateMemberModel {
  const _$ValidateMemberModelImpl(
      {required this.status,
      required this.message,
      this.data,
      this.error,
      required this.code});

  factory _$ValidateMemberModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidateMemberModelImplFromJson(json);

  @override
  final int status;
// Status of the response
  @override
  final String message;
// Message from the response
  @override
  final ValidateMemberData? data;
// Optional data field for successful responses
  @override
  final ValidateMemberError? error;
// Optional error field for errors
  @override
  final int code;

  @override
  String toString() {
    return 'ValidateMemberModel(status: $status, message: $message, data: $data, error: $error, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateMemberModelImpl &&
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

  /// Create a copy of ValidateMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateMemberModelImplCopyWith<_$ValidateMemberModelImpl> get copyWith =>
      __$$ValidateMemberModelImplCopyWithImpl<_$ValidateMemberModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidateMemberModelImplToJson(
      this,
    );
  }
}

abstract class _ValidateMemberModel implements ValidateMemberModel {
  const factory _ValidateMemberModel(
      {required final int status,
      required final String message,
      final ValidateMemberData? data,
      final ValidateMemberError? error,
      required final int code}) = _$ValidateMemberModelImpl;

  factory _ValidateMemberModel.fromJson(Map<String, dynamic> json) =
      _$ValidateMemberModelImpl.fromJson;

  @override
  int get status; // Status of the response
  @override
  String get message; // Message from the response
  @override
  ValidateMemberData? get data; // Optional data field for successful responses
  @override
  ValidateMemberError? get error; // Optional error field for errors
  @override
  int get code;

  /// Create a copy of ValidateMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidateMemberModelImplCopyWith<_$ValidateMemberModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ValidateMemberData _$ValidateMemberDataFromJson(Map<String, dynamic> json) {
  return _ValidateMemberData.fromJson(json);
}

/// @nodoc
mixin _$ValidateMemberData {
  @JsonKey(name: 'ref_id')
  int? get refId => throw _privateConstructorUsedError;

  /// Serializes this ValidateMemberData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValidateMemberData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidateMemberDataCopyWith<ValidateMemberData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateMemberDataCopyWith<$Res> {
  factory $ValidateMemberDataCopyWith(
          ValidateMemberData value, $Res Function(ValidateMemberData) then) =
      _$ValidateMemberDataCopyWithImpl<$Res, ValidateMemberData>;
  @useResult
  $Res call({@JsonKey(name: 'ref_id') int? refId});
}

/// @nodoc
class _$ValidateMemberDataCopyWithImpl<$Res, $Val extends ValidateMemberData>
    implements $ValidateMemberDataCopyWith<$Res> {
  _$ValidateMemberDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidateMemberData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refId = freezed,
  }) {
    return _then(_value.copyWith(
      refId: freezed == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidateMemberDataImplCopyWith<$Res>
    implements $ValidateMemberDataCopyWith<$Res> {
  factory _$$ValidateMemberDataImplCopyWith(_$ValidateMemberDataImpl value,
          $Res Function(_$ValidateMemberDataImpl) then) =
      __$$ValidateMemberDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'ref_id') int? refId});
}

/// @nodoc
class __$$ValidateMemberDataImplCopyWithImpl<$Res>
    extends _$ValidateMemberDataCopyWithImpl<$Res, _$ValidateMemberDataImpl>
    implements _$$ValidateMemberDataImplCopyWith<$Res> {
  __$$ValidateMemberDataImplCopyWithImpl(_$ValidateMemberDataImpl _value,
      $Res Function(_$ValidateMemberDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValidateMemberData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refId = freezed,
  }) {
    return _then(_$ValidateMemberDataImpl(
      refId: freezed == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidateMemberDataImpl implements _ValidateMemberData {
  const _$ValidateMemberDataImpl({@JsonKey(name: 'ref_id') this.refId});

  factory _$ValidateMemberDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidateMemberDataImplFromJson(json);

  @override
  @JsonKey(name: 'ref_id')
  final int? refId;

  @override
  String toString() {
    return 'ValidateMemberData(refId: $refId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateMemberDataImpl &&
            (identical(other.refId, refId) || other.refId == refId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refId);

  /// Create a copy of ValidateMemberData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateMemberDataImplCopyWith<_$ValidateMemberDataImpl> get copyWith =>
      __$$ValidateMemberDataImplCopyWithImpl<_$ValidateMemberDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidateMemberDataImplToJson(
      this,
    );
  }
}

abstract class _ValidateMemberData implements ValidateMemberData {
  const factory _ValidateMemberData(
      {@JsonKey(name: 'ref_id') final int? refId}) = _$ValidateMemberDataImpl;

  factory _ValidateMemberData.fromJson(Map<String, dynamic> json) =
      _$ValidateMemberDataImpl.fromJson;

  @override
  @JsonKey(name: 'ref_id')
  int? get refId;

  /// Create a copy of ValidateMemberData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidateMemberDataImplCopyWith<_$ValidateMemberDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ValidateMemberError _$ValidateMemberErrorFromJson(Map<String, dynamic> json) {
  return _ValidateMemberError.fromJson(json);
}

/// @nodoc
mixin _$ValidateMemberError {
  Map<String, List<String>> get errors => throw _privateConstructorUsedError;

  /// Serializes this ValidateMemberError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValidateMemberError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidateMemberErrorCopyWith<ValidateMemberError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateMemberErrorCopyWith<$Res> {
  factory $ValidateMemberErrorCopyWith(
          ValidateMemberError value, $Res Function(ValidateMemberError) then) =
      _$ValidateMemberErrorCopyWithImpl<$Res, ValidateMemberError>;
  @useResult
  $Res call({Map<String, List<String>> errors});
}

/// @nodoc
class _$ValidateMemberErrorCopyWithImpl<$Res, $Val extends ValidateMemberError>
    implements $ValidateMemberErrorCopyWith<$Res> {
  _$ValidateMemberErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidateMemberError
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
abstract class _$$ValidateMemberErrorImplCopyWith<$Res>
    implements $ValidateMemberErrorCopyWith<$Res> {
  factory _$$ValidateMemberErrorImplCopyWith(_$ValidateMemberErrorImpl value,
          $Res Function(_$ValidateMemberErrorImpl) then) =
      __$$ValidateMemberErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, List<String>> errors});
}

/// @nodoc
class __$$ValidateMemberErrorImplCopyWithImpl<$Res>
    extends _$ValidateMemberErrorCopyWithImpl<$Res, _$ValidateMemberErrorImpl>
    implements _$$ValidateMemberErrorImplCopyWith<$Res> {
  __$$ValidateMemberErrorImplCopyWithImpl(_$ValidateMemberErrorImpl _value,
      $Res Function(_$ValidateMemberErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValidateMemberError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = null,
  }) {
    return _then(_$ValidateMemberErrorImpl(
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidateMemberErrorImpl implements _ValidateMemberError {
  const _$ValidateMemberErrorImpl(
      {required final Map<String, List<String>> errors})
      : _errors = errors;

  factory _$ValidateMemberErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidateMemberErrorImplFromJson(json);

  final Map<String, List<String>> _errors;
  @override
  Map<String, List<String>> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @override
  String toString() {
    return 'ValidateMemberError(errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateMemberErrorImpl &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_errors));

  /// Create a copy of ValidateMemberError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateMemberErrorImplCopyWith<_$ValidateMemberErrorImpl> get copyWith =>
      __$$ValidateMemberErrorImplCopyWithImpl<_$ValidateMemberErrorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidateMemberErrorImplToJson(
      this,
    );
  }
}

abstract class _ValidateMemberError implements ValidateMemberError {
  const factory _ValidateMemberError(
          {required final Map<String, List<String>> errors}) =
      _$ValidateMemberErrorImpl;

  factory _ValidateMemberError.fromJson(Map<String, dynamic> json) =
      _$ValidateMemberErrorImpl.fromJson;

  @override
  Map<String, List<String>> get errors;

  /// Create a copy of ValidateMemberError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidateMemberErrorImplCopyWith<_$ValidateMemberErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
