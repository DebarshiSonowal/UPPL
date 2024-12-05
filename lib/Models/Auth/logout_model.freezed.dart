// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logout_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LogoutResponseModel _$LogoutResponseModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _LogoutResponseModel.fromJson(json);
    case 'withError':
      return _LogoutResponseModelWithError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'LogoutResponseModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$LogoutResponseModel {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int status, String message, dynamic data, int code)
        $default, {
    required TResult Function(String message) withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int status, String message, dynamic data, int code)?
        $default, {
    TResult? Function(String message)? withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int status, String message, dynamic data, int code)?
        $default, {
    TResult Function(String message)? withError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LogoutResponseModel value) $default, {
    required TResult Function(_LogoutResponseModelWithError value) withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LogoutResponseModel value)? $default, {
    TResult? Function(_LogoutResponseModelWithError value)? withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LogoutResponseModel value)? $default, {
    TResult Function(_LogoutResponseModelWithError value)? withError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this LogoutResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LogoutResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LogoutResponseModelCopyWith<LogoutResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutResponseModelCopyWith<$Res> {
  factory $LogoutResponseModelCopyWith(
          LogoutResponseModel value, $Res Function(LogoutResponseModel) then) =
      _$LogoutResponseModelCopyWithImpl<$Res, LogoutResponseModel>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$LogoutResponseModelCopyWithImpl<$Res, $Val extends LogoutResponseModel>
    implements $LogoutResponseModelCopyWith<$Res> {
  _$LogoutResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogoutResponseModel
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
abstract class _$$LogoutResponseModelImplCopyWith<$Res>
    implements $LogoutResponseModelCopyWith<$Res> {
  factory _$$LogoutResponseModelImplCopyWith(_$LogoutResponseModelImpl value,
          $Res Function(_$LogoutResponseModelImpl) then) =
      __$$LogoutResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, dynamic data, int code});
}

/// @nodoc
class __$$LogoutResponseModelImplCopyWithImpl<$Res>
    extends _$LogoutResponseModelCopyWithImpl<$Res, _$LogoutResponseModelImpl>
    implements _$$LogoutResponseModelImplCopyWith<$Res> {
  __$$LogoutResponseModelImplCopyWithImpl(_$LogoutResponseModelImpl _value,
      $Res Function(_$LogoutResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogoutResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
    Object? code = null,
  }) {
    return _then(_$LogoutResponseModelImpl(
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
              as dynamic,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LogoutResponseModelImpl implements _LogoutResponseModel {
  const _$LogoutResponseModelImpl(
      {required this.status,
      required this.message,
      this.data,
      required this.code,
      final String? $type})
      : $type = $type ?? 'default';

  factory _$LogoutResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogoutResponseModelImplFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final dynamic data;
// Can be any data type, including null
  @override
  final int code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LogoutResponseModel(status: $status, message: $message, data: $data, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(data), code);

  /// Create a copy of LogoutResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutResponseModelImplCopyWith<_$LogoutResponseModelImpl> get copyWith =>
      __$$LogoutResponseModelImplCopyWithImpl<_$LogoutResponseModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int status, String message, dynamic data, int code)
        $default, {
    required TResult Function(String message) withError,
  }) {
    return $default(status, message, data, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int status, String message, dynamic data, int code)?
        $default, {
    TResult? Function(String message)? withError,
  }) {
    return $default?.call(status, message, data, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int status, String message, dynamic data, int code)?
        $default, {
    TResult Function(String message)? withError,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(status, message, data, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LogoutResponseModel value) $default, {
    required TResult Function(_LogoutResponseModelWithError value) withError,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LogoutResponseModel value)? $default, {
    TResult? Function(_LogoutResponseModelWithError value)? withError,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LogoutResponseModel value)? $default, {
    TResult Function(_LogoutResponseModelWithError value)? withError,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LogoutResponseModelImplToJson(
      this,
    );
  }
}

abstract class _LogoutResponseModel implements LogoutResponseModel {
  const factory _LogoutResponseModel(
      {required final int status,
      required final String message,
      final dynamic data,
      required final int code}) = _$LogoutResponseModelImpl;

  factory _LogoutResponseModel.fromJson(Map<String, dynamic> json) =
      _$LogoutResponseModelImpl.fromJson;

  int get status;
  @override
  String get message;
  dynamic get data; // Can be any data type, including null
  int get code;

  /// Create a copy of LogoutResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogoutResponseModelImplCopyWith<_$LogoutResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutResponseModelWithErrorImplCopyWith<$Res>
    implements $LogoutResponseModelCopyWith<$Res> {
  factory _$$LogoutResponseModelWithErrorImplCopyWith(
          _$LogoutResponseModelWithErrorImpl value,
          $Res Function(_$LogoutResponseModelWithErrorImpl) then) =
      __$$LogoutResponseModelWithErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LogoutResponseModelWithErrorImplCopyWithImpl<$Res>
    extends _$LogoutResponseModelCopyWithImpl<$Res,
        _$LogoutResponseModelWithErrorImpl>
    implements _$$LogoutResponseModelWithErrorImplCopyWith<$Res> {
  __$$LogoutResponseModelWithErrorImplCopyWithImpl(
      _$LogoutResponseModelWithErrorImpl _value,
      $Res Function(_$LogoutResponseModelWithErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogoutResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LogoutResponseModelWithErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LogoutResponseModelWithErrorImpl
    implements _LogoutResponseModelWithError {
  const _$LogoutResponseModelWithErrorImpl(this.message, {final String? $type})
      : $type = $type ?? 'withError';

  factory _$LogoutResponseModelWithErrorImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LogoutResponseModelWithErrorImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LogoutResponseModel.withError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutResponseModelWithErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LogoutResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutResponseModelWithErrorImplCopyWith<
          _$LogoutResponseModelWithErrorImpl>
      get copyWith => __$$LogoutResponseModelWithErrorImplCopyWithImpl<
          _$LogoutResponseModelWithErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int status, String message, dynamic data, int code)
        $default, {
    required TResult Function(String message) withError,
  }) {
    return withError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int status, String message, dynamic data, int code)?
        $default, {
    TResult? Function(String message)? withError,
  }) {
    return withError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int status, String message, dynamic data, int code)?
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
    TResult Function(_LogoutResponseModel value) $default, {
    required TResult Function(_LogoutResponseModelWithError value) withError,
  }) {
    return withError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LogoutResponseModel value)? $default, {
    TResult? Function(_LogoutResponseModelWithError value)? withError,
  }) {
    return withError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LogoutResponseModel value)? $default, {
    TResult Function(_LogoutResponseModelWithError value)? withError,
    required TResult orElse(),
  }) {
    if (withError != null) {
      return withError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LogoutResponseModelWithErrorImplToJson(
      this,
    );
  }
}

abstract class _LogoutResponseModelWithError implements LogoutResponseModel {
  const factory _LogoutResponseModelWithError(final String message) =
      _$LogoutResponseModelWithErrorImpl;

  factory _LogoutResponseModelWithError.fromJson(Map<String, dynamic> json) =
      _$LogoutResponseModelWithErrorImpl.fromJson;

  @override
  String get message;

  /// Create a copy of LogoutResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogoutResponseModelWithErrorImplCopyWith<
          _$LogoutResponseModelWithErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
