// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyOtpModel _$VerifyOtpModelFromJson(Map<String, dynamic> json) {
  return _VerifyOtpModel.fromJson(json);
}

/// @nodoc
mixin _$VerifyOtpModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  VerifyOtpData get data => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  /// Serializes this VerifyOtpModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifyOtpModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyOtpModelCopyWith<VerifyOtpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpModelCopyWith<$Res> {
  factory $VerifyOtpModelCopyWith(
          VerifyOtpModel value, $Res Function(VerifyOtpModel) then) =
      _$VerifyOtpModelCopyWithImpl<$Res, VerifyOtpModel>;
  @useResult
  $Res call({int status, String message, VerifyOtpData data, int code});

  $VerifyOtpDataCopyWith<$Res> get data;
}

/// @nodoc
class _$VerifyOtpModelCopyWithImpl<$Res, $Val extends VerifyOtpModel>
    implements $VerifyOtpModelCopyWith<$Res> {
  _$VerifyOtpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyOtpModel
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
              as VerifyOtpData,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of VerifyOtpModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerifyOtpDataCopyWith<$Res> get data {
    return $VerifyOtpDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerifyOtpModelImplCopyWith<$Res>
    implements $VerifyOtpModelCopyWith<$Res> {
  factory _$$VerifyOtpModelImplCopyWith(_$VerifyOtpModelImpl value,
          $Res Function(_$VerifyOtpModelImpl) then) =
      __$$VerifyOtpModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, VerifyOtpData data, int code});

  @override
  $VerifyOtpDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$VerifyOtpModelImplCopyWithImpl<$Res>
    extends _$VerifyOtpModelCopyWithImpl<$Res, _$VerifyOtpModelImpl>
    implements _$$VerifyOtpModelImplCopyWith<$Res> {
  __$$VerifyOtpModelImplCopyWithImpl(
      _$VerifyOtpModelImpl _value, $Res Function(_$VerifyOtpModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifyOtpModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
    Object? code = null,
  }) {
    return _then(_$VerifyOtpModelImpl(
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
              as VerifyOtpData,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyOtpModelImpl implements _VerifyOtpModel {
  const _$VerifyOtpModelImpl(
      {required this.status,
      required this.message,
      required this.data,
      required this.code});

  factory _$VerifyOtpModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyOtpModelImplFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final VerifyOtpData data;
  @override
  final int code;

  @override
  String toString() {
    return 'VerifyOtpModel(status: $status, message: $message, data: $data, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data, code);

  /// Create a copy of VerifyOtpModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpModelImplCopyWith<_$VerifyOtpModelImpl> get copyWith =>
      __$$VerifyOtpModelImplCopyWithImpl<_$VerifyOtpModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyOtpModelImplToJson(
      this,
    );
  }
}

abstract class _VerifyOtpModel implements VerifyOtpModel {
  const factory _VerifyOtpModel(
      {required final int status,
      required final String message,
      required final VerifyOtpData data,
      required final int code}) = _$VerifyOtpModelImpl;

  factory _VerifyOtpModel.fromJson(Map<String, dynamic> json) =
      _$VerifyOtpModelImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  VerifyOtpData get data;
  @override
  int get code;

  /// Create a copy of VerifyOtpModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyOtpModelImplCopyWith<_$VerifyOtpModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VerifyOtpData _$VerifyOtpDataFromJson(Map<String, dynamic> json) {
  return _VerifyOtpData.fromJson(json);
}

/// @nodoc
mixin _$VerifyOtpData {
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;

  /// Serializes this VerifyOtpData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifyOtpData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyOtpDataCopyWith<VerifyOtpData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpDataCopyWith<$Res> {
  factory $VerifyOtpDataCopyWith(
          VerifyOtpData value, $Res Function(VerifyOtpData) then) =
      _$VerifyOtpDataCopyWithImpl<$Res, VerifyOtpData>;
  @useResult
  $Res call({@JsonKey(name: 'phone_number') String phoneNumber});
}

/// @nodoc
class _$VerifyOtpDataCopyWithImpl<$Res, $Val extends VerifyOtpData>
    implements $VerifyOtpDataCopyWith<$Res> {
  _$VerifyOtpDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyOtpData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyOtpDataImplCopyWith<$Res>
    implements $VerifyOtpDataCopyWith<$Res> {
  factory _$$VerifyOtpDataImplCopyWith(
          _$VerifyOtpDataImpl value, $Res Function(_$VerifyOtpDataImpl) then) =
      __$$VerifyOtpDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'phone_number') String phoneNumber});
}

/// @nodoc
class __$$VerifyOtpDataImplCopyWithImpl<$Res>
    extends _$VerifyOtpDataCopyWithImpl<$Res, _$VerifyOtpDataImpl>
    implements _$$VerifyOtpDataImplCopyWith<$Res> {
  __$$VerifyOtpDataImplCopyWithImpl(
      _$VerifyOtpDataImpl _value, $Res Function(_$VerifyOtpDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifyOtpData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$VerifyOtpDataImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyOtpDataImpl implements _VerifyOtpData {
  const _$VerifyOtpDataImpl(
      {@JsonKey(name: 'phone_number') required this.phoneNumber});

  factory _$VerifyOtpDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyOtpDataImplFromJson(json);

  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  @override
  String toString() {
    return 'VerifyOtpData(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpDataImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  /// Create a copy of VerifyOtpData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpDataImplCopyWith<_$VerifyOtpDataImpl> get copyWith =>
      __$$VerifyOtpDataImplCopyWithImpl<_$VerifyOtpDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyOtpDataImplToJson(
      this,
    );
  }
}

abstract class _VerifyOtpData implements VerifyOtpData {
  const factory _VerifyOtpData(
          {@JsonKey(name: 'phone_number') required final String phoneNumber}) =
      _$VerifyOtpDataImpl;

  factory _VerifyOtpData.fromJson(Map<String, dynamic> json) =
      _$VerifyOtpDataImpl.fromJson;

  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber;

  /// Create a copy of VerifyOtpData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyOtpDataImplCopyWith<_$VerifyOtpDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
