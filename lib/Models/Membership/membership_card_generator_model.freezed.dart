// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'membership_card_generator_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MembershipCardGeneratorModel _$MembershipCardGeneratorModelFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _MembershipCardGeneratorModel.fromJson(json);
    case 'withError':
      return _MembershipCardGeneratorModelWithError.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'MembershipCardGeneratorModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$MembershipCardGeneratorModel {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int status, String message, Data data, int code)
        $default, {
    required TResult Function(String message) withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int status, String message, Data data, int code)?
        $default, {
    TResult? Function(String message)? withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int status, String message, Data data, int code)?
        $default, {
    TResult Function(String message)? withError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MembershipCardGeneratorModel value) $default, {
    required TResult Function(_MembershipCardGeneratorModelWithError value)
        withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MembershipCardGeneratorModel value)? $default, {
    TResult? Function(_MembershipCardGeneratorModelWithError value)? withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MembershipCardGeneratorModel value)? $default, {
    TResult Function(_MembershipCardGeneratorModelWithError value)? withError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this MembershipCardGeneratorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MembershipCardGeneratorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MembershipCardGeneratorModelCopyWith<MembershipCardGeneratorModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembershipCardGeneratorModelCopyWith<$Res> {
  factory $MembershipCardGeneratorModelCopyWith(
          MembershipCardGeneratorModel value,
          $Res Function(MembershipCardGeneratorModel) then) =
      _$MembershipCardGeneratorModelCopyWithImpl<$Res,
          MembershipCardGeneratorModel>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$MembershipCardGeneratorModelCopyWithImpl<$Res,
        $Val extends MembershipCardGeneratorModel>
    implements $MembershipCardGeneratorModelCopyWith<$Res> {
  _$MembershipCardGeneratorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MembershipCardGeneratorModel
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
abstract class _$$MembershipCardGeneratorModelImplCopyWith<$Res>
    implements $MembershipCardGeneratorModelCopyWith<$Res> {
  factory _$$MembershipCardGeneratorModelImplCopyWith(
          _$MembershipCardGeneratorModelImpl value,
          $Res Function(_$MembershipCardGeneratorModelImpl) then) =
      __$$MembershipCardGeneratorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, Data data, int code});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$MembershipCardGeneratorModelImplCopyWithImpl<$Res>
    extends _$MembershipCardGeneratorModelCopyWithImpl<$Res,
        _$MembershipCardGeneratorModelImpl>
    implements _$$MembershipCardGeneratorModelImplCopyWith<$Res> {
  __$$MembershipCardGeneratorModelImplCopyWithImpl(
      _$MembershipCardGeneratorModelImpl _value,
      $Res Function(_$MembershipCardGeneratorModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MembershipCardGeneratorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
    Object? code = null,
  }) {
    return _then(_$MembershipCardGeneratorModelImpl(
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
              as Data,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of MembershipCardGeneratorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$MembershipCardGeneratorModelImpl
    implements _MembershipCardGeneratorModel {
  const _$MembershipCardGeneratorModelImpl(
      {required this.status,
      required this.message,
      required this.data,
      required this.code,
      final String? $type})
      : $type = $type ?? 'default';

  factory _$MembershipCardGeneratorModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MembershipCardGeneratorModelImplFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final Data data;
  @override
  final int code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MembershipCardGeneratorModel(status: $status, message: $message, data: $data, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MembershipCardGeneratorModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data, code);

  /// Create a copy of MembershipCardGeneratorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MembershipCardGeneratorModelImplCopyWith<
          _$MembershipCardGeneratorModelImpl>
      get copyWith => __$$MembershipCardGeneratorModelImplCopyWithImpl<
          _$MembershipCardGeneratorModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int status, String message, Data data, int code)
        $default, {
    required TResult Function(String message) withError,
  }) {
    return $default(status, message, data, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int status, String message, Data data, int code)?
        $default, {
    TResult? Function(String message)? withError,
  }) {
    return $default?.call(status, message, data, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int status, String message, Data data, int code)?
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
    TResult Function(_MembershipCardGeneratorModel value) $default, {
    required TResult Function(_MembershipCardGeneratorModelWithError value)
        withError,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MembershipCardGeneratorModel value)? $default, {
    TResult? Function(_MembershipCardGeneratorModelWithError value)? withError,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MembershipCardGeneratorModel value)? $default, {
    TResult Function(_MembershipCardGeneratorModelWithError value)? withError,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MembershipCardGeneratorModelImplToJson(
      this,
    );
  }
}

abstract class _MembershipCardGeneratorModel
    implements MembershipCardGeneratorModel {
  const factory _MembershipCardGeneratorModel(
      {required final int status,
      required final String message,
      required final Data data,
      required final int code}) = _$MembershipCardGeneratorModelImpl;

  factory _MembershipCardGeneratorModel.fromJson(Map<String, dynamic> json) =
      _$MembershipCardGeneratorModelImpl.fromJson;

  int get status;
  @override
  String get message;
  Data get data;
  int get code;

  /// Create a copy of MembershipCardGeneratorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MembershipCardGeneratorModelImplCopyWith<
          _$MembershipCardGeneratorModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MembershipCardGeneratorModelWithErrorImplCopyWith<$Res>
    implements $MembershipCardGeneratorModelCopyWith<$Res> {
  factory _$$MembershipCardGeneratorModelWithErrorImplCopyWith(
          _$MembershipCardGeneratorModelWithErrorImpl value,
          $Res Function(_$MembershipCardGeneratorModelWithErrorImpl) then) =
      __$$MembershipCardGeneratorModelWithErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MembershipCardGeneratorModelWithErrorImplCopyWithImpl<$Res>
    extends _$MembershipCardGeneratorModelCopyWithImpl<$Res,
        _$MembershipCardGeneratorModelWithErrorImpl>
    implements _$$MembershipCardGeneratorModelWithErrorImplCopyWith<$Res> {
  __$$MembershipCardGeneratorModelWithErrorImplCopyWithImpl(
      _$MembershipCardGeneratorModelWithErrorImpl _value,
      $Res Function(_$MembershipCardGeneratorModelWithErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MembershipCardGeneratorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MembershipCardGeneratorModelWithErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MembershipCardGeneratorModelWithErrorImpl
    implements _MembershipCardGeneratorModelWithError {
  const _$MembershipCardGeneratorModelWithErrorImpl(this.message,
      {final String? $type})
      : $type = $type ?? 'withError';

  factory _$MembershipCardGeneratorModelWithErrorImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MembershipCardGeneratorModelWithErrorImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MembershipCardGeneratorModel.withError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MembershipCardGeneratorModelWithErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MembershipCardGeneratorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MembershipCardGeneratorModelWithErrorImplCopyWith<
          _$MembershipCardGeneratorModelWithErrorImpl>
      get copyWith => __$$MembershipCardGeneratorModelWithErrorImplCopyWithImpl<
          _$MembershipCardGeneratorModelWithErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int status, String message, Data data, int code)
        $default, {
    required TResult Function(String message) withError,
  }) {
    return withError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int status, String message, Data data, int code)?
        $default, {
    TResult? Function(String message)? withError,
  }) {
    return withError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int status, String message, Data data, int code)?
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
    TResult Function(_MembershipCardGeneratorModel value) $default, {
    required TResult Function(_MembershipCardGeneratorModelWithError value)
        withError,
  }) {
    return withError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MembershipCardGeneratorModel value)? $default, {
    TResult? Function(_MembershipCardGeneratorModelWithError value)? withError,
  }) {
    return withError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MembershipCardGeneratorModel value)? $default, {
    TResult Function(_MembershipCardGeneratorModelWithError value)? withError,
    required TResult orElse(),
  }) {
    if (withError != null) {
      return withError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MembershipCardGeneratorModelWithErrorImplToJson(
      this,
    );
  }
}

abstract class _MembershipCardGeneratorModelWithError
    implements MembershipCardGeneratorModel {
  const factory _MembershipCardGeneratorModelWithError(final String message) =
      _$MembershipCardGeneratorModelWithErrorImpl;

  factory _MembershipCardGeneratorModelWithError.fromJson(
          Map<String, dynamic> json) =
      _$MembershipCardGeneratorModelWithErrorImpl.fromJson;

  @override
  String get message;

  /// Create a copy of MembershipCardGeneratorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MembershipCardGeneratorModelWithErrorImplCopyWith<
          _$MembershipCardGeneratorModelWithErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$DataImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({required this.url});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'Data(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data({required final String url}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  String get url;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
