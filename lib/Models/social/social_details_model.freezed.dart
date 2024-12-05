// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocialDetailsModel _$SocialDetailsModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _SocialDetailsModel.fromJson(json);
    case 'withError':
      return _SocialDetailsModelWithError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SocialDetailsModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SocialDetailsModel {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int status, String message, SocialDetailsData? data,
            SocialDetailsError? error, int code)
        $default, {
    required TResult Function(String message) withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int status, String message, SocialDetailsData? data,
            SocialDetailsError? error, int code)?
        $default, {
    TResult? Function(String message)? withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int status, String message, SocialDetailsData? data,
            SocialDetailsError? error, int code)?
        $default, {
    TResult Function(String message)? withError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SocialDetailsModel value) $default, {
    required TResult Function(_SocialDetailsModelWithError value) withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SocialDetailsModel value)? $default, {
    TResult? Function(_SocialDetailsModelWithError value)? withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SocialDetailsModel value)? $default, {
    TResult Function(_SocialDetailsModelWithError value)? withError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this SocialDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocialDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialDetailsModelCopyWith<SocialDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialDetailsModelCopyWith<$Res> {
  factory $SocialDetailsModelCopyWith(
          SocialDetailsModel value, $Res Function(SocialDetailsModel) then) =
      _$SocialDetailsModelCopyWithImpl<$Res, SocialDetailsModel>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$SocialDetailsModelCopyWithImpl<$Res, $Val extends SocialDetailsModel>
    implements $SocialDetailsModelCopyWith<$Res> {
  _$SocialDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialDetailsModel
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
abstract class _$$SocialDetailsModelImplCopyWith<$Res>
    implements $SocialDetailsModelCopyWith<$Res> {
  factory _$$SocialDetailsModelImplCopyWith(_$SocialDetailsModelImpl value,
          $Res Function(_$SocialDetailsModelImpl) then) =
      __$$SocialDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String message,
      SocialDetailsData? data,
      SocialDetailsError? error,
      int code});

  $SocialDetailsDataCopyWith<$Res>? get data;
  $SocialDetailsErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$SocialDetailsModelImplCopyWithImpl<$Res>
    extends _$SocialDetailsModelCopyWithImpl<$Res, _$SocialDetailsModelImpl>
    implements _$$SocialDetailsModelImplCopyWith<$Res> {
  __$$SocialDetailsModelImplCopyWithImpl(_$SocialDetailsModelImpl _value,
      $Res Function(_$SocialDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialDetailsModel
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
    return _then(_$SocialDetailsModelImpl(
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
              as SocialDetailsData?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as SocialDetailsError?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of SocialDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialDetailsDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SocialDetailsDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }

  /// Create a copy of SocialDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialDetailsErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $SocialDetailsErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialDetailsModelImpl implements _SocialDetailsModel {
  const _$SocialDetailsModelImpl(
      {required this.status,
      required this.message,
      this.data,
      this.error,
      required this.code,
      final String? $type})
      : $type = $type ?? 'default';

  factory _$SocialDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialDetailsModelImplFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final SocialDetailsData? data;
  @override
  final SocialDetailsError? error;
  @override
  final int code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SocialDetailsModel(status: $status, message: $message, data: $data, error: $error, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialDetailsModelImpl &&
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

  /// Create a copy of SocialDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialDetailsModelImplCopyWith<_$SocialDetailsModelImpl> get copyWith =>
      __$$SocialDetailsModelImplCopyWithImpl<_$SocialDetailsModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int status, String message, SocialDetailsData? data,
            SocialDetailsError? error, int code)
        $default, {
    required TResult Function(String message) withError,
  }) {
    return $default(status, message, data, error, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int status, String message, SocialDetailsData? data,
            SocialDetailsError? error, int code)?
        $default, {
    TResult? Function(String message)? withError,
  }) {
    return $default?.call(status, message, data, error, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int status, String message, SocialDetailsData? data,
            SocialDetailsError? error, int code)?
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
    TResult Function(_SocialDetailsModel value) $default, {
    required TResult Function(_SocialDetailsModelWithError value) withError,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SocialDetailsModel value)? $default, {
    TResult? Function(_SocialDetailsModelWithError value)? withError,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SocialDetailsModel value)? $default, {
    TResult Function(_SocialDetailsModelWithError value)? withError,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _SocialDetailsModel implements SocialDetailsModel {
  const factory _SocialDetailsModel(
      {required final int status,
      required final String message,
      final SocialDetailsData? data,
      final SocialDetailsError? error,
      required final int code}) = _$SocialDetailsModelImpl;

  factory _SocialDetailsModel.fromJson(Map<String, dynamic> json) =
      _$SocialDetailsModelImpl.fromJson;

  int get status;
  @override
  String get message;
  SocialDetailsData? get data;
  SocialDetailsError? get error;
  int get code;

  /// Create a copy of SocialDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialDetailsModelImplCopyWith<_$SocialDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocialDetailsModelWithErrorImplCopyWith<$Res>
    implements $SocialDetailsModelCopyWith<$Res> {
  factory _$$SocialDetailsModelWithErrorImplCopyWith(
          _$SocialDetailsModelWithErrorImpl value,
          $Res Function(_$SocialDetailsModelWithErrorImpl) then) =
      __$$SocialDetailsModelWithErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SocialDetailsModelWithErrorImplCopyWithImpl<$Res>
    extends _$SocialDetailsModelCopyWithImpl<$Res,
        _$SocialDetailsModelWithErrorImpl>
    implements _$$SocialDetailsModelWithErrorImplCopyWith<$Res> {
  __$$SocialDetailsModelWithErrorImplCopyWithImpl(
      _$SocialDetailsModelWithErrorImpl _value,
      $Res Function(_$SocialDetailsModelWithErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SocialDetailsModelWithErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialDetailsModelWithErrorImpl
    implements _SocialDetailsModelWithError {
  const _$SocialDetailsModelWithErrorImpl(this.message, {final String? $type})
      : $type = $type ?? 'withError';

  factory _$SocialDetailsModelWithErrorImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SocialDetailsModelWithErrorImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SocialDetailsModel.withError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialDetailsModelWithErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SocialDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialDetailsModelWithErrorImplCopyWith<_$SocialDetailsModelWithErrorImpl>
      get copyWith => __$$SocialDetailsModelWithErrorImplCopyWithImpl<
          _$SocialDetailsModelWithErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int status, String message, SocialDetailsData? data,
            SocialDetailsError? error, int code)
        $default, {
    required TResult Function(String message) withError,
  }) {
    return withError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int status, String message, SocialDetailsData? data,
            SocialDetailsError? error, int code)?
        $default, {
    TResult? Function(String message)? withError,
  }) {
    return withError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int status, String message, SocialDetailsData? data,
            SocialDetailsError? error, int code)?
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
    TResult Function(_SocialDetailsModel value) $default, {
    required TResult Function(_SocialDetailsModelWithError value) withError,
  }) {
    return withError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SocialDetailsModel value)? $default, {
    TResult? Function(_SocialDetailsModelWithError value)? withError,
  }) {
    return withError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SocialDetailsModel value)? $default, {
    TResult Function(_SocialDetailsModelWithError value)? withError,
    required TResult orElse(),
  }) {
    if (withError != null) {
      return withError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialDetailsModelWithErrorImplToJson(
      this,
    );
  }
}

abstract class _SocialDetailsModelWithError implements SocialDetailsModel {
  const factory _SocialDetailsModelWithError(final String message) =
      _$SocialDetailsModelWithErrorImpl;

  factory _SocialDetailsModelWithError.fromJson(Map<String, dynamic> json) =
      _$SocialDetailsModelWithErrorImpl.fromJson;

  @override
  String get message;

  /// Create a copy of SocialDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialDetailsModelWithErrorImplCopyWith<_$SocialDetailsModelWithErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SocialDetailsData _$SocialDetailsDataFromJson(Map<String, dynamic> json) {
  return _SocialDetailsData.fromJson(json);
}

/// @nodoc
mixin _$SocialDetailsData {
  List<Member> get members => throw _privateConstructorUsedError;

  /// Serializes this SocialDetailsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocialDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialDetailsDataCopyWith<SocialDetailsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialDetailsDataCopyWith<$Res> {
  factory $SocialDetailsDataCopyWith(
          SocialDetailsData value, $Res Function(SocialDetailsData) then) =
      _$SocialDetailsDataCopyWithImpl<$Res, SocialDetailsData>;
  @useResult
  $Res call({List<Member> members});
}

/// @nodoc
class _$SocialDetailsDataCopyWithImpl<$Res, $Val extends SocialDetailsData>
    implements $SocialDetailsDataCopyWith<$Res> {
  _$SocialDetailsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? members = null,
  }) {
    return _then(_value.copyWith(
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialDetailsDataImplCopyWith<$Res>
    implements $SocialDetailsDataCopyWith<$Res> {
  factory _$$SocialDetailsDataImplCopyWith(_$SocialDetailsDataImpl value,
          $Res Function(_$SocialDetailsDataImpl) then) =
      __$$SocialDetailsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Member> members});
}

/// @nodoc
class __$$SocialDetailsDataImplCopyWithImpl<$Res>
    extends _$SocialDetailsDataCopyWithImpl<$Res, _$SocialDetailsDataImpl>
    implements _$$SocialDetailsDataImplCopyWith<$Res> {
  __$$SocialDetailsDataImplCopyWithImpl(_$SocialDetailsDataImpl _value,
      $Res Function(_$SocialDetailsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? members = null,
  }) {
    return _then(_$SocialDetailsDataImpl(
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialDetailsDataImpl implements _SocialDetailsData {
  const _$SocialDetailsDataImpl({required final List<Member> members})
      : _members = members;

  factory _$SocialDetailsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialDetailsDataImplFromJson(json);

  final List<Member> _members;
  @override
  List<Member> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'SocialDetailsData(members: $members)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialDetailsDataImpl &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_members));

  /// Create a copy of SocialDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialDetailsDataImplCopyWith<_$SocialDetailsDataImpl> get copyWith =>
      __$$SocialDetailsDataImplCopyWithImpl<_$SocialDetailsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialDetailsDataImplToJson(
      this,
    );
  }
}

abstract class _SocialDetailsData implements SocialDetailsData {
  const factory _SocialDetailsData({required final List<Member> members}) =
      _$SocialDetailsDataImpl;

  factory _SocialDetailsData.fromJson(Map<String, dynamic> json) =
      _$SocialDetailsDataImpl.fromJson;

  @override
  List<Member> get members;

  /// Create a copy of SocialDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialDetailsDataImplCopyWith<_$SocialDetailsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Member _$MemberFromJson(Map<String, dynamic> json) {
  return _Member.fromJson(json);
}

/// @nodoc
mixin _$Member {
  int get memberId => throw _privateConstructorUsedError;
  String? get alternateNumber => throw _privateConstructorUsedError;
  String? get facebookUrl => throw _privateConstructorUsedError;
  String? get twitterUrl => throw _privateConstructorUsedError;
  String? get instagramUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Member to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberCopyWith<Member> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberCopyWith<$Res> {
  factory $MemberCopyWith(Member value, $Res Function(Member) then) =
      _$MemberCopyWithImpl<$Res, Member>;
  @useResult
  $Res call(
      {int memberId,
      String? alternateNumber,
      String? facebookUrl,
      String? twitterUrl,
      String? instagramUrl,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$MemberCopyWithImpl<$Res, $Val extends Member>
    implements $MemberCopyWith<$Res> {
  _$MemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? alternateNumber = freezed,
    Object? facebookUrl = freezed,
    Object? twitterUrl = freezed,
    Object? instagramUrl = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      alternateNumber: freezed == alternateNumber
          ? _value.alternateNumber
          : alternateNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookUrl: freezed == facebookUrl
          ? _value.facebookUrl
          : facebookUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUrl: freezed == twitterUrl
          ? _value.twitterUrl
          : twitterUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramUrl: freezed == instagramUrl
          ? _value.instagramUrl
          : instagramUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberImplCopyWith<$Res> implements $MemberCopyWith<$Res> {
  factory _$$MemberImplCopyWith(
          _$MemberImpl value, $Res Function(_$MemberImpl) then) =
      __$$MemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int memberId,
      String? alternateNumber,
      String? facebookUrl,
      String? twitterUrl,
      String? instagramUrl,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$$MemberImplCopyWithImpl<$Res>
    extends _$MemberCopyWithImpl<$Res, _$MemberImpl>
    implements _$$MemberImplCopyWith<$Res> {
  __$$MemberImplCopyWithImpl(
      _$MemberImpl _value, $Res Function(_$MemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? alternateNumber = freezed,
    Object? facebookUrl = freezed,
    Object? twitterUrl = freezed,
    Object? instagramUrl = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$MemberImpl(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      alternateNumber: freezed == alternateNumber
          ? _value.alternateNumber
          : alternateNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookUrl: freezed == facebookUrl
          ? _value.facebookUrl
          : facebookUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUrl: freezed == twitterUrl
          ? _value.twitterUrl
          : twitterUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramUrl: freezed == instagramUrl
          ? _value.instagramUrl
          : instagramUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberImpl implements _Member {
  const _$MemberImpl(
      {required this.memberId,
      this.alternateNumber,
      this.facebookUrl,
      this.twitterUrl,
      this.instagramUrl,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$MemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberImplFromJson(json);

  @override
  final int memberId;
  @override
  final String? alternateNumber;
  @override
  final String? facebookUrl;
  @override
  final String? twitterUrl;
  @override
  final String? instagramUrl;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'Member(memberId: $memberId, alternateNumber: $alternateNumber, facebookUrl: $facebookUrl, twitterUrl: $twitterUrl, instagramUrl: $instagramUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberImpl &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.alternateNumber, alternateNumber) ||
                other.alternateNumber == alternateNumber) &&
            (identical(other.facebookUrl, facebookUrl) ||
                other.facebookUrl == facebookUrl) &&
            (identical(other.twitterUrl, twitterUrl) ||
                other.twitterUrl == twitterUrl) &&
            (identical(other.instagramUrl, instagramUrl) ||
                other.instagramUrl == instagramUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, memberId, alternateNumber,
      facebookUrl, twitterUrl, instagramUrl, createdAt, updatedAt);

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberImplCopyWith<_$MemberImpl> get copyWith =>
      __$$MemberImplCopyWithImpl<_$MemberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberImplToJson(
      this,
    );
  }
}

abstract class _Member implements Member {
  const factory _Member(
          {required final int memberId,
          final String? alternateNumber,
          final String? facebookUrl,
          final String? twitterUrl,
          final String? instagramUrl,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt}) =
      _$MemberImpl;

  factory _Member.fromJson(Map<String, dynamic> json) = _$MemberImpl.fromJson;

  @override
  int get memberId;
  @override
  String? get alternateNumber;
  @override
  String? get facebookUrl;
  @override
  String? get twitterUrl;
  @override
  String? get instagramUrl;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberImplCopyWith<_$MemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialDetailsError _$SocialDetailsErrorFromJson(Map<String, dynamic> json) {
  return _SocialDetailsError.fromJson(json);
}

/// @nodoc
mixin _$SocialDetailsError {
  Map<String, List<String>> get errors => throw _privateConstructorUsedError;

  /// Serializes this SocialDetailsError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocialDetailsError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialDetailsErrorCopyWith<SocialDetailsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialDetailsErrorCopyWith<$Res> {
  factory $SocialDetailsErrorCopyWith(
          SocialDetailsError value, $Res Function(SocialDetailsError) then) =
      _$SocialDetailsErrorCopyWithImpl<$Res, SocialDetailsError>;
  @useResult
  $Res call({Map<String, List<String>> errors});
}

/// @nodoc
class _$SocialDetailsErrorCopyWithImpl<$Res, $Val extends SocialDetailsError>
    implements $SocialDetailsErrorCopyWith<$Res> {
  _$SocialDetailsErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialDetailsError
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
abstract class _$$SocialDetailsErrorImplCopyWith<$Res>
    implements $SocialDetailsErrorCopyWith<$Res> {
  factory _$$SocialDetailsErrorImplCopyWith(_$SocialDetailsErrorImpl value,
          $Res Function(_$SocialDetailsErrorImpl) then) =
      __$$SocialDetailsErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, List<String>> errors});
}

/// @nodoc
class __$$SocialDetailsErrorImplCopyWithImpl<$Res>
    extends _$SocialDetailsErrorCopyWithImpl<$Res, _$SocialDetailsErrorImpl>
    implements _$$SocialDetailsErrorImplCopyWith<$Res> {
  __$$SocialDetailsErrorImplCopyWithImpl(_$SocialDetailsErrorImpl _value,
      $Res Function(_$SocialDetailsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialDetailsError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = null,
  }) {
    return _then(_$SocialDetailsErrorImpl(
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialDetailsErrorImpl implements _SocialDetailsError {
  const _$SocialDetailsErrorImpl(
      {required final Map<String, List<String>> errors})
      : _errors = errors;

  factory _$SocialDetailsErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialDetailsErrorImplFromJson(json);

  final Map<String, List<String>> _errors;
  @override
  Map<String, List<String>> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @override
  String toString() {
    return 'SocialDetailsError(errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialDetailsErrorImpl &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_errors));

  /// Create a copy of SocialDetailsError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialDetailsErrorImplCopyWith<_$SocialDetailsErrorImpl> get copyWith =>
      __$$SocialDetailsErrorImplCopyWithImpl<_$SocialDetailsErrorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialDetailsErrorImplToJson(
      this,
    );
  }
}

abstract class _SocialDetailsError implements SocialDetailsError {
  const factory _SocialDetailsError(
          {required final Map<String, List<String>> errors}) =
      _$SocialDetailsErrorImpl;

  factory _SocialDetailsError.fromJson(Map<String, dynamic> json) =
      _$SocialDetailsErrorImpl.fromJson;

  @override
  Map<String, List<String>> get errors;

  /// Create a copy of SocialDetailsError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialDetailsErrorImplCopyWith<_$SocialDetailsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
