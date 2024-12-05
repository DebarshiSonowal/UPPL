// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContactDetailsModel _$ContactDetailsModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _ContactDetailsModel.fromJson(json);
    case 'withError':
      return _ContactDetailsModelWithError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ContactDetailsModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ContactDetailsModel {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int status, String message, ContactDetailsData? data,
            ContactDetailsError? error, int code)
        $default, {
    required TResult Function(String message) withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int status, String message, ContactDetailsData? data,
            ContactDetailsError? error, int code)?
        $default, {
    TResult? Function(String message)? withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int status, String message, ContactDetailsData? data,
            ContactDetailsError? error, int code)?
        $default, {
    TResult Function(String message)? withError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ContactDetailsModel value) $default, {
    required TResult Function(_ContactDetailsModelWithError value) withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ContactDetailsModel value)? $default, {
    TResult? Function(_ContactDetailsModelWithError value)? withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ContactDetailsModel value)? $default, {
    TResult Function(_ContactDetailsModelWithError value)? withError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ContactDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactDetailsModelCopyWith<ContactDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactDetailsModelCopyWith<$Res> {
  factory $ContactDetailsModelCopyWith(
          ContactDetailsModel value, $Res Function(ContactDetailsModel) then) =
      _$ContactDetailsModelCopyWithImpl<$Res, ContactDetailsModel>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ContactDetailsModelCopyWithImpl<$Res, $Val extends ContactDetailsModel>
    implements $ContactDetailsModelCopyWith<$Res> {
  _$ContactDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactDetailsModel
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
abstract class _$$ContactDetailsModelImplCopyWith<$Res>
    implements $ContactDetailsModelCopyWith<$Res> {
  factory _$$ContactDetailsModelImplCopyWith(_$ContactDetailsModelImpl value,
          $Res Function(_$ContactDetailsModelImpl) then) =
      __$$ContactDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String message,
      ContactDetailsData? data,
      ContactDetailsError? error,
      int code});

  $ContactDetailsDataCopyWith<$Res>? get data;
  $ContactDetailsErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$ContactDetailsModelImplCopyWithImpl<$Res>
    extends _$ContactDetailsModelCopyWithImpl<$Res, _$ContactDetailsModelImpl>
    implements _$$ContactDetailsModelImplCopyWith<$Res> {
  __$$ContactDetailsModelImplCopyWithImpl(_$ContactDetailsModelImpl _value,
      $Res Function(_$ContactDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactDetailsModel
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
    return _then(_$ContactDetailsModelImpl(
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
              as ContactDetailsData?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ContactDetailsError?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of ContactDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactDetailsDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ContactDetailsDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }

  /// Create a copy of ContactDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactDetailsErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $ContactDetailsErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactDetailsModelImpl implements _ContactDetailsModel {
  const _$ContactDetailsModelImpl(
      {required this.status,
      required this.message,
      this.data,
      this.error,
      required this.code,
      final String? $type})
      : $type = $type ?? 'default';

  factory _$ContactDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactDetailsModelImplFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final ContactDetailsData? data;
  @override
  final ContactDetailsError? error;
  @override
  final int code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ContactDetailsModel(status: $status, message: $message, data: $data, error: $error, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactDetailsModelImpl &&
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

  /// Create a copy of ContactDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactDetailsModelImplCopyWith<_$ContactDetailsModelImpl> get copyWith =>
      __$$ContactDetailsModelImplCopyWithImpl<_$ContactDetailsModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int status, String message, ContactDetailsData? data,
            ContactDetailsError? error, int code)
        $default, {
    required TResult Function(String message) withError,
  }) {
    return $default(status, message, data, error, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int status, String message, ContactDetailsData? data,
            ContactDetailsError? error, int code)?
        $default, {
    TResult? Function(String message)? withError,
  }) {
    return $default?.call(status, message, data, error, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int status, String message, ContactDetailsData? data,
            ContactDetailsError? error, int code)?
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
    TResult Function(_ContactDetailsModel value) $default, {
    required TResult Function(_ContactDetailsModelWithError value) withError,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ContactDetailsModel value)? $default, {
    TResult? Function(_ContactDetailsModelWithError value)? withError,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ContactDetailsModel value)? $default, {
    TResult Function(_ContactDetailsModelWithError value)? withError,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _ContactDetailsModel implements ContactDetailsModel {
  const factory _ContactDetailsModel(
      {required final int status,
      required final String message,
      final ContactDetailsData? data,
      final ContactDetailsError? error,
      required final int code}) = _$ContactDetailsModelImpl;

  factory _ContactDetailsModel.fromJson(Map<String, dynamic> json) =
      _$ContactDetailsModelImpl.fromJson;

  int get status;
  @override
  String get message;
  ContactDetailsData? get data;
  ContactDetailsError? get error;
  int get code;

  /// Create a copy of ContactDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactDetailsModelImplCopyWith<_$ContactDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContactDetailsModelWithErrorImplCopyWith<$Res>
    implements $ContactDetailsModelCopyWith<$Res> {
  factory _$$ContactDetailsModelWithErrorImplCopyWith(
          _$ContactDetailsModelWithErrorImpl value,
          $Res Function(_$ContactDetailsModelWithErrorImpl) then) =
      __$$ContactDetailsModelWithErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ContactDetailsModelWithErrorImplCopyWithImpl<$Res>
    extends _$ContactDetailsModelCopyWithImpl<$Res,
        _$ContactDetailsModelWithErrorImpl>
    implements _$$ContactDetailsModelWithErrorImplCopyWith<$Res> {
  __$$ContactDetailsModelWithErrorImplCopyWithImpl(
      _$ContactDetailsModelWithErrorImpl _value,
      $Res Function(_$ContactDetailsModelWithErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ContactDetailsModelWithErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactDetailsModelWithErrorImpl
    implements _ContactDetailsModelWithError {
  const _$ContactDetailsModelWithErrorImpl(this.message, {final String? $type})
      : $type = $type ?? 'withError';

  factory _$ContactDetailsModelWithErrorImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ContactDetailsModelWithErrorImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ContactDetailsModel.withError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactDetailsModelWithErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ContactDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactDetailsModelWithErrorImplCopyWith<
          _$ContactDetailsModelWithErrorImpl>
      get copyWith => __$$ContactDetailsModelWithErrorImplCopyWithImpl<
          _$ContactDetailsModelWithErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int status, String message, ContactDetailsData? data,
            ContactDetailsError? error, int code)
        $default, {
    required TResult Function(String message) withError,
  }) {
    return withError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int status, String message, ContactDetailsData? data,
            ContactDetailsError? error, int code)?
        $default, {
    TResult? Function(String message)? withError,
  }) {
    return withError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int status, String message, ContactDetailsData? data,
            ContactDetailsError? error, int code)?
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
    TResult Function(_ContactDetailsModel value) $default, {
    required TResult Function(_ContactDetailsModelWithError value) withError,
  }) {
    return withError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ContactDetailsModel value)? $default, {
    TResult? Function(_ContactDetailsModelWithError value)? withError,
  }) {
    return withError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ContactDetailsModel value)? $default, {
    TResult Function(_ContactDetailsModelWithError value)? withError,
    required TResult orElse(),
  }) {
    if (withError != null) {
      return withError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactDetailsModelWithErrorImplToJson(
      this,
    );
  }
}

abstract class _ContactDetailsModelWithError implements ContactDetailsModel {
  const factory _ContactDetailsModelWithError(final String message) =
      _$ContactDetailsModelWithErrorImpl;

  factory _ContactDetailsModelWithError.fromJson(Map<String, dynamic> json) =
      _$ContactDetailsModelWithErrorImpl.fromJson;

  @override
  String get message;

  /// Create a copy of ContactDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactDetailsModelWithErrorImplCopyWith<
          _$ContactDetailsModelWithErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ContactDetailsData _$ContactDetailsDataFromJson(Map<String, dynamic> json) {
  return _ContactDetailsData.fromJson(json);
}

/// @nodoc
mixin _$ContactDetailsData {
  List<Member> get members => throw _privateConstructorUsedError;

  /// Serializes this ContactDetailsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactDetailsDataCopyWith<ContactDetailsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactDetailsDataCopyWith<$Res> {
  factory $ContactDetailsDataCopyWith(
          ContactDetailsData value, $Res Function(ContactDetailsData) then) =
      _$ContactDetailsDataCopyWithImpl<$Res, ContactDetailsData>;
  @useResult
  $Res call({List<Member> members});
}

/// @nodoc
class _$ContactDetailsDataCopyWithImpl<$Res, $Val extends ContactDetailsData>
    implements $ContactDetailsDataCopyWith<$Res> {
  _$ContactDetailsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactDetailsData
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
abstract class _$$ContactDetailsDataImplCopyWith<$Res>
    implements $ContactDetailsDataCopyWith<$Res> {
  factory _$$ContactDetailsDataImplCopyWith(_$ContactDetailsDataImpl value,
          $Res Function(_$ContactDetailsDataImpl) then) =
      __$$ContactDetailsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Member> members});
}

/// @nodoc
class __$$ContactDetailsDataImplCopyWithImpl<$Res>
    extends _$ContactDetailsDataCopyWithImpl<$Res, _$ContactDetailsDataImpl>
    implements _$$ContactDetailsDataImplCopyWith<$Res> {
  __$$ContactDetailsDataImplCopyWithImpl(_$ContactDetailsDataImpl _value,
      $Res Function(_$ContactDetailsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? members = null,
  }) {
    return _then(_$ContactDetailsDataImpl(
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactDetailsDataImpl implements _ContactDetailsData {
  const _$ContactDetailsDataImpl({required final List<Member> members})
      : _members = members;

  factory _$ContactDetailsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactDetailsDataImplFromJson(json);

  final List<Member> _members;
  @override
  List<Member> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'ContactDetailsData(members: $members)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactDetailsDataImpl &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_members));

  /// Create a copy of ContactDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactDetailsDataImplCopyWith<_$ContactDetailsDataImpl> get copyWith =>
      __$$ContactDetailsDataImplCopyWithImpl<_$ContactDetailsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactDetailsDataImplToJson(
      this,
    );
  }
}

abstract class _ContactDetailsData implements ContactDetailsData {
  const factory _ContactDetailsData({required final List<Member> members}) =
      _$ContactDetailsDataImpl;

  factory _ContactDetailsData.fromJson(Map<String, dynamic> json) =
      _$ContactDetailsDataImpl.fromJson;

  @override
  List<Member> get members;

  /// Create a copy of ContactDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactDetailsDataImplCopyWith<_$ContactDetailsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Member _$MemberFromJson(Map<String, dynamic> json) {
  return _Member.fromJson(json);
}

/// @nodoc
mixin _$Member {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ref_id')
  int? get refId => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_ref_code')
  String? get oldRefCode => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get pinCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'btc_assembly_constituency_id')
  int? get btcAssemblyConstituencyId => throw _privateConstructorUsedError;
  int? get btcConstituency => throw _privateConstructorUsedError;
  @JsonKey(name: 'party_district')
  int? get partyDistrict => throw _privateConstructorUsedError;
  int? get assemblyConstituency => throw _privateConstructorUsedError;
  String? get primaryId => throw _privateConstructorUsedError;
  String? get boothId => throw _privateConstructorUsedError;
  String? get villageId => throw _privateConstructorUsedError;
  int? get createdBy => throw _privateConstructorUsedError;
  int? get updateCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  String? get village => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'district_id')
  int? get districtId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_no')
  String get mobileNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_no')
  String get membershipNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'ref_code')
  String get refCode => throw _privateConstructorUsedError;
  int? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String? get country => throw _privateConstructorUsedError;

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
      {int id,
      int userId,
      @JsonKey(name: 'ref_id') int? refId,
      @JsonKey(name: 'old_ref_code') String? oldRefCode,
      String? title,
      String? address,
      String? pinCode,
      @JsonKey(name: 'btc_assembly_constituency_id')
      int? btcAssemblyConstituencyId,
      int? btcConstituency,
      @JsonKey(name: 'party_district') int? partyDistrict,
      int? assemblyConstituency,
      String? primaryId,
      String? boothId,
      String? villageId,
      int? createdBy,
      int? updateCount,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      String? village,
      String? photo,
      String? district,
      @JsonKey(name: 'district_id') int? districtId,
      String name,
      @JsonKey(name: 'mobile_no') String mobileNo,
      @JsonKey(name: 'membership_no') String membershipNo,
      @JsonKey(name: 'ref_code') String refCode,
      int? gender,
      @JsonKey(name: 'date_of_birth') String dateOfBirth,
      String? email,
      @JsonKey(name: 'country') String? country});
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
    Object? id = null,
    Object? userId = null,
    Object? refId = freezed,
    Object? oldRefCode = freezed,
    Object? title = freezed,
    Object? address = freezed,
    Object? pinCode = freezed,
    Object? btcAssemblyConstituencyId = freezed,
    Object? btcConstituency = freezed,
    Object? partyDistrict = freezed,
    Object? assemblyConstituency = freezed,
    Object? primaryId = freezed,
    Object? boothId = freezed,
    Object? villageId = freezed,
    Object? createdBy = freezed,
    Object? updateCount = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? village = freezed,
    Object? photo = freezed,
    Object? district = freezed,
    Object? districtId = freezed,
    Object? name = null,
    Object? mobileNo = null,
    Object? membershipNo = null,
    Object? refCode = null,
    Object? gender = freezed,
    Object? dateOfBirth = null,
    Object? email = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      refId: freezed == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as int?,
      oldRefCode: freezed == oldRefCode
          ? _value.oldRefCode
          : oldRefCode // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String?,
      btcAssemblyConstituencyId: freezed == btcAssemblyConstituencyId
          ? _value.btcAssemblyConstituencyId
          : btcAssemblyConstituencyId // ignore: cast_nullable_to_non_nullable
              as int?,
      btcConstituency: freezed == btcConstituency
          ? _value.btcConstituency
          : btcConstituency // ignore: cast_nullable_to_non_nullable
              as int?,
      partyDistrict: freezed == partyDistrict
          ? _value.partyDistrict
          : partyDistrict // ignore: cast_nullable_to_non_nullable
              as int?,
      assemblyConstituency: freezed == assemblyConstituency
          ? _value.assemblyConstituency
          : assemblyConstituency // ignore: cast_nullable_to_non_nullable
              as int?,
      primaryId: freezed == primaryId
          ? _value.primaryId
          : primaryId // ignore: cast_nullable_to_non_nullable
              as String?,
      boothId: freezed == boothId
          ? _value.boothId
          : boothId // ignore: cast_nullable_to_non_nullable
              as String?,
      villageId: freezed == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      updateCount: freezed == updateCount
          ? _value.updateCount
          : updateCount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      village: freezed == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNo: null == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String,
      membershipNo: null == membershipNo
          ? _value.membershipNo
          : membershipNo // ignore: cast_nullable_to_non_nullable
              as String,
      refCode: null == refCode
          ? _value.refCode
          : refCode // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {int id,
      int userId,
      @JsonKey(name: 'ref_id') int? refId,
      @JsonKey(name: 'old_ref_code') String? oldRefCode,
      String? title,
      String? address,
      String? pinCode,
      @JsonKey(name: 'btc_assembly_constituency_id')
      int? btcAssemblyConstituencyId,
      int? btcConstituency,
      @JsonKey(name: 'party_district') int? partyDistrict,
      int? assemblyConstituency,
      String? primaryId,
      String? boothId,
      String? villageId,
      int? createdBy,
      int? updateCount,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      String? village,
      String? photo,
      String? district,
      @JsonKey(name: 'district_id') int? districtId,
      String name,
      @JsonKey(name: 'mobile_no') String mobileNo,
      @JsonKey(name: 'membership_no') String membershipNo,
      @JsonKey(name: 'ref_code') String refCode,
      int? gender,
      @JsonKey(name: 'date_of_birth') String dateOfBirth,
      String? email,
      @JsonKey(name: 'country') String? country});
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
    Object? id = null,
    Object? userId = null,
    Object? refId = freezed,
    Object? oldRefCode = freezed,
    Object? title = freezed,
    Object? address = freezed,
    Object? pinCode = freezed,
    Object? btcAssemblyConstituencyId = freezed,
    Object? btcConstituency = freezed,
    Object? partyDistrict = freezed,
    Object? assemblyConstituency = freezed,
    Object? primaryId = freezed,
    Object? boothId = freezed,
    Object? villageId = freezed,
    Object? createdBy = freezed,
    Object? updateCount = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? village = freezed,
    Object? photo = freezed,
    Object? district = freezed,
    Object? districtId = freezed,
    Object? name = null,
    Object? mobileNo = null,
    Object? membershipNo = null,
    Object? refCode = null,
    Object? gender = freezed,
    Object? dateOfBirth = null,
    Object? email = freezed,
    Object? country = freezed,
  }) {
    return _then(_$MemberImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      refId: freezed == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as int?,
      oldRefCode: freezed == oldRefCode
          ? _value.oldRefCode
          : oldRefCode // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String?,
      btcAssemblyConstituencyId: freezed == btcAssemblyConstituencyId
          ? _value.btcAssemblyConstituencyId
          : btcAssemblyConstituencyId // ignore: cast_nullable_to_non_nullable
              as int?,
      btcConstituency: freezed == btcConstituency
          ? _value.btcConstituency
          : btcConstituency // ignore: cast_nullable_to_non_nullable
              as int?,
      partyDistrict: freezed == partyDistrict
          ? _value.partyDistrict
          : partyDistrict // ignore: cast_nullable_to_non_nullable
              as int?,
      assemblyConstituency: freezed == assemblyConstituency
          ? _value.assemblyConstituency
          : assemblyConstituency // ignore: cast_nullable_to_non_nullable
              as int?,
      primaryId: freezed == primaryId
          ? _value.primaryId
          : primaryId // ignore: cast_nullable_to_non_nullable
              as String?,
      boothId: freezed == boothId
          ? _value.boothId
          : boothId // ignore: cast_nullable_to_non_nullable
              as String?,
      villageId: freezed == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      updateCount: freezed == updateCount
          ? _value.updateCount
          : updateCount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      village: freezed == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNo: null == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String,
      membershipNo: null == membershipNo
          ? _value.membershipNo
          : membershipNo // ignore: cast_nullable_to_non_nullable
              as String,
      refCode: null == refCode
          ? _value.refCode
          : refCode // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberImpl implements _Member {
  const _$MemberImpl(
      {required this.id,
      required this.userId,
      @JsonKey(name: 'ref_id') this.refId,
      @JsonKey(name: 'old_ref_code') this.oldRefCode,
      this.title,
      this.address,
      this.pinCode,
      @JsonKey(name: 'btc_assembly_constituency_id')
      this.btcAssemblyConstituencyId,
      this.btcConstituency,
      @JsonKey(name: 'party_district') this.partyDistrict,
      this.assemblyConstituency,
      this.primaryId,
      this.boothId,
      this.villageId,
      this.createdBy,
      this.updateCount,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      this.village,
      this.photo,
      this.district,
      @JsonKey(name: 'district_id') this.districtId,
      required this.name,
      @JsonKey(name: 'mobile_no') required this.mobileNo,
      @JsonKey(name: 'membership_no') required this.membershipNo,
      @JsonKey(name: 'ref_code') required this.refCode,
      this.gender,
      @JsonKey(name: 'date_of_birth') required this.dateOfBirth,
      this.email,
      @JsonKey(name: 'country') this.country});

  factory _$MemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  @JsonKey(name: 'ref_id')
  final int? refId;
  @override
  @JsonKey(name: 'old_ref_code')
  final String? oldRefCode;
  @override
  final String? title;
  @override
  final String? address;
  @override
  final String? pinCode;
  @override
  @JsonKey(name: 'btc_assembly_constituency_id')
  final int? btcAssemblyConstituencyId;
  @override
  final int? btcConstituency;
  @override
  @JsonKey(name: 'party_district')
  final int? partyDistrict;
  @override
  final int? assemblyConstituency;
  @override
  final String? primaryId;
  @override
  final String? boothId;
  @override
  final String? villageId;
  @override
  final int? createdBy;
  @override
  final int? updateCount;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  final String? village;
  @override
  final String? photo;
  @override
  final String? district;
  @override
  @JsonKey(name: 'district_id')
  final int? districtId;
  @override
  final String name;
  @override
  @JsonKey(name: 'mobile_no')
  final String mobileNo;
  @override
  @JsonKey(name: 'membership_no')
  final String membershipNo;
  @override
  @JsonKey(name: 'ref_code')
  final String refCode;
  @override
  final int? gender;
  @override
  @JsonKey(name: 'date_of_birth')
  final String dateOfBirth;
  @override
  final String? email;
  @override
  @JsonKey(name: 'country')
  final String? country;

  @override
  String toString() {
    return 'Member(id: $id, userId: $userId, refId: $refId, oldRefCode: $oldRefCode, title: $title, address: $address, pinCode: $pinCode, btcAssemblyConstituencyId: $btcAssemblyConstituencyId, btcConstituency: $btcConstituency, partyDistrict: $partyDistrict, assemblyConstituency: $assemblyConstituency, primaryId: $primaryId, boothId: $boothId, villageId: $villageId, createdBy: $createdBy, updateCount: $updateCount, createdAt: $createdAt, updatedAt: $updatedAt, village: $village, photo: $photo, district: $district, districtId: $districtId, name: $name, mobileNo: $mobileNo, membershipNo: $membershipNo, refCode: $refCode, gender: $gender, dateOfBirth: $dateOfBirth, email: $email, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.refId, refId) || other.refId == refId) &&
            (identical(other.oldRefCode, oldRefCode) ||
                other.oldRefCode == oldRefCode) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.btcAssemblyConstituencyId,
                    btcAssemblyConstituencyId) ||
                other.btcAssemblyConstituencyId == btcAssemblyConstituencyId) &&
            (identical(other.btcConstituency, btcConstituency) ||
                other.btcConstituency == btcConstituency) &&
            (identical(other.partyDistrict, partyDistrict) ||
                other.partyDistrict == partyDistrict) &&
            (identical(other.assemblyConstituency, assemblyConstituency) ||
                other.assemblyConstituency == assemblyConstituency) &&
            (identical(other.primaryId, primaryId) ||
                other.primaryId == primaryId) &&
            (identical(other.boothId, boothId) || other.boothId == boothId) &&
            (identical(other.villageId, villageId) ||
                other.villageId == villageId) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updateCount, updateCount) ||
                other.updateCount == updateCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.village, village) || other.village == village) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.districtId, districtId) ||
                other.districtId == districtId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo) &&
            (identical(other.membershipNo, membershipNo) ||
                other.membershipNo == membershipNo) &&
            (identical(other.refCode, refCode) || other.refCode == refCode) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        refId,
        oldRefCode,
        title,
        address,
        pinCode,
        btcAssemblyConstituencyId,
        btcConstituency,
        partyDistrict,
        assemblyConstituency,
        primaryId,
        boothId,
        villageId,
        createdBy,
        updateCount,
        createdAt,
        updatedAt,
        village,
        photo,
        district,
        districtId,
        name,
        mobileNo,
        membershipNo,
        refCode,
        gender,
        dateOfBirth,
        email,
        country
      ]);

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
      {required final int id,
      required final int userId,
      @JsonKey(name: 'ref_id') final int? refId,
      @JsonKey(name: 'old_ref_code') final String? oldRefCode,
      final String? title,
      final String? address,
      final String? pinCode,
      @JsonKey(name: 'btc_assembly_constituency_id')
      final int? btcAssemblyConstituencyId,
      final int? btcConstituency,
      @JsonKey(name: 'party_district') final int? partyDistrict,
      final int? assemblyConstituency,
      final String? primaryId,
      final String? boothId,
      final String? villageId,
      final int? createdBy,
      final int? updateCount,
      @JsonKey(name: 'created_at') required final String createdAt,
      @JsonKey(name: 'updated_at') required final String updatedAt,
      final String? village,
      final String? photo,
      final String? district,
      @JsonKey(name: 'district_id') final int? districtId,
      required final String name,
      @JsonKey(name: 'mobile_no') required final String mobileNo,
      @JsonKey(name: 'membership_no') required final String membershipNo,
      @JsonKey(name: 'ref_code') required final String refCode,
      final int? gender,
      @JsonKey(name: 'date_of_birth') required final String dateOfBirth,
      final String? email,
      @JsonKey(name: 'country') final String? country}) = _$MemberImpl;

  factory _Member.fromJson(Map<String, dynamic> json) = _$MemberImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  @JsonKey(name: 'ref_id')
  int? get refId;
  @override
  @JsonKey(name: 'old_ref_code')
  String? get oldRefCode;
  @override
  String? get title;
  @override
  String? get address;
  @override
  String? get pinCode;
  @override
  @JsonKey(name: 'btc_assembly_constituency_id')
  int? get btcAssemblyConstituencyId;
  @override
  int? get btcConstituency;
  @override
  @JsonKey(name: 'party_district')
  int? get partyDistrict;
  @override
  int? get assemblyConstituency;
  @override
  String? get primaryId;
  @override
  String? get boothId;
  @override
  String? get villageId;
  @override
  int? get createdBy;
  @override
  int? get updateCount;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  String? get village;
  @override
  String? get photo;
  @override
  String? get district;
  @override
  @JsonKey(name: 'district_id')
  int? get districtId;
  @override
  String get name;
  @override
  @JsonKey(name: 'mobile_no')
  String get mobileNo;
  @override
  @JsonKey(name: 'membership_no')
  String get membershipNo;
  @override
  @JsonKey(name: 'ref_code')
  String get refCode;
  @override
  int? get gender;
  @override
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth;
  @override
  String? get email;
  @override
  @JsonKey(name: 'country')
  String? get country;

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberImplCopyWith<_$MemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContactDetailsError _$ContactDetailsErrorFromJson(Map<String, dynamic> json) {
  return _ContactDetailsError.fromJson(json);
}

/// @nodoc
mixin _$ContactDetailsError {
  Map<String, List<String>> get errors => throw _privateConstructorUsedError;

  /// Serializes this ContactDetailsError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactDetailsError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactDetailsErrorCopyWith<ContactDetailsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactDetailsErrorCopyWith<$Res> {
  factory $ContactDetailsErrorCopyWith(
          ContactDetailsError value, $Res Function(ContactDetailsError) then) =
      _$ContactDetailsErrorCopyWithImpl<$Res, ContactDetailsError>;
  @useResult
  $Res call({Map<String, List<String>> errors});
}

/// @nodoc
class _$ContactDetailsErrorCopyWithImpl<$Res, $Val extends ContactDetailsError>
    implements $ContactDetailsErrorCopyWith<$Res> {
  _$ContactDetailsErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactDetailsError
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
abstract class _$$ContactDetailsErrorImplCopyWith<$Res>
    implements $ContactDetailsErrorCopyWith<$Res> {
  factory _$$ContactDetailsErrorImplCopyWith(_$ContactDetailsErrorImpl value,
          $Res Function(_$ContactDetailsErrorImpl) then) =
      __$$ContactDetailsErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, List<String>> errors});
}

/// @nodoc
class __$$ContactDetailsErrorImplCopyWithImpl<$Res>
    extends _$ContactDetailsErrorCopyWithImpl<$Res, _$ContactDetailsErrorImpl>
    implements _$$ContactDetailsErrorImplCopyWith<$Res> {
  __$$ContactDetailsErrorImplCopyWithImpl(_$ContactDetailsErrorImpl _value,
      $Res Function(_$ContactDetailsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactDetailsError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = null,
  }) {
    return _then(_$ContactDetailsErrorImpl(
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactDetailsErrorImpl implements _ContactDetailsError {
  const _$ContactDetailsErrorImpl(
      {required final Map<String, List<String>> errors})
      : _errors = errors;

  factory _$ContactDetailsErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactDetailsErrorImplFromJson(json);

  final Map<String, List<String>> _errors;
  @override
  Map<String, List<String>> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @override
  String toString() {
    return 'ContactDetailsError(errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactDetailsErrorImpl &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_errors));

  /// Create a copy of ContactDetailsError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactDetailsErrorImplCopyWith<_$ContactDetailsErrorImpl> get copyWith =>
      __$$ContactDetailsErrorImplCopyWithImpl<_$ContactDetailsErrorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactDetailsErrorImplToJson(
      this,
    );
  }
}

abstract class _ContactDetailsError implements ContactDetailsError {
  const factory _ContactDetailsError(
          {required final Map<String, List<String>> errors}) =
      _$ContactDetailsErrorImpl;

  factory _ContactDetailsError.fromJson(Map<String, dynamic> json) =
      _$ContactDetailsErrorImpl.fromJson;

  @override
  Map<String, List<String>> get errors;

  /// Create a copy of ContactDetailsError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactDetailsErrorImplCopyWith<_$ContactDetailsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
