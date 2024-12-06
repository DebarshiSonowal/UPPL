// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'joined_by_referral_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JoinedByReferralModel _$JoinedByReferralModelFromJson(
    Map<String, dynamic> json) {
  return _JoinedByReferralModel.fromJson(json);
}

/// @nodoc
mixin _$JoinedByReferralModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  JoinedByReferralData? get data => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  /// Serializes this JoinedByReferralModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JoinedByReferralModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JoinedByReferralModelCopyWith<JoinedByReferralModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinedByReferralModelCopyWith<$Res> {
  factory $JoinedByReferralModelCopyWith(JoinedByReferralModel value,
          $Res Function(JoinedByReferralModel) then) =
      _$JoinedByReferralModelCopyWithImpl<$Res, JoinedByReferralModel>;
  @useResult
  $Res call({int status, String message, JoinedByReferralData? data, int code});

  $JoinedByReferralDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$JoinedByReferralModelCopyWithImpl<$Res,
        $Val extends JoinedByReferralModel>
    implements $JoinedByReferralModelCopyWith<$Res> {
  _$JoinedByReferralModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoinedByReferralModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
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
              as JoinedByReferralData?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of JoinedByReferralModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JoinedByReferralDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $JoinedByReferralDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JoinedByReferralModelImplCopyWith<$Res>
    implements $JoinedByReferralModelCopyWith<$Res> {
  factory _$$JoinedByReferralModelImplCopyWith(
          _$JoinedByReferralModelImpl value,
          $Res Function(_$JoinedByReferralModelImpl) then) =
      __$$JoinedByReferralModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, JoinedByReferralData? data, int code});

  @override
  $JoinedByReferralDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$JoinedByReferralModelImplCopyWithImpl<$Res>
    extends _$JoinedByReferralModelCopyWithImpl<$Res,
        _$JoinedByReferralModelImpl>
    implements _$$JoinedByReferralModelImplCopyWith<$Res> {
  __$$JoinedByReferralModelImplCopyWithImpl(_$JoinedByReferralModelImpl _value,
      $Res Function(_$JoinedByReferralModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinedByReferralModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
    Object? code = null,
  }) {
    return _then(_$JoinedByReferralModelImpl(
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
              as JoinedByReferralData?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JoinedByReferralModelImpl implements _JoinedByReferralModel {
  const _$JoinedByReferralModelImpl(
      {required this.status,
      required this.message,
      this.data,
      required this.code});

  factory _$JoinedByReferralModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinedByReferralModelImplFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final JoinedByReferralData? data;
  @override
  final int code;

  @override
  String toString() {
    return 'JoinedByReferralModel(status: $status, message: $message, data: $data, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinedByReferralModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data, code);

  /// Create a copy of JoinedByReferralModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinedByReferralModelImplCopyWith<_$JoinedByReferralModelImpl>
      get copyWith => __$$JoinedByReferralModelImplCopyWithImpl<
          _$JoinedByReferralModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinedByReferralModelImplToJson(
      this,
    );
  }
}

abstract class _JoinedByReferralModel implements JoinedByReferralModel {
  const factory _JoinedByReferralModel(
      {required final int status,
      required final String message,
      final JoinedByReferralData? data,
      required final int code}) = _$JoinedByReferralModelImpl;

  factory _JoinedByReferralModel.fromJson(Map<String, dynamic> json) =
      _$JoinedByReferralModelImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  JoinedByReferralData? get data;
  @override
  int get code;

  /// Create a copy of JoinedByReferralModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinedByReferralModelImplCopyWith<_$JoinedByReferralModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

JoinedByReferralData _$JoinedByReferralDataFromJson(Map<String, dynamic> json) {
  return _JoinedByReferralData.fromJson(json);
}

/// @nodoc
mixin _$JoinedByReferralData {
  int get draw => throw _privateConstructorUsedError;
  @JsonKey(name: 'recordsTotal')
  int get recordsTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'recordsFiltered')
  int get recordsFiltered => throw _privateConstructorUsedError;
  List<JoinedByReferralMember> get data => throw _privateConstructorUsedError;

  /// Serializes this JoinedByReferralData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JoinedByReferralData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JoinedByReferralDataCopyWith<JoinedByReferralData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinedByReferralDataCopyWith<$Res> {
  factory $JoinedByReferralDataCopyWith(JoinedByReferralData value,
          $Res Function(JoinedByReferralData) then) =
      _$JoinedByReferralDataCopyWithImpl<$Res, JoinedByReferralData>;
  @useResult
  $Res call(
      {int draw,
      @JsonKey(name: 'recordsTotal') int recordsTotal,
      @JsonKey(name: 'recordsFiltered') int recordsFiltered,
      List<JoinedByReferralMember> data});
}

/// @nodoc
class _$JoinedByReferralDataCopyWithImpl<$Res,
        $Val extends JoinedByReferralData>
    implements $JoinedByReferralDataCopyWith<$Res> {
  _$JoinedByReferralDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoinedByReferralData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? draw = null,
    Object? recordsTotal = null,
    Object? recordsFiltered = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      draw: null == draw
          ? _value.draw
          : draw // ignore: cast_nullable_to_non_nullable
              as int,
      recordsTotal: null == recordsTotal
          ? _value.recordsTotal
          : recordsTotal // ignore: cast_nullable_to_non_nullable
              as int,
      recordsFiltered: null == recordsFiltered
          ? _value.recordsFiltered
          : recordsFiltered // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<JoinedByReferralMember>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JoinedByReferralDataImplCopyWith<$Res>
    implements $JoinedByReferralDataCopyWith<$Res> {
  factory _$$JoinedByReferralDataImplCopyWith(_$JoinedByReferralDataImpl value,
          $Res Function(_$JoinedByReferralDataImpl) then) =
      __$$JoinedByReferralDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int draw,
      @JsonKey(name: 'recordsTotal') int recordsTotal,
      @JsonKey(name: 'recordsFiltered') int recordsFiltered,
      List<JoinedByReferralMember> data});
}

/// @nodoc
class __$$JoinedByReferralDataImplCopyWithImpl<$Res>
    extends _$JoinedByReferralDataCopyWithImpl<$Res, _$JoinedByReferralDataImpl>
    implements _$$JoinedByReferralDataImplCopyWith<$Res> {
  __$$JoinedByReferralDataImplCopyWithImpl(_$JoinedByReferralDataImpl _value,
      $Res Function(_$JoinedByReferralDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinedByReferralData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? draw = null,
    Object? recordsTotal = null,
    Object? recordsFiltered = null,
    Object? data = null,
  }) {
    return _then(_$JoinedByReferralDataImpl(
      draw: null == draw
          ? _value.draw
          : draw // ignore: cast_nullable_to_non_nullable
              as int,
      recordsTotal: null == recordsTotal
          ? _value.recordsTotal
          : recordsTotal // ignore: cast_nullable_to_non_nullable
              as int,
      recordsFiltered: null == recordsFiltered
          ? _value.recordsFiltered
          : recordsFiltered // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<JoinedByReferralMember>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JoinedByReferralDataImpl implements _JoinedByReferralData {
  const _$JoinedByReferralDataImpl(
      {required this.draw,
      @JsonKey(name: 'recordsTotal') required this.recordsTotal,
      @JsonKey(name: 'recordsFiltered') required this.recordsFiltered,
      required final List<JoinedByReferralMember> data})
      : _data = data;

  factory _$JoinedByReferralDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinedByReferralDataImplFromJson(json);

  @override
  final int draw;
  @override
  @JsonKey(name: 'recordsTotal')
  final int recordsTotal;
  @override
  @JsonKey(name: 'recordsFiltered')
  final int recordsFiltered;
  final List<JoinedByReferralMember> _data;
  @override
  List<JoinedByReferralMember> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'JoinedByReferralData(draw: $draw, recordsTotal: $recordsTotal, recordsFiltered: $recordsFiltered, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinedByReferralDataImpl &&
            (identical(other.draw, draw) || other.draw == draw) &&
            (identical(other.recordsTotal, recordsTotal) ||
                other.recordsTotal == recordsTotal) &&
            (identical(other.recordsFiltered, recordsFiltered) ||
                other.recordsFiltered == recordsFiltered) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, draw, recordsTotal,
      recordsFiltered, const DeepCollectionEquality().hash(_data));

  /// Create a copy of JoinedByReferralData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinedByReferralDataImplCopyWith<_$JoinedByReferralDataImpl>
      get copyWith =>
          __$$JoinedByReferralDataImplCopyWithImpl<_$JoinedByReferralDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinedByReferralDataImplToJson(
      this,
    );
  }
}

abstract class _JoinedByReferralData implements JoinedByReferralData {
  const factory _JoinedByReferralData(
          {required final int draw,
          @JsonKey(name: 'recordsTotal') required final int recordsTotal,
          @JsonKey(name: 'recordsFiltered') required final int recordsFiltered,
          required final List<JoinedByReferralMember> data}) =
      _$JoinedByReferralDataImpl;

  factory _JoinedByReferralData.fromJson(Map<String, dynamic> json) =
      _$JoinedByReferralDataImpl.fromJson;

  @override
  int get draw;
  @override
  @JsonKey(name: 'recordsTotal')
  int get recordsTotal;
  @override
  @JsonKey(name: 'recordsFiltered')
  int get recordsFiltered;
  @override
  List<JoinedByReferralMember> get data;

  /// Create a copy of JoinedByReferralData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinedByReferralDataImplCopyWith<_$JoinedByReferralDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

JoinedByReferralMember _$JoinedByReferralMemberFromJson(
    Map<String, dynamic> json) {
  return _JoinedByReferralMember.fromJson(json);
}

/// @nodoc
mixin _$JoinedByReferralMember {
  @JsonKey(name: 'member_id')
  int get memberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ref_id')
  int get refId => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_ref_code')
  String? get oldRefCode => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'pin_code')
  String get pinCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'btc_assembly_constituency_id')
  int get btcAssemblyConstituencyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'btc_constituency')
  int get btcConstituency => throw _privateConstructorUsedError;
  @JsonKey(name: 'party_district')
  int get partyDistrict => throw _privateConstructorUsedError;
  @JsonKey(name: 'assembly_constituency')
  int get assemblyConstituency => throw _privateConstructorUsedError;
  @JsonKey(name: 'primary_id')
  int get primaryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'booth_id')
  int get boothId => throw _privateConstructorUsedError;
  @JsonKey(name: 'village_id')
  int get villageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  int get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'update_count')
  int get updateCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  int get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'member_name')
  String get memberName => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_no')
  String? get mobileNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_no')
  String get membershipNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'ref_code')
  String get refCode => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth', fromJson: _fromJson, toJson: _toJson)
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get voterId => throw _privateConstructorUsedError;
  @JsonKey(name: 'village_name')
  String get villageName => throw _privateConstructorUsedError;
  @JsonKey(name: 'primary_name')
  String get primaryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'constituency_name')
  String get constituencyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'district_name')
  String get districtName => throw _privateConstructorUsedError;
  @JsonKey(name: 'head_member_id')
  int get headMemberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'head_member_name')
  String? get headMemberName => throw _privateConstructorUsedError;
  @JsonKey(name: 'relationship_id')
  int? get relationshipId => throw _privateConstructorUsedError;
  @JsonKey(name: 'joining_date', fromJson: _fromJson, toJson: _toJson)
  DateTime get joiningDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'relationship_name')
  String get relationshipName => throw _privateConstructorUsedError;

  /// Serializes this JoinedByReferralMember to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JoinedByReferralMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JoinedByReferralMemberCopyWith<JoinedByReferralMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinedByReferralMemberCopyWith<$Res> {
  factory $JoinedByReferralMemberCopyWith(JoinedByReferralMember value,
          $Res Function(JoinedByReferralMember) then) =
      _$JoinedByReferralMemberCopyWithImpl<$Res, JoinedByReferralMember>;
  @useResult
  $Res call(
      {@JsonKey(name: 'member_id') int memberId,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'ref_id') int refId,
      @JsonKey(name: 'old_ref_code') String? oldRefCode,
      String title,
      String address,
      @JsonKey(name: 'pin_code') String pinCode,
      @JsonKey(name: 'btc_assembly_constituency_id')
      int btcAssemblyConstituencyId,
      @JsonKey(name: 'btc_constituency') int btcConstituency,
      @JsonKey(name: 'party_district') int partyDistrict,
      @JsonKey(name: 'assembly_constituency') int assemblyConstituency,
      @JsonKey(name: 'primary_id') int primaryId,
      @JsonKey(name: 'booth_id') int boothId,
      @JsonKey(name: 'village_id') int villageId,
      @JsonKey(name: 'created_by') int createdBy,
      @JsonKey(name: 'update_count') int updateCount,
      @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
      DateTime createdAt,
      @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
      DateTime updatedAt,
      String photo,
      int district,
      @JsonKey(name: 'member_name') String memberName,
      @JsonKey(name: 'mobile_no') String? mobileNo,
      @JsonKey(name: 'membership_no') String membershipNo,
      @JsonKey(name: 'ref_code') String refCode,
      int gender,
      @JsonKey(name: 'date_of_birth', fromJson: _fromJson, toJson: _toJson)
      DateTime dateOfBirth,
      String? email,
      String? voterId,
      @JsonKey(name: 'village_name') String villageName,
      @JsonKey(name: 'primary_name') String primaryName,
      @JsonKey(name: 'constituency_name') String constituencyName,
      @JsonKey(name: 'district_name') String districtName,
      @JsonKey(name: 'head_member_id') int headMemberId,
      @JsonKey(name: 'head_member_name') String? headMemberName,
      @JsonKey(name: 'relationship_id') int? relationshipId,
      @JsonKey(name: 'joining_date', fromJson: _fromJson, toJson: _toJson)
      DateTime joiningDate,
      @JsonKey(name: 'relationship_name') String relationshipName});
}

/// @nodoc
class _$JoinedByReferralMemberCopyWithImpl<$Res,
        $Val extends JoinedByReferralMember>
    implements $JoinedByReferralMemberCopyWith<$Res> {
  _$JoinedByReferralMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoinedByReferralMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? userId = null,
    Object? refId = null,
    Object? oldRefCode = freezed,
    Object? title = null,
    Object? address = null,
    Object? pinCode = null,
    Object? btcAssemblyConstituencyId = null,
    Object? btcConstituency = null,
    Object? partyDistrict = null,
    Object? assemblyConstituency = null,
    Object? primaryId = null,
    Object? boothId = null,
    Object? villageId = null,
    Object? createdBy = null,
    Object? updateCount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? photo = null,
    Object? district = null,
    Object? memberName = null,
    Object? mobileNo = freezed,
    Object? membershipNo = null,
    Object? refCode = null,
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? email = freezed,
    Object? voterId = freezed,
    Object? villageName = null,
    Object? primaryName = null,
    Object? constituencyName = null,
    Object? districtName = null,
    Object? headMemberId = null,
    Object? headMemberName = freezed,
    Object? relationshipId = freezed,
    Object? joiningDate = null,
    Object? relationshipName = null,
  }) {
    return _then(_value.copyWith(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      refId: null == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as int,
      oldRefCode: freezed == oldRefCode
          ? _value.oldRefCode
          : oldRefCode // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      btcAssemblyConstituencyId: null == btcAssemblyConstituencyId
          ? _value.btcAssemblyConstituencyId
          : btcAssemblyConstituencyId // ignore: cast_nullable_to_non_nullable
              as int,
      btcConstituency: null == btcConstituency
          ? _value.btcConstituency
          : btcConstituency // ignore: cast_nullable_to_non_nullable
              as int,
      partyDistrict: null == partyDistrict
          ? _value.partyDistrict
          : partyDistrict // ignore: cast_nullable_to_non_nullable
              as int,
      assemblyConstituency: null == assemblyConstituency
          ? _value.assemblyConstituency
          : assemblyConstituency // ignore: cast_nullable_to_non_nullable
              as int,
      primaryId: null == primaryId
          ? _value.primaryId
          : primaryId // ignore: cast_nullable_to_non_nullable
              as int,
      boothId: null == boothId
          ? _value.boothId
          : boothId // ignore: cast_nullable_to_non_nullable
              as int,
      villageId: null == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as int,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
      updateCount: null == updateCount
          ? _value.updateCount
          : updateCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as int,
      memberName: null == memberName
          ? _value.memberName
          : memberName // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipNo: null == membershipNo
          ? _value.membershipNo
          : membershipNo // ignore: cast_nullable_to_non_nullable
              as String,
      refCode: null == refCode
          ? _value.refCode
          : refCode // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      voterId: freezed == voterId
          ? _value.voterId
          : voterId // ignore: cast_nullable_to_non_nullable
              as String?,
      villageName: null == villageName
          ? _value.villageName
          : villageName // ignore: cast_nullable_to_non_nullable
              as String,
      primaryName: null == primaryName
          ? _value.primaryName
          : primaryName // ignore: cast_nullable_to_non_nullable
              as String,
      constituencyName: null == constituencyName
          ? _value.constituencyName
          : constituencyName // ignore: cast_nullable_to_non_nullable
              as String,
      districtName: null == districtName
          ? _value.districtName
          : districtName // ignore: cast_nullable_to_non_nullable
              as String,
      headMemberId: null == headMemberId
          ? _value.headMemberId
          : headMemberId // ignore: cast_nullable_to_non_nullable
              as int,
      headMemberName: freezed == headMemberName
          ? _value.headMemberName
          : headMemberName // ignore: cast_nullable_to_non_nullable
              as String?,
      relationshipId: freezed == relationshipId
          ? _value.relationshipId
          : relationshipId // ignore: cast_nullable_to_non_nullable
              as int?,
      joiningDate: null == joiningDate
          ? _value.joiningDate
          : joiningDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      relationshipName: null == relationshipName
          ? _value.relationshipName
          : relationshipName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JoinedByReferralMemberImplCopyWith<$Res>
    implements $JoinedByReferralMemberCopyWith<$Res> {
  factory _$$JoinedByReferralMemberImplCopyWith(
          _$JoinedByReferralMemberImpl value,
          $Res Function(_$JoinedByReferralMemberImpl) then) =
      __$$JoinedByReferralMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'member_id') int memberId,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'ref_id') int refId,
      @JsonKey(name: 'old_ref_code') String? oldRefCode,
      String title,
      String address,
      @JsonKey(name: 'pin_code') String pinCode,
      @JsonKey(name: 'btc_assembly_constituency_id')
      int btcAssemblyConstituencyId,
      @JsonKey(name: 'btc_constituency') int btcConstituency,
      @JsonKey(name: 'party_district') int partyDistrict,
      @JsonKey(name: 'assembly_constituency') int assemblyConstituency,
      @JsonKey(name: 'primary_id') int primaryId,
      @JsonKey(name: 'booth_id') int boothId,
      @JsonKey(name: 'village_id') int villageId,
      @JsonKey(name: 'created_by') int createdBy,
      @JsonKey(name: 'update_count') int updateCount,
      @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
      DateTime createdAt,
      @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
      DateTime updatedAt,
      String photo,
      int district,
      @JsonKey(name: 'member_name') String memberName,
      @JsonKey(name: 'mobile_no') String? mobileNo,
      @JsonKey(name: 'membership_no') String membershipNo,
      @JsonKey(name: 'ref_code') String refCode,
      int gender,
      @JsonKey(name: 'date_of_birth', fromJson: _fromJson, toJson: _toJson)
      DateTime dateOfBirth,
      String? email,
      String? voterId,
      @JsonKey(name: 'village_name') String villageName,
      @JsonKey(name: 'primary_name') String primaryName,
      @JsonKey(name: 'constituency_name') String constituencyName,
      @JsonKey(name: 'district_name') String districtName,
      @JsonKey(name: 'head_member_id') int headMemberId,
      @JsonKey(name: 'head_member_name') String? headMemberName,
      @JsonKey(name: 'relationship_id') int? relationshipId,
      @JsonKey(name: 'joining_date', fromJson: _fromJson, toJson: _toJson)
      DateTime joiningDate,
      @JsonKey(name: 'relationship_name') String relationshipName});
}

/// @nodoc
class __$$JoinedByReferralMemberImplCopyWithImpl<$Res>
    extends _$JoinedByReferralMemberCopyWithImpl<$Res,
        _$JoinedByReferralMemberImpl>
    implements _$$JoinedByReferralMemberImplCopyWith<$Res> {
  __$$JoinedByReferralMemberImplCopyWithImpl(
      _$JoinedByReferralMemberImpl _value,
      $Res Function(_$JoinedByReferralMemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinedByReferralMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? userId = null,
    Object? refId = null,
    Object? oldRefCode = freezed,
    Object? title = null,
    Object? address = null,
    Object? pinCode = null,
    Object? btcAssemblyConstituencyId = null,
    Object? btcConstituency = null,
    Object? partyDistrict = null,
    Object? assemblyConstituency = null,
    Object? primaryId = null,
    Object? boothId = null,
    Object? villageId = null,
    Object? createdBy = null,
    Object? updateCount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? photo = null,
    Object? district = null,
    Object? memberName = null,
    Object? mobileNo = freezed,
    Object? membershipNo = null,
    Object? refCode = null,
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? email = freezed,
    Object? voterId = freezed,
    Object? villageName = null,
    Object? primaryName = null,
    Object? constituencyName = null,
    Object? districtName = null,
    Object? headMemberId = null,
    Object? headMemberName = freezed,
    Object? relationshipId = freezed,
    Object? joiningDate = null,
    Object? relationshipName = null,
  }) {
    return _then(_$JoinedByReferralMemberImpl(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      refId: null == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as int,
      oldRefCode: freezed == oldRefCode
          ? _value.oldRefCode
          : oldRefCode // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      btcAssemblyConstituencyId: null == btcAssemblyConstituencyId
          ? _value.btcAssemblyConstituencyId
          : btcAssemblyConstituencyId // ignore: cast_nullable_to_non_nullable
              as int,
      btcConstituency: null == btcConstituency
          ? _value.btcConstituency
          : btcConstituency // ignore: cast_nullable_to_non_nullable
              as int,
      partyDistrict: null == partyDistrict
          ? _value.partyDistrict
          : partyDistrict // ignore: cast_nullable_to_non_nullable
              as int,
      assemblyConstituency: null == assemblyConstituency
          ? _value.assemblyConstituency
          : assemblyConstituency // ignore: cast_nullable_to_non_nullable
              as int,
      primaryId: null == primaryId
          ? _value.primaryId
          : primaryId // ignore: cast_nullable_to_non_nullable
              as int,
      boothId: null == boothId
          ? _value.boothId
          : boothId // ignore: cast_nullable_to_non_nullable
              as int,
      villageId: null == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as int,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
      updateCount: null == updateCount
          ? _value.updateCount
          : updateCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as int,
      memberName: null == memberName
          ? _value.memberName
          : memberName // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipNo: null == membershipNo
          ? _value.membershipNo
          : membershipNo // ignore: cast_nullable_to_non_nullable
              as String,
      refCode: null == refCode
          ? _value.refCode
          : refCode // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      voterId: freezed == voterId
          ? _value.voterId
          : voterId // ignore: cast_nullable_to_non_nullable
              as String?,
      villageName: null == villageName
          ? _value.villageName
          : villageName // ignore: cast_nullable_to_non_nullable
              as String,
      primaryName: null == primaryName
          ? _value.primaryName
          : primaryName // ignore: cast_nullable_to_non_nullable
              as String,
      constituencyName: null == constituencyName
          ? _value.constituencyName
          : constituencyName // ignore: cast_nullable_to_non_nullable
              as String,
      districtName: null == districtName
          ? _value.districtName
          : districtName // ignore: cast_nullable_to_non_nullable
              as String,
      headMemberId: null == headMemberId
          ? _value.headMemberId
          : headMemberId // ignore: cast_nullable_to_non_nullable
              as int,
      headMemberName: freezed == headMemberName
          ? _value.headMemberName
          : headMemberName // ignore: cast_nullable_to_non_nullable
              as String?,
      relationshipId: freezed == relationshipId
          ? _value.relationshipId
          : relationshipId // ignore: cast_nullable_to_non_nullable
              as int?,
      joiningDate: null == joiningDate
          ? _value.joiningDate
          : joiningDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      relationshipName: null == relationshipName
          ? _value.relationshipName
          : relationshipName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JoinedByReferralMemberImpl implements _JoinedByReferralMember {
  const _$JoinedByReferralMemberImpl(
      {@JsonKey(name: 'member_id') required this.memberId,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'ref_id') required this.refId,
      @JsonKey(name: 'old_ref_code') this.oldRefCode,
      required this.title,
      required this.address,
      @JsonKey(name: 'pin_code') required this.pinCode,
      @JsonKey(name: 'btc_assembly_constituency_id')
      required this.btcAssemblyConstituencyId,
      @JsonKey(name: 'btc_constituency') required this.btcConstituency,
      @JsonKey(name: 'party_district') required this.partyDistrict,
      @JsonKey(name: 'assembly_constituency')
      required this.assemblyConstituency,
      @JsonKey(name: 'primary_id') required this.primaryId,
      @JsonKey(name: 'booth_id') required this.boothId,
      @JsonKey(name: 'village_id') required this.villageId,
      @JsonKey(name: 'created_by') required this.createdBy,
      @JsonKey(name: 'update_count') required this.updateCount,
      @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
      required this.createdAt,
      @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
      required this.updatedAt,
      required this.photo,
      required this.district,
      @JsonKey(name: 'member_name') required this.memberName,
      @JsonKey(name: 'mobile_no') this.mobileNo,
      @JsonKey(name: 'membership_no') required this.membershipNo,
      @JsonKey(name: 'ref_code') required this.refCode,
      required this.gender,
      @JsonKey(name: 'date_of_birth', fromJson: _fromJson, toJson: _toJson)
      required this.dateOfBirth,
      this.email,
      this.voterId,
      @JsonKey(name: 'village_name') required this.villageName,
      @JsonKey(name: 'primary_name') required this.primaryName,
      @JsonKey(name: 'constituency_name') required this.constituencyName,
      @JsonKey(name: 'district_name') required this.districtName,
      @JsonKey(name: 'head_member_id') required this.headMemberId,
      @JsonKey(name: 'head_member_name') this.headMemberName,
      @JsonKey(name: 'relationship_id') this.relationshipId,
      @JsonKey(name: 'joining_date', fromJson: _fromJson, toJson: _toJson)
      required this.joiningDate,
      @JsonKey(name: 'relationship_name') required this.relationshipName});

  factory _$JoinedByReferralMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinedByReferralMemberImplFromJson(json);

  @override
  @JsonKey(name: 'member_id')
  final int memberId;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'ref_id')
  final int refId;
  @override
  @JsonKey(name: 'old_ref_code')
  final String? oldRefCode;
  @override
  final String title;
  @override
  final String address;
  @override
  @JsonKey(name: 'pin_code')
  final String pinCode;
  @override
  @JsonKey(name: 'btc_assembly_constituency_id')
  final int btcAssemblyConstituencyId;
  @override
  @JsonKey(name: 'btc_constituency')
  final int btcConstituency;
  @override
  @JsonKey(name: 'party_district')
  final int partyDistrict;
  @override
  @JsonKey(name: 'assembly_constituency')
  final int assemblyConstituency;
  @override
  @JsonKey(name: 'primary_id')
  final int primaryId;
  @override
  @JsonKey(name: 'booth_id')
  final int boothId;
  @override
  @JsonKey(name: 'village_id')
  final int villageId;
  @override
  @JsonKey(name: 'created_by')
  final int createdBy;
  @override
  @JsonKey(name: 'update_count')
  final int updateCount;
  @override
  @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
  final DateTime updatedAt;
  @override
  final String photo;
  @override
  final int district;
  @override
  @JsonKey(name: 'member_name')
  final String memberName;
  @override
  @JsonKey(name: 'mobile_no')
  final String? mobileNo;
  @override
  @JsonKey(name: 'membership_no')
  final String membershipNo;
  @override
  @JsonKey(name: 'ref_code')
  final String refCode;
  @override
  final int gender;
  @override
  @JsonKey(name: 'date_of_birth', fromJson: _fromJson, toJson: _toJson)
  final DateTime dateOfBirth;
  @override
  final String? email;
  @override
  final String? voterId;
  @override
  @JsonKey(name: 'village_name')
  final String villageName;
  @override
  @JsonKey(name: 'primary_name')
  final String primaryName;
  @override
  @JsonKey(name: 'constituency_name')
  final String constituencyName;
  @override
  @JsonKey(name: 'district_name')
  final String districtName;
  @override
  @JsonKey(name: 'head_member_id')
  final int headMemberId;
  @override
  @JsonKey(name: 'head_member_name')
  final String? headMemberName;
  @override
  @JsonKey(name: 'relationship_id')
  final int? relationshipId;
  @override
  @JsonKey(name: 'joining_date', fromJson: _fromJson, toJson: _toJson)
  final DateTime joiningDate;
  @override
  @JsonKey(name: 'relationship_name')
  final String relationshipName;

  @override
  String toString() {
    return 'JoinedByReferralMember(memberId: $memberId, userId: $userId, refId: $refId, oldRefCode: $oldRefCode, title: $title, address: $address, pinCode: $pinCode, btcAssemblyConstituencyId: $btcAssemblyConstituencyId, btcConstituency: $btcConstituency, partyDistrict: $partyDistrict, assemblyConstituency: $assemblyConstituency, primaryId: $primaryId, boothId: $boothId, villageId: $villageId, createdBy: $createdBy, updateCount: $updateCount, createdAt: $createdAt, updatedAt: $updatedAt, photo: $photo, district: $district, memberName: $memberName, mobileNo: $mobileNo, membershipNo: $membershipNo, refCode: $refCode, gender: $gender, dateOfBirth: $dateOfBirth, email: $email, voterId: $voterId, villageName: $villageName, primaryName: $primaryName, constituencyName: $constituencyName, districtName: $districtName, headMemberId: $headMemberId, headMemberName: $headMemberName, relationshipId: $relationshipId, joiningDate: $joiningDate, relationshipName: $relationshipName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinedByReferralMemberImpl &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
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
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.memberName, memberName) ||
                other.memberName == memberName) &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo) &&
            (identical(other.membershipNo, membershipNo) ||
                other.membershipNo == membershipNo) &&
            (identical(other.refCode, refCode) || other.refCode == refCode) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.voterId, voterId) || other.voterId == voterId) &&
            (identical(other.villageName, villageName) ||
                other.villageName == villageName) &&
            (identical(other.primaryName, primaryName) ||
                other.primaryName == primaryName) &&
            (identical(other.constituencyName, constituencyName) ||
                other.constituencyName == constituencyName) &&
            (identical(other.districtName, districtName) ||
                other.districtName == districtName) &&
            (identical(other.headMemberId, headMemberId) ||
                other.headMemberId == headMemberId) &&
            (identical(other.headMemberName, headMemberName) ||
                other.headMemberName == headMemberName) &&
            (identical(other.relationshipId, relationshipId) ||
                other.relationshipId == relationshipId) &&
            (identical(other.joiningDate, joiningDate) ||
                other.joiningDate == joiningDate) &&
            (identical(other.relationshipName, relationshipName) ||
                other.relationshipName == relationshipName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        memberId,
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
        photo,
        district,
        memberName,
        mobileNo,
        membershipNo,
        refCode,
        gender,
        dateOfBirth,
        email,
        voterId,
        villageName,
        primaryName,
        constituencyName,
        districtName,
        headMemberId,
        headMemberName,
        relationshipId,
        joiningDate,
        relationshipName
      ]);

  /// Create a copy of JoinedByReferralMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinedByReferralMemberImplCopyWith<_$JoinedByReferralMemberImpl>
      get copyWith => __$$JoinedByReferralMemberImplCopyWithImpl<
          _$JoinedByReferralMemberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinedByReferralMemberImplToJson(
      this,
    );
  }
}

abstract class _JoinedByReferralMember implements JoinedByReferralMember {
  const factory _JoinedByReferralMember(
      {@JsonKey(name: 'member_id') required final int memberId,
      @JsonKey(name: 'user_id') required final int userId,
      @JsonKey(name: 'ref_id') required final int refId,
      @JsonKey(name: 'old_ref_code') final String? oldRefCode,
      required final String title,
      required final String address,
      @JsonKey(name: 'pin_code') required final String pinCode,
      @JsonKey(name: 'btc_assembly_constituency_id')
      required final int btcAssemblyConstituencyId,
      @JsonKey(name: 'btc_constituency') required final int btcConstituency,
      @JsonKey(name: 'party_district') required final int partyDistrict,
      @JsonKey(name: 'assembly_constituency')
      required final int assemblyConstituency,
      @JsonKey(name: 'primary_id') required final int primaryId,
      @JsonKey(name: 'booth_id') required final int boothId,
      @JsonKey(name: 'village_id') required final int villageId,
      @JsonKey(name: 'created_by') required final int createdBy,
      @JsonKey(name: 'update_count') required final int updateCount,
      @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
      required final DateTime createdAt,
      @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
      required final DateTime updatedAt,
      required final String photo,
      required final int district,
      @JsonKey(name: 'member_name') required final String memberName,
      @JsonKey(name: 'mobile_no') final String? mobileNo,
      @JsonKey(name: 'membership_no') required final String membershipNo,
      @JsonKey(name: 'ref_code') required final String refCode,
      required final int gender,
      @JsonKey(name: 'date_of_birth', fromJson: _fromJson, toJson: _toJson)
      required final DateTime dateOfBirth,
      final String? email,
      final String? voterId,
      @JsonKey(name: 'village_name') required final String villageName,
      @JsonKey(name: 'primary_name') required final String primaryName,
      @JsonKey(name: 'constituency_name')
      required final String constituencyName,
      @JsonKey(name: 'district_name') required final String districtName,
      @JsonKey(name: 'head_member_id') required final int headMemberId,
      @JsonKey(name: 'head_member_name') final String? headMemberName,
      @JsonKey(name: 'relationship_id') final int? relationshipId,
      @JsonKey(name: 'joining_date', fromJson: _fromJson, toJson: _toJson)
      required final DateTime joiningDate,
      @JsonKey(name: 'relationship_name')
      required final String relationshipName}) = _$JoinedByReferralMemberImpl;

  factory _JoinedByReferralMember.fromJson(Map<String, dynamic> json) =
      _$JoinedByReferralMemberImpl.fromJson;

  @override
  @JsonKey(name: 'member_id')
  int get memberId;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'ref_id')
  int get refId;
  @override
  @JsonKey(name: 'old_ref_code')
  String? get oldRefCode;
  @override
  String get title;
  @override
  String get address;
  @override
  @JsonKey(name: 'pin_code')
  String get pinCode;
  @override
  @JsonKey(name: 'btc_assembly_constituency_id')
  int get btcAssemblyConstituencyId;
  @override
  @JsonKey(name: 'btc_constituency')
  int get btcConstituency;
  @override
  @JsonKey(name: 'party_district')
  int get partyDistrict;
  @override
  @JsonKey(name: 'assembly_constituency')
  int get assemblyConstituency;
  @override
  @JsonKey(name: 'primary_id')
  int get primaryId;
  @override
  @JsonKey(name: 'booth_id')
  int get boothId;
  @override
  @JsonKey(name: 'village_id')
  int get villageId;
  @override
  @JsonKey(name: 'created_by')
  int get createdBy;
  @override
  @JsonKey(name: 'update_count')
  int get updateCount;
  @override
  @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
  DateTime get updatedAt;
  @override
  String get photo;
  @override
  int get district;
  @override
  @JsonKey(name: 'member_name')
  String get memberName;
  @override
  @JsonKey(name: 'mobile_no')
  String? get mobileNo;
  @override
  @JsonKey(name: 'membership_no')
  String get membershipNo;
  @override
  @JsonKey(name: 'ref_code')
  String get refCode;
  @override
  int get gender;
  @override
  @JsonKey(name: 'date_of_birth', fromJson: _fromJson, toJson: _toJson)
  DateTime get dateOfBirth;
  @override
  String? get email;
  @override
  String? get voterId;
  @override
  @JsonKey(name: 'village_name')
  String get villageName;
  @override
  @JsonKey(name: 'primary_name')
  String get primaryName;
  @override
  @JsonKey(name: 'constituency_name')
  String get constituencyName;
  @override
  @JsonKey(name: 'district_name')
  String get districtName;
  @override
  @JsonKey(name: 'head_member_id')
  int get headMemberId;
  @override
  @JsonKey(name: 'head_member_name')
  String? get headMemberName;
  @override
  @JsonKey(name: 'relationship_id')
  int? get relationshipId;
  @override
  @JsonKey(name: 'joining_date', fromJson: _fromJson, toJson: _toJson)
  DateTime get joiningDate;
  @override
  @JsonKey(name: 'relationship_name')
  String get relationshipName;

  /// Create a copy of JoinedByReferralMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinedByReferralMemberImplCopyWith<_$JoinedByReferralMemberImpl>
      get copyWith => throw _privateConstructorUsedError;
}
