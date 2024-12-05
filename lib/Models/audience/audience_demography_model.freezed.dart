// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audience_demography_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AudienceDemographyModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int status, String message, AudienceDemographyData data, int code)
        success,
    required TResult Function(
            int status, String message, AudienceDemographyError error, int code)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int status, String message, AudienceDemographyData data, int code)?
        success,
    TResult? Function(int status, String message, AudienceDemographyError error,
            int code)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int status, String message, AudienceDemographyData data, int code)?
        success,
    TResult Function(int status, String message, AudienceDemographyError error,
            int code)?
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

  /// Create a copy of AudienceDemographyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudienceDemographyModelCopyWith<AudienceDemographyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudienceDemographyModelCopyWith<$Res> {
  factory $AudienceDemographyModelCopyWith(AudienceDemographyModel value,
          $Res Function(AudienceDemographyModel) then) =
      _$AudienceDemographyModelCopyWithImpl<$Res, AudienceDemographyModel>;
  @useResult
  $Res call({int status, String message, int code});
}

/// @nodoc
class _$AudienceDemographyModelCopyWithImpl<$Res,
        $Val extends AudienceDemographyModel>
    implements $AudienceDemographyModelCopyWith<$Res> {
  _$AudienceDemographyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudienceDemographyModel
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
    implements $AudienceDemographyModelCopyWith<$Res> {
  factory _$$SuccessResponseImplCopyWith(_$SuccessResponseImpl value,
          $Res Function(_$SuccessResponseImpl) then) =
      __$$SuccessResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status, String message, AudienceDemographyData data, int code});

  $AudienceDemographyDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SuccessResponseImplCopyWithImpl<$Res>
    extends _$AudienceDemographyModelCopyWithImpl<$Res, _$SuccessResponseImpl>
    implements _$$SuccessResponseImplCopyWith<$Res> {
  __$$SuccessResponseImplCopyWithImpl(
      _$SuccessResponseImpl _value, $Res Function(_$SuccessResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudienceDemographyModel
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
              as AudienceDemographyData,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of AudienceDemographyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AudienceDemographyDataCopyWith<$Res> get data {
    return $AudienceDemographyDataCopyWith<$Res>(_value.data, (value) {
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
  final AudienceDemographyData data;
  @override
  final int code;

  @override
  String toString() {
    return 'AudienceDemographyModel.success(status: $status, message: $message, data: $data, code: $code)';
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

  /// Create a copy of AudienceDemographyModel
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
            int status, String message, AudienceDemographyData data, int code)
        success,
    required TResult Function(
            int status, String message, AudienceDemographyError error, int code)
        error,
  }) {
    return success(status, message, data, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int status, String message, AudienceDemographyData data, int code)?
        success,
    TResult? Function(int status, String message, AudienceDemographyError error,
            int code)?
        error,
  }) {
    return success?.call(status, message, data, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int status, String message, AudienceDemographyData data, int code)?
        success,
    TResult Function(int status, String message, AudienceDemographyError error,
            int code)?
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

abstract class SuccessResponse implements AudienceDemographyModel {
  const factory SuccessResponse(
      {required final int status,
      required final String message,
      required final AudienceDemographyData data,
      required final int code}) = _$SuccessResponseImpl;

  @override
  int get status;
  @override
  String get message;
  AudienceDemographyData get data;
  @override
  int get code;

  /// Create a copy of AudienceDemographyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessResponseImplCopyWith<_$SuccessResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorResponseImplCopyWith<$Res>
    implements $AudienceDemographyModelCopyWith<$Res> {
  factory _$$ErrorResponseImplCopyWith(
          _$ErrorResponseImpl value, $Res Function(_$ErrorResponseImpl) then) =
      __$$ErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status, String message, AudienceDemographyError error, int code});

  $AudienceDemographyErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$ErrorResponseImplCopyWithImpl<$Res>
    extends _$AudienceDemographyModelCopyWithImpl<$Res, _$ErrorResponseImpl>
    implements _$$ErrorResponseImplCopyWith<$Res> {
  __$$ErrorResponseImplCopyWithImpl(
      _$ErrorResponseImpl _value, $Res Function(_$ErrorResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudienceDemographyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? error = null,
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
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AudienceDemographyError,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of AudienceDemographyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AudienceDemographyErrorCopyWith<$Res> get error {
    return $AudienceDemographyErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$ErrorResponseImpl implements ErrorResponse {
  const _$ErrorResponseImpl(
      {required this.status,
      required this.message,
      required this.error,
      required this.code});

  @override
  final int status;
  @override
  final String message;
  @override
  final AudienceDemographyError error;
  @override
  final int code;

  @override
  String toString() {
    return 'AudienceDemographyModel.error(status: $status, message: $message, error: $error, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message, error, code);

  /// Create a copy of AudienceDemographyModel
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
            int status, String message, AudienceDemographyData data, int code)
        success,
    required TResult Function(
            int status, String message, AudienceDemographyError error, int code)
        error,
  }) {
    return error(status, message, this.error, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int status, String message, AudienceDemographyData data, int code)?
        success,
    TResult? Function(int status, String message, AudienceDemographyError error,
            int code)?
        error,
  }) {
    return error?.call(status, message, this.error, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int status, String message, AudienceDemographyData data, int code)?
        success,
    TResult Function(int status, String message, AudienceDemographyError error,
            int code)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(status, message, this.error, code);
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

abstract class ErrorResponse implements AudienceDemographyModel {
  const factory ErrorResponse(
      {required final int status,
      required final String message,
      required final AudienceDemographyError error,
      required final int code}) = _$ErrorResponseImpl;

  @override
  int get status;
  @override
  String get message;
  AudienceDemographyError get error;
  @override
  int get code;

  /// Create a copy of AudienceDemographyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorResponseImplCopyWith<_$ErrorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AudienceDemographyData _$AudienceDemographyDataFromJson(
    Map<String, dynamic> json) {
  return _AudienceDemographyData.fromJson(json);
}

/// @nodoc
mixin _$AudienceDemographyData {
  int get totalMembers => throw _privateConstructorUsedError;
  int get totalMembersToday => throw _privateConstructorUsedError;
  double get malePercentage => throw _privateConstructorUsedError;
  double get femalePercentage => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;

  /// Serializes this AudienceDemographyData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudienceDemographyData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudienceDemographyDataCopyWith<AudienceDemographyData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudienceDemographyDataCopyWith<$Res> {
  factory $AudienceDemographyDataCopyWith(AudienceDemographyData value,
          $Res Function(AudienceDemographyData) then) =
      _$AudienceDemographyDataCopyWithImpl<$Res, AudienceDemographyData>;
  @useResult
  $Res call(
      {int totalMembers,
      int totalMembersToday,
      double malePercentage,
      double femalePercentage,
      int rank});
}

/// @nodoc
class _$AudienceDemographyDataCopyWithImpl<$Res,
        $Val extends AudienceDemographyData>
    implements $AudienceDemographyDataCopyWith<$Res> {
  _$AudienceDemographyDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudienceDemographyData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalMembers = null,
    Object? totalMembersToday = null,
    Object? malePercentage = null,
    Object? femalePercentage = null,
    Object? rank = null,
  }) {
    return _then(_value.copyWith(
      totalMembers: null == totalMembers
          ? _value.totalMembers
          : totalMembers // ignore: cast_nullable_to_non_nullable
              as int,
      totalMembersToday: null == totalMembersToday
          ? _value.totalMembersToday
          : totalMembersToday // ignore: cast_nullable_to_non_nullable
              as int,
      malePercentage: null == malePercentage
          ? _value.malePercentage
          : malePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      femalePercentage: null == femalePercentage
          ? _value.femalePercentage
          : femalePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudienceDemographyDataImplCopyWith<$Res>
    implements $AudienceDemographyDataCopyWith<$Res> {
  factory _$$AudienceDemographyDataImplCopyWith(
          _$AudienceDemographyDataImpl value,
          $Res Function(_$AudienceDemographyDataImpl) then) =
      __$$AudienceDemographyDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalMembers,
      int totalMembersToday,
      double malePercentage,
      double femalePercentage,
      int rank});
}

/// @nodoc
class __$$AudienceDemographyDataImplCopyWithImpl<$Res>
    extends _$AudienceDemographyDataCopyWithImpl<$Res,
        _$AudienceDemographyDataImpl>
    implements _$$AudienceDemographyDataImplCopyWith<$Res> {
  __$$AudienceDemographyDataImplCopyWithImpl(
      _$AudienceDemographyDataImpl _value,
      $Res Function(_$AudienceDemographyDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudienceDemographyData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalMembers = null,
    Object? totalMembersToday = null,
    Object? malePercentage = null,
    Object? femalePercentage = null,
    Object? rank = null,
  }) {
    return _then(_$AudienceDemographyDataImpl(
      totalMembers: null == totalMembers
          ? _value.totalMembers
          : totalMembers // ignore: cast_nullable_to_non_nullable
              as int,
      totalMembersToday: null == totalMembersToday
          ? _value.totalMembersToday
          : totalMembersToday // ignore: cast_nullable_to_non_nullable
              as int,
      malePercentage: null == malePercentage
          ? _value.malePercentage
          : malePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      femalePercentage: null == femalePercentage
          ? _value.femalePercentage
          : femalePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudienceDemographyDataImpl implements _AudienceDemographyData {
  const _$AudienceDemographyDataImpl(
      {required this.totalMembers,
      required this.totalMembersToday,
      required this.malePercentage,
      required this.femalePercentage,
      required this.rank});

  factory _$AudienceDemographyDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudienceDemographyDataImplFromJson(json);

  @override
  final int totalMembers;
  @override
  final int totalMembersToday;
  @override
  final double malePercentage;
  @override
  final double femalePercentage;
  @override
  final int rank;

  @override
  String toString() {
    return 'AudienceDemographyData(totalMembers: $totalMembers, totalMembersToday: $totalMembersToday, malePercentage: $malePercentage, femalePercentage: $femalePercentage, rank: $rank)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudienceDemographyDataImpl &&
            (identical(other.totalMembers, totalMembers) ||
                other.totalMembers == totalMembers) &&
            (identical(other.totalMembersToday, totalMembersToday) ||
                other.totalMembersToday == totalMembersToday) &&
            (identical(other.malePercentage, malePercentage) ||
                other.malePercentage == malePercentage) &&
            (identical(other.femalePercentage, femalePercentage) ||
                other.femalePercentage == femalePercentage) &&
            (identical(other.rank, rank) || other.rank == rank));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalMembers, totalMembersToday,
      malePercentage, femalePercentage, rank);

  /// Create a copy of AudienceDemographyData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudienceDemographyDataImplCopyWith<_$AudienceDemographyDataImpl>
      get copyWith => __$$AudienceDemographyDataImplCopyWithImpl<
          _$AudienceDemographyDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudienceDemographyDataImplToJson(
      this,
    );
  }
}

abstract class _AudienceDemographyData implements AudienceDemographyData {
  const factory _AudienceDemographyData(
      {required final int totalMembers,
      required final int totalMembersToday,
      required final double malePercentage,
      required final double femalePercentage,
      required final int rank}) = _$AudienceDemographyDataImpl;

  factory _AudienceDemographyData.fromJson(Map<String, dynamic> json) =
      _$AudienceDemographyDataImpl.fromJson;

  @override
  int get totalMembers;
  @override
  int get totalMembersToday;
  @override
  double get malePercentage;
  @override
  double get femalePercentage;
  @override
  int get rank;

  /// Create a copy of AudienceDemographyData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudienceDemographyDataImplCopyWith<_$AudienceDemographyDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AudienceDemographyError _$AudienceDemographyErrorFromJson(
    Map<String, dynamic> json) {
  return _AudienceDemographyError.fromJson(json);
}

/// @nodoc
mixin _$AudienceDemographyError {
  Map<String, List<String>> get errors => throw _privateConstructorUsedError;

  /// Serializes this AudienceDemographyError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudienceDemographyError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudienceDemographyErrorCopyWith<AudienceDemographyError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudienceDemographyErrorCopyWith<$Res> {
  factory $AudienceDemographyErrorCopyWith(AudienceDemographyError value,
          $Res Function(AudienceDemographyError) then) =
      _$AudienceDemographyErrorCopyWithImpl<$Res, AudienceDemographyError>;
  @useResult
  $Res call({Map<String, List<String>> errors});
}

/// @nodoc
class _$AudienceDemographyErrorCopyWithImpl<$Res,
        $Val extends AudienceDemographyError>
    implements $AudienceDemographyErrorCopyWith<$Res> {
  _$AudienceDemographyErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudienceDemographyError
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
abstract class _$$AudienceDemographyErrorImplCopyWith<$Res>
    implements $AudienceDemographyErrorCopyWith<$Res> {
  factory _$$AudienceDemographyErrorImplCopyWith(
          _$AudienceDemographyErrorImpl value,
          $Res Function(_$AudienceDemographyErrorImpl) then) =
      __$$AudienceDemographyErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, List<String>> errors});
}

/// @nodoc
class __$$AudienceDemographyErrorImplCopyWithImpl<$Res>
    extends _$AudienceDemographyErrorCopyWithImpl<$Res,
        _$AudienceDemographyErrorImpl>
    implements _$$AudienceDemographyErrorImplCopyWith<$Res> {
  __$$AudienceDemographyErrorImplCopyWithImpl(
      _$AudienceDemographyErrorImpl _value,
      $Res Function(_$AudienceDemographyErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudienceDemographyError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = null,
  }) {
    return _then(_$AudienceDemographyErrorImpl(
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudienceDemographyErrorImpl implements _AudienceDemographyError {
  const _$AudienceDemographyErrorImpl(
      {required final Map<String, List<String>> errors})
      : _errors = errors;

  factory _$AudienceDemographyErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudienceDemographyErrorImplFromJson(json);

  final Map<String, List<String>> _errors;
  @override
  Map<String, List<String>> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @override
  String toString() {
    return 'AudienceDemographyError(errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudienceDemographyErrorImpl &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_errors));

  /// Create a copy of AudienceDemographyError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudienceDemographyErrorImplCopyWith<_$AudienceDemographyErrorImpl>
      get copyWith => __$$AudienceDemographyErrorImplCopyWithImpl<
          _$AudienceDemographyErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudienceDemographyErrorImplToJson(
      this,
    );
  }
}

abstract class _AudienceDemographyError implements AudienceDemographyError {
  const factory _AudienceDemographyError(
          {required final Map<String, List<String>> errors}) =
      _$AudienceDemographyErrorImpl;

  factory _AudienceDemographyError.fromJson(Map<String, dynamic> json) =
      _$AudienceDemographyErrorImpl.fromJson;

  @override
  Map<String, List<String>> get errors;

  /// Create a copy of AudienceDemographyError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudienceDemographyErrorImplCopyWith<_$AudienceDemographyErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
