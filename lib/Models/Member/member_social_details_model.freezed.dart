// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_social_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MemberSocialDetailsModel _$MemberSocialDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _MemberSocialDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$MemberSocialDetailsModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  MemberSocialDetailsData get data => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  /// Serializes this MemberSocialDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberSocialDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberSocialDetailsModelCopyWith<MemberSocialDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberSocialDetailsModelCopyWith<$Res> {
  factory $MemberSocialDetailsModelCopyWith(MemberSocialDetailsModel value,
          $Res Function(MemberSocialDetailsModel) then) =
      _$MemberSocialDetailsModelCopyWithImpl<$Res, MemberSocialDetailsModel>;
  @useResult
  $Res call(
      {int status, String message, MemberSocialDetailsData data, int code});

  $MemberSocialDetailsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$MemberSocialDetailsModelCopyWithImpl<$Res,
        $Val extends MemberSocialDetailsModel>
    implements $MemberSocialDetailsModelCopyWith<$Res> {
  _$MemberSocialDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberSocialDetailsModel
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
              as MemberSocialDetailsData,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of MemberSocialDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberSocialDetailsDataCopyWith<$Res> get data {
    return $MemberSocialDetailsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemberSocialDetailsModelImplCopyWith<$Res>
    implements $MemberSocialDetailsModelCopyWith<$Res> {
  factory _$$MemberSocialDetailsModelImplCopyWith(
          _$MemberSocialDetailsModelImpl value,
          $Res Function(_$MemberSocialDetailsModelImpl) then) =
      __$$MemberSocialDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status, String message, MemberSocialDetailsData data, int code});

  @override
  $MemberSocialDetailsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$MemberSocialDetailsModelImplCopyWithImpl<$Res>
    extends _$MemberSocialDetailsModelCopyWithImpl<$Res,
        _$MemberSocialDetailsModelImpl>
    implements _$$MemberSocialDetailsModelImplCopyWith<$Res> {
  __$$MemberSocialDetailsModelImplCopyWithImpl(
      _$MemberSocialDetailsModelImpl _value,
      $Res Function(_$MemberSocialDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberSocialDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
    Object? code = null,
  }) {
    return _then(_$MemberSocialDetailsModelImpl(
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
              as MemberSocialDetailsData,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberSocialDetailsModelImpl implements _MemberSocialDetailsModel {
  const _$MemberSocialDetailsModelImpl(
      {required this.status,
      required this.message,
      required this.data,
      required this.code});

  factory _$MemberSocialDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberSocialDetailsModelImplFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final MemberSocialDetailsData data;
  @override
  final int code;

  @override
  String toString() {
    return 'MemberSocialDetailsModel(status: $status, message: $message, data: $data, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberSocialDetailsModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data, code);

  /// Create a copy of MemberSocialDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberSocialDetailsModelImplCopyWith<_$MemberSocialDetailsModelImpl>
      get copyWith => __$$MemberSocialDetailsModelImplCopyWithImpl<
          _$MemberSocialDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberSocialDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _MemberSocialDetailsModel implements MemberSocialDetailsModel {
  const factory _MemberSocialDetailsModel(
      {required final int status,
      required final String message,
      required final MemberSocialDetailsData data,
      required final int code}) = _$MemberSocialDetailsModelImpl;

  factory _MemberSocialDetailsModel.fromJson(Map<String, dynamic> json) =
      _$MemberSocialDetailsModelImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  MemberSocialDetailsData get data;
  @override
  int get code;

  /// Create a copy of MemberSocialDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberSocialDetailsModelImplCopyWith<_$MemberSocialDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MemberSocialDetailsData _$MemberSocialDetailsDataFromJson(
    Map<String, dynamic> json) {
  return _MemberSocialDetailsData.fromJson(json);
}

/// @nodoc
mixin _$MemberSocialDetailsData {
  List<MemberSocialDetails> get member => throw _privateConstructorUsedError;
  Map<String, String>? get errors => throw _privateConstructorUsedError;

  /// Serializes this MemberSocialDetailsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberSocialDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberSocialDetailsDataCopyWith<MemberSocialDetailsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberSocialDetailsDataCopyWith<$Res> {
  factory $MemberSocialDetailsDataCopyWith(MemberSocialDetailsData value,
          $Res Function(MemberSocialDetailsData) then) =
      _$MemberSocialDetailsDataCopyWithImpl<$Res, MemberSocialDetailsData>;
  @useResult
  $Res call({List<MemberSocialDetails> member, Map<String, String>? errors});
}

/// @nodoc
class _$MemberSocialDetailsDataCopyWithImpl<$Res,
        $Val extends MemberSocialDetailsData>
    implements $MemberSocialDetailsDataCopyWith<$Res> {
  _$MemberSocialDetailsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberSocialDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? member = null,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as List<MemberSocialDetails>,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberSocialDetailsDataImplCopyWith<$Res>
    implements $MemberSocialDetailsDataCopyWith<$Res> {
  factory _$$MemberSocialDetailsDataImplCopyWith(
          _$MemberSocialDetailsDataImpl value,
          $Res Function(_$MemberSocialDetailsDataImpl) then) =
      __$$MemberSocialDetailsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MemberSocialDetails> member, Map<String, String>? errors});
}

/// @nodoc
class __$$MemberSocialDetailsDataImplCopyWithImpl<$Res>
    extends _$MemberSocialDetailsDataCopyWithImpl<$Res,
        _$MemberSocialDetailsDataImpl>
    implements _$$MemberSocialDetailsDataImplCopyWith<$Res> {
  __$$MemberSocialDetailsDataImplCopyWithImpl(
      _$MemberSocialDetailsDataImpl _value,
      $Res Function(_$MemberSocialDetailsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberSocialDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? member = null,
    Object? errors = freezed,
  }) {
    return _then(_$MemberSocialDetailsDataImpl(
      member: null == member
          ? _value._member
          : member // ignore: cast_nullable_to_non_nullable
              as List<MemberSocialDetails>,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberSocialDetailsDataImpl implements _MemberSocialDetailsData {
  const _$MemberSocialDetailsDataImpl(
      {required final List<MemberSocialDetails> member,
      final Map<String, String>? errors})
      : _member = member,
        _errors = errors;

  factory _$MemberSocialDetailsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberSocialDetailsDataImplFromJson(json);

  final List<MemberSocialDetails> _member;
  @override
  List<MemberSocialDetails> get member {
    if (_member is EqualUnmodifiableListView) return _member;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_member);
  }

  final Map<String, String>? _errors;
  @override
  Map<String, String>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MemberSocialDetailsData(member: $member, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberSocialDetailsDataImpl &&
            const DeepCollectionEquality().equals(other._member, _member) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_member),
      const DeepCollectionEquality().hash(_errors));

  /// Create a copy of MemberSocialDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberSocialDetailsDataImplCopyWith<_$MemberSocialDetailsDataImpl>
      get copyWith => __$$MemberSocialDetailsDataImplCopyWithImpl<
          _$MemberSocialDetailsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberSocialDetailsDataImplToJson(
      this,
    );
  }
}

abstract class _MemberSocialDetailsData implements MemberSocialDetailsData {
  const factory _MemberSocialDetailsData(
      {required final List<MemberSocialDetails> member,
      final Map<String, String>? errors}) = _$MemberSocialDetailsDataImpl;

  factory _MemberSocialDetailsData.fromJson(Map<String, dynamic> json) =
      _$MemberSocialDetailsDataImpl.fromJson;

  @override
  List<MemberSocialDetails> get member;
  @override
  Map<String, String>? get errors;

  /// Create a copy of MemberSocialDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberSocialDetailsDataImplCopyWith<_$MemberSocialDetailsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MemberSocialDetails _$MemberSocialDetailsFromJson(Map<String, dynamic> json) {
  return _MemberSocialDetails.fromJson(json);
}

/// @nodoc
mixin _$MemberSocialDetails {
  @JsonKey(name: 'member_id')
  int get memberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'aleternate_number')
  String? get alternateNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'facebook_url')
  String? get facebookUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'twitter_url')
  String? get twitterUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'instagram_url')
  String? get instagramUrl => throw _privateConstructorUsedError;

  /// Serializes this MemberSocialDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberSocialDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberSocialDetailsCopyWith<MemberSocialDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberSocialDetailsCopyWith<$Res> {
  factory $MemberSocialDetailsCopyWith(
          MemberSocialDetails value, $Res Function(MemberSocialDetails) then) =
      _$MemberSocialDetailsCopyWithImpl<$Res, MemberSocialDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'member_id') int memberId,
      @JsonKey(name: 'aleternate_number') String? alternateNumber,
      @JsonKey(name: 'facebook_url') String? facebookUrl,
      @JsonKey(name: 'twitter_url') String? twitterUrl,
      @JsonKey(name: 'instagram_url') String? instagramUrl});
}

/// @nodoc
class _$MemberSocialDetailsCopyWithImpl<$Res, $Val extends MemberSocialDetails>
    implements $MemberSocialDetailsCopyWith<$Res> {
  _$MemberSocialDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberSocialDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? alternateNumber = freezed,
    Object? facebookUrl = freezed,
    Object? twitterUrl = freezed,
    Object? instagramUrl = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberSocialDetailsImplCopyWith<$Res>
    implements $MemberSocialDetailsCopyWith<$Res> {
  factory _$$MemberSocialDetailsImplCopyWith(_$MemberSocialDetailsImpl value,
          $Res Function(_$MemberSocialDetailsImpl) then) =
      __$$MemberSocialDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'member_id') int memberId,
      @JsonKey(name: 'aleternate_number') String? alternateNumber,
      @JsonKey(name: 'facebook_url') String? facebookUrl,
      @JsonKey(name: 'twitter_url') String? twitterUrl,
      @JsonKey(name: 'instagram_url') String? instagramUrl});
}

/// @nodoc
class __$$MemberSocialDetailsImplCopyWithImpl<$Res>
    extends _$MemberSocialDetailsCopyWithImpl<$Res, _$MemberSocialDetailsImpl>
    implements _$$MemberSocialDetailsImplCopyWith<$Res> {
  __$$MemberSocialDetailsImplCopyWithImpl(_$MemberSocialDetailsImpl _value,
      $Res Function(_$MemberSocialDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberSocialDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? alternateNumber = freezed,
    Object? facebookUrl = freezed,
    Object? twitterUrl = freezed,
    Object? instagramUrl = freezed,
  }) {
    return _then(_$MemberSocialDetailsImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberSocialDetailsImpl implements _MemberSocialDetails {
  const _$MemberSocialDetailsImpl(
      {@JsonKey(name: 'member_id') required this.memberId,
      @JsonKey(name: 'aleternate_number') this.alternateNumber,
      @JsonKey(name: 'facebook_url') this.facebookUrl,
      @JsonKey(name: 'twitter_url') this.twitterUrl,
      @JsonKey(name: 'instagram_url') this.instagramUrl});

  factory _$MemberSocialDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberSocialDetailsImplFromJson(json);

  @override
  @JsonKey(name: 'member_id')
  final int memberId;
  @override
  @JsonKey(name: 'aleternate_number')
  final String? alternateNumber;
  @override
  @JsonKey(name: 'facebook_url')
  final String? facebookUrl;
  @override
  @JsonKey(name: 'twitter_url')
  final String? twitterUrl;
  @override
  @JsonKey(name: 'instagram_url')
  final String? instagramUrl;

  @override
  String toString() {
    return 'MemberSocialDetails(memberId: $memberId, alternateNumber: $alternateNumber, facebookUrl: $facebookUrl, twitterUrl: $twitterUrl, instagramUrl: $instagramUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberSocialDetailsImpl &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.alternateNumber, alternateNumber) ||
                other.alternateNumber == alternateNumber) &&
            (identical(other.facebookUrl, facebookUrl) ||
                other.facebookUrl == facebookUrl) &&
            (identical(other.twitterUrl, twitterUrl) ||
                other.twitterUrl == twitterUrl) &&
            (identical(other.instagramUrl, instagramUrl) ||
                other.instagramUrl == instagramUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, memberId, alternateNumber,
      facebookUrl, twitterUrl, instagramUrl);

  /// Create a copy of MemberSocialDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberSocialDetailsImplCopyWith<_$MemberSocialDetailsImpl> get copyWith =>
      __$$MemberSocialDetailsImplCopyWithImpl<_$MemberSocialDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberSocialDetailsImplToJson(
      this,
    );
  }
}

abstract class _MemberSocialDetails implements MemberSocialDetails {
  const factory _MemberSocialDetails(
          {@JsonKey(name: 'member_id') required final int memberId,
          @JsonKey(name: 'aleternate_number') final String? alternateNumber,
          @JsonKey(name: 'facebook_url') final String? facebookUrl,
          @JsonKey(name: 'twitter_url') final String? twitterUrl,
          @JsonKey(name: 'instagram_url') final String? instagramUrl}) =
      _$MemberSocialDetailsImpl;

  factory _MemberSocialDetails.fromJson(Map<String, dynamic> json) =
      _$MemberSocialDetailsImpl.fromJson;

  @override
  @JsonKey(name: 'member_id')
  int get memberId;
  @override
  @JsonKey(name: 'aleternate_number')
  String? get alternateNumber;
  @override
  @JsonKey(name: 'facebook_url')
  String? get facebookUrl;
  @override
  @JsonKey(name: 'twitter_url')
  String? get twitterUrl;
  @override
  @JsonKey(name: 'instagram_url')
  String? get instagramUrl;

  /// Create a copy of MemberSocialDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberSocialDetailsImplCopyWith<_$MemberSocialDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
