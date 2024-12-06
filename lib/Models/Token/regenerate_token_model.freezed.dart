// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'regenerate_token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegenerateTokenModel {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int status,
            String message,
            @JsonKey(includeFromJson: false, includeToJson: false)
            RegenerateTokenData? data,
            RegenerateTokenError? error,
            int code)
        $default, {
    required TResult Function(String message) withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int status,
            String message,
            @JsonKey(includeFromJson: false, includeToJson: false)
            RegenerateTokenData? data,
            RegenerateTokenError? error,
            int code)?
        $default, {
    TResult? Function(String message)? withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int status,
            String message,
            @JsonKey(includeFromJson: false, includeToJson: false)
            RegenerateTokenData? data,
            RegenerateTokenError? error,
            int code)?
        $default, {
    TResult Function(String message)? withError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RegenerateTokenModel value) $default, {
    required TResult Function(_RegenerateTokenModelWithError value) withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_RegenerateTokenModel value)? $default, {
    TResult? Function(_RegenerateTokenModelWithError value)? withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RegenerateTokenModel value)? $default, {
    TResult Function(_RegenerateTokenModelWithError value)? withError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of RegenerateTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegenerateTokenModelCopyWith<RegenerateTokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegenerateTokenModelCopyWith<$Res> {
  factory $RegenerateTokenModelCopyWith(RegenerateTokenModel value,
          $Res Function(RegenerateTokenModel) then) =
      _$RegenerateTokenModelCopyWithImpl<$Res, RegenerateTokenModel>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$RegenerateTokenModelCopyWithImpl<$Res,
        $Val extends RegenerateTokenModel>
    implements $RegenerateTokenModelCopyWith<$Res> {
  _$RegenerateTokenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegenerateTokenModel
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
abstract class _$$RegenerateTokenModelImplCopyWith<$Res>
    implements $RegenerateTokenModelCopyWith<$Res> {
  factory _$$RegenerateTokenModelImplCopyWith(_$RegenerateTokenModelImpl value,
          $Res Function(_$RegenerateTokenModelImpl) then) =
      __$$RegenerateTokenModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String message,
      @JsonKey(includeFromJson: false, includeToJson: false)
      RegenerateTokenData? data,
      RegenerateTokenError? error,
      int code});

  $RegenerateTokenDataCopyWith<$Res>? get data;
  $RegenerateTokenErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$RegenerateTokenModelImplCopyWithImpl<$Res>
    extends _$RegenerateTokenModelCopyWithImpl<$Res, _$RegenerateTokenModelImpl>
    implements _$$RegenerateTokenModelImplCopyWith<$Res> {
  __$$RegenerateTokenModelImplCopyWithImpl(_$RegenerateTokenModelImpl _value,
      $Res Function(_$RegenerateTokenModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegenerateTokenModel
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
    return _then(_$RegenerateTokenModelImpl(
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
              as RegenerateTokenData?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as RegenerateTokenError?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of RegenerateTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegenerateTokenDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $RegenerateTokenDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }

  /// Create a copy of RegenerateTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegenerateTokenErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $RegenerateTokenErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$RegenerateTokenModelImpl implements _RegenerateTokenModel {
  const _$RegenerateTokenModelImpl(
      {required this.status,
      required this.message,
      @JsonKey(includeFromJson: false, includeToJson: false) this.data,
      this.error,
      required this.code});

  @override
  final int status;
  @override
  final String message;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final RegenerateTokenData? data;
  @override
  final RegenerateTokenError? error;
  @override
  final int code;

  @override
  String toString() {
    return 'RegenerateTokenModel(status: $status, message: $message, data: $data, error: $error, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegenerateTokenModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, message, data, error, code);

  /// Create a copy of RegenerateTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegenerateTokenModelImplCopyWith<_$RegenerateTokenModelImpl>
      get copyWith =>
          __$$RegenerateTokenModelImplCopyWithImpl<_$RegenerateTokenModelImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int status,
            String message,
            @JsonKey(includeFromJson: false, includeToJson: false)
            RegenerateTokenData? data,
            RegenerateTokenError? error,
            int code)
        $default, {
    required TResult Function(String message) withError,
  }) {
    return $default(status, message, data, error, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int status,
            String message,
            @JsonKey(includeFromJson: false, includeToJson: false)
            RegenerateTokenData? data,
            RegenerateTokenError? error,
            int code)?
        $default, {
    TResult? Function(String message)? withError,
  }) {
    return $default?.call(status, message, data, error, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int status,
            String message,
            @JsonKey(includeFromJson: false, includeToJson: false)
            RegenerateTokenData? data,
            RegenerateTokenError? error,
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
    TResult Function(_RegenerateTokenModel value) $default, {
    required TResult Function(_RegenerateTokenModelWithError value) withError,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_RegenerateTokenModel value)? $default, {
    TResult? Function(_RegenerateTokenModelWithError value)? withError,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RegenerateTokenModel value)? $default, {
    TResult Function(_RegenerateTokenModelWithError value)? withError,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _RegenerateTokenModel implements RegenerateTokenModel {
  const factory _RegenerateTokenModel(
      {required final int status,
      required final String message,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final RegenerateTokenData? data,
      final RegenerateTokenError? error,
      required final int code}) = _$RegenerateTokenModelImpl;

  int get status;
  @override
  String get message;
  @JsonKey(includeFromJson: false, includeToJson: false)
  RegenerateTokenData? get data;
  RegenerateTokenError? get error;
  int get code;

  /// Create a copy of RegenerateTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegenerateTokenModelImplCopyWith<_$RegenerateTokenModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegenerateTokenModelWithErrorImplCopyWith<$Res>
    implements $RegenerateTokenModelCopyWith<$Res> {
  factory _$$RegenerateTokenModelWithErrorImplCopyWith(
          _$RegenerateTokenModelWithErrorImpl value,
          $Res Function(_$RegenerateTokenModelWithErrorImpl) then) =
      __$$RegenerateTokenModelWithErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RegenerateTokenModelWithErrorImplCopyWithImpl<$Res>
    extends _$RegenerateTokenModelCopyWithImpl<$Res,
        _$RegenerateTokenModelWithErrorImpl>
    implements _$$RegenerateTokenModelWithErrorImplCopyWith<$Res> {
  __$$RegenerateTokenModelWithErrorImplCopyWithImpl(
      _$RegenerateTokenModelWithErrorImpl _value,
      $Res Function(_$RegenerateTokenModelWithErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegenerateTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RegenerateTokenModelWithErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegenerateTokenModelWithErrorImpl
    implements _RegenerateTokenModelWithError {
  const _$RegenerateTokenModelWithErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RegenerateTokenModel.withError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegenerateTokenModelWithErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RegenerateTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegenerateTokenModelWithErrorImplCopyWith<
          _$RegenerateTokenModelWithErrorImpl>
      get copyWith => __$$RegenerateTokenModelWithErrorImplCopyWithImpl<
          _$RegenerateTokenModelWithErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int status,
            String message,
            @JsonKey(includeFromJson: false, includeToJson: false)
            RegenerateTokenData? data,
            RegenerateTokenError? error,
            int code)
        $default, {
    required TResult Function(String message) withError,
  }) {
    return withError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int status,
            String message,
            @JsonKey(includeFromJson: false, includeToJson: false)
            RegenerateTokenData? data,
            RegenerateTokenError? error,
            int code)?
        $default, {
    TResult? Function(String message)? withError,
  }) {
    return withError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int status,
            String message,
            @JsonKey(includeFromJson: false, includeToJson: false)
            RegenerateTokenData? data,
            RegenerateTokenError? error,
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
    TResult Function(_RegenerateTokenModel value) $default, {
    required TResult Function(_RegenerateTokenModelWithError value) withError,
  }) {
    return withError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_RegenerateTokenModel value)? $default, {
    TResult? Function(_RegenerateTokenModelWithError value)? withError,
  }) {
    return withError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RegenerateTokenModel value)? $default, {
    TResult Function(_RegenerateTokenModelWithError value)? withError,
    required TResult orElse(),
  }) {
    if (withError != null) {
      return withError(this);
    }
    return orElse();
  }
}

abstract class _RegenerateTokenModelWithError implements RegenerateTokenModel {
  const factory _RegenerateTokenModelWithError(final String message) =
      _$RegenerateTokenModelWithErrorImpl;

  @override
  String get message;

  /// Create a copy of RegenerateTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegenerateTokenModelWithErrorImplCopyWith<
          _$RegenerateTokenModelWithErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RegenerateTokenData _$RegenerateTokenDataFromJson(Map<String, dynamic> json) {
  return _RegenerateTokenData.fromJson(json);
}

/// @nodoc
mixin _$RegenerateTokenData {
  @JsonKey(name: "access_token")
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "refresh_token")
  String get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this RegenerateTokenData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegenerateTokenData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegenerateTokenDataCopyWith<RegenerateTokenData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegenerateTokenDataCopyWith<$Res> {
  factory $RegenerateTokenDataCopyWith(
          RegenerateTokenData value, $Res Function(RegenerateTokenData) then) =
      _$RegenerateTokenDataCopyWithImpl<$Res, RegenerateTokenData>;
  @useResult
  $Res call(
      {@JsonKey(name: "access_token") String accessToken,
      @JsonKey(name: "refresh_token") String refreshToken});
}

/// @nodoc
class _$RegenerateTokenDataCopyWithImpl<$Res, $Val extends RegenerateTokenData>
    implements $RegenerateTokenDataCopyWith<$Res> {
  _$RegenerateTokenDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegenerateTokenData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegenerateTokenDataImplCopyWith<$Res>
    implements $RegenerateTokenDataCopyWith<$Res> {
  factory _$$RegenerateTokenDataImplCopyWith(_$RegenerateTokenDataImpl value,
          $Res Function(_$RegenerateTokenDataImpl) then) =
      __$$RegenerateTokenDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "access_token") String accessToken,
      @JsonKey(name: "refresh_token") String refreshToken});
}

/// @nodoc
class __$$RegenerateTokenDataImplCopyWithImpl<$Res>
    extends _$RegenerateTokenDataCopyWithImpl<$Res, _$RegenerateTokenDataImpl>
    implements _$$RegenerateTokenDataImplCopyWith<$Res> {
  __$$RegenerateTokenDataImplCopyWithImpl(_$RegenerateTokenDataImpl _value,
      $Res Function(_$RegenerateTokenDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegenerateTokenData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$RegenerateTokenDataImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegenerateTokenDataImpl implements _RegenerateTokenData {
  const _$RegenerateTokenDataImpl(
      {@JsonKey(name: "access_token") required this.accessToken,
      @JsonKey(name: "refresh_token") required this.refreshToken});

  factory _$RegenerateTokenDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegenerateTokenDataImplFromJson(json);

  @override
  @JsonKey(name: "access_token")
  final String accessToken;
  @override
  @JsonKey(name: "refresh_token")
  final String refreshToken;

  @override
  String toString() {
    return 'RegenerateTokenData(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegenerateTokenDataImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  /// Create a copy of RegenerateTokenData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegenerateTokenDataImplCopyWith<_$RegenerateTokenDataImpl> get copyWith =>
      __$$RegenerateTokenDataImplCopyWithImpl<_$RegenerateTokenDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegenerateTokenDataImplToJson(
      this,
    );
  }
}

abstract class _RegenerateTokenData implements RegenerateTokenData {
  const factory _RegenerateTokenData(
          {@JsonKey(name: "access_token") required final String accessToken,
          @JsonKey(name: "refresh_token") required final String refreshToken}) =
      _$RegenerateTokenDataImpl;

  factory _RegenerateTokenData.fromJson(Map<String, dynamic> json) =
      _$RegenerateTokenDataImpl.fromJson;

  @override
  @JsonKey(name: "access_token")
  String get accessToken;
  @override
  @JsonKey(name: "refresh_token")
  String get refreshToken;

  /// Create a copy of RegenerateTokenData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegenerateTokenDataImplCopyWith<_$RegenerateTokenDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegenerateTokenError _$RegenerateTokenErrorFromJson(Map<String, dynamic> json) {
  return _RegenerateTokenError.fromJson(json);
}

/// @nodoc
mixin _$RegenerateTokenError {
  Map<String, List<String>> get errors => throw _privateConstructorUsedError;

  /// Serializes this RegenerateTokenError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegenerateTokenError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegenerateTokenErrorCopyWith<RegenerateTokenError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegenerateTokenErrorCopyWith<$Res> {
  factory $RegenerateTokenErrorCopyWith(RegenerateTokenError value,
          $Res Function(RegenerateTokenError) then) =
      _$RegenerateTokenErrorCopyWithImpl<$Res, RegenerateTokenError>;
  @useResult
  $Res call({Map<String, List<String>> errors});
}

/// @nodoc
class _$RegenerateTokenErrorCopyWithImpl<$Res,
        $Val extends RegenerateTokenError>
    implements $RegenerateTokenErrorCopyWith<$Res> {
  _$RegenerateTokenErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegenerateTokenError
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
abstract class _$$RegenerateTokenErrorImplCopyWith<$Res>
    implements $RegenerateTokenErrorCopyWith<$Res> {
  factory _$$RegenerateTokenErrorImplCopyWith(_$RegenerateTokenErrorImpl value,
          $Res Function(_$RegenerateTokenErrorImpl) then) =
      __$$RegenerateTokenErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, List<String>> errors});
}

/// @nodoc
class __$$RegenerateTokenErrorImplCopyWithImpl<$Res>
    extends _$RegenerateTokenErrorCopyWithImpl<$Res, _$RegenerateTokenErrorImpl>
    implements _$$RegenerateTokenErrorImplCopyWith<$Res> {
  __$$RegenerateTokenErrorImplCopyWithImpl(_$RegenerateTokenErrorImpl _value,
      $Res Function(_$RegenerateTokenErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegenerateTokenError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = null,
  }) {
    return _then(_$RegenerateTokenErrorImpl(
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegenerateTokenErrorImpl implements _RegenerateTokenError {
  const _$RegenerateTokenErrorImpl(
      {required final Map<String, List<String>> errors})
      : _errors = errors;

  factory _$RegenerateTokenErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegenerateTokenErrorImplFromJson(json);

  final Map<String, List<String>> _errors;
  @override
  Map<String, List<String>> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @override
  String toString() {
    return 'RegenerateTokenError(errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegenerateTokenErrorImpl &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_errors));

  /// Create a copy of RegenerateTokenError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegenerateTokenErrorImplCopyWith<_$RegenerateTokenErrorImpl>
      get copyWith =>
          __$$RegenerateTokenErrorImplCopyWithImpl<_$RegenerateTokenErrorImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegenerateTokenErrorImplToJson(
      this,
    );
  }
}

abstract class _RegenerateTokenError implements RegenerateTokenError {
  const factory _RegenerateTokenError(
          {required final Map<String, List<String>> errors}) =
      _$RegenerateTokenErrorImpl;

  factory _RegenerateTokenError.fromJson(Map<String, dynamic> json) =
      _$RegenerateTokenErrorImpl.fromJson;

  @override
  Map<String, List<String>> get errors;

  /// Create a copy of RegenerateTokenError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegenerateTokenErrorImplCopyWith<_$RegenerateTokenErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
