// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'family_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FamilyDetailsModel _$FamilyDetailsModelFromJson(Map<String, dynamic> json) {
  return _FamilyDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$FamilyDetailsModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  /// Serializes this FamilyDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FamilyDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FamilyDetailsModelCopyWith<FamilyDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyDetailsModelCopyWith<$Res> {
  factory $FamilyDetailsModelCopyWith(
          FamilyDetailsModel value, $Res Function(FamilyDetailsModel) then) =
      _$FamilyDetailsModelCopyWithImpl<$Res, FamilyDetailsModel>;
  @useResult
  $Res call({int status, String message, Data data, int code});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$FamilyDetailsModelCopyWithImpl<$Res, $Val extends FamilyDetailsModel>
    implements $FamilyDetailsModelCopyWith<$Res> {
  _$FamilyDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FamilyDetailsModel
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
              as Data,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of FamilyDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FamilyDetailsModelImplCopyWith<$Res>
    implements $FamilyDetailsModelCopyWith<$Res> {
  factory _$$FamilyDetailsModelImplCopyWith(_$FamilyDetailsModelImpl value,
          $Res Function(_$FamilyDetailsModelImpl) then) =
      __$$FamilyDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, Data data, int code});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$FamilyDetailsModelImplCopyWithImpl<$Res>
    extends _$FamilyDetailsModelCopyWithImpl<$Res, _$FamilyDetailsModelImpl>
    implements _$$FamilyDetailsModelImplCopyWith<$Res> {
  __$$FamilyDetailsModelImplCopyWithImpl(_$FamilyDetailsModelImpl _value,
      $Res Function(_$FamilyDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FamilyDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
    Object? code = null,
  }) {
    return _then(_$FamilyDetailsModelImpl(
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
}

/// @nodoc
@JsonSerializable()
class _$FamilyDetailsModelImpl implements _FamilyDetailsModel {
  const _$FamilyDetailsModelImpl(
      {required this.status,
      required this.message,
      required this.data,
      required this.code});

  factory _$FamilyDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilyDetailsModelImplFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final Data data;
  @override
  final int code;

  @override
  String toString() {
    return 'FamilyDetailsModel(status: $status, message: $message, data: $data, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyDetailsModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data, code);

  /// Create a copy of FamilyDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FamilyDetailsModelImplCopyWith<_$FamilyDetailsModelImpl> get copyWith =>
      __$$FamilyDetailsModelImplCopyWithImpl<_$FamilyDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilyDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _FamilyDetailsModel implements FamilyDetailsModel {
  const factory _FamilyDetailsModel(
      {required final int status,
      required final String message,
      required final Data data,
      required final int code}) = _$FamilyDetailsModelImpl;

  factory _FamilyDetailsModel.fromJson(Map<String, dynamic> json) =
      _$FamilyDetailsModelImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  Data get data;
  @override
  int get code;

  /// Create a copy of FamilyDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FamilyDetailsModelImplCopyWith<_$FamilyDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'family_details')
  List<FamilyDetail> get familyDetails => throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: 'family_details') List<FamilyDetail> familyDetails});
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
    Object? familyDetails = null,
  }) {
    return _then(_value.copyWith(
      familyDetails: null == familyDetails
          ? _value.familyDetails
          : familyDetails // ignore: cast_nullable_to_non_nullable
              as List<FamilyDetail>,
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
  $Res call(
      {@JsonKey(name: 'family_details') List<FamilyDetail> familyDetails});
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
    Object? familyDetails = null,
  }) {
    return _then(_$DataImpl(
      familyDetails: null == familyDetails
          ? _value._familyDetails
          : familyDetails // ignore: cast_nullable_to_non_nullable
              as List<FamilyDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: 'family_details')
      required final List<FamilyDetail> familyDetails})
      : _familyDetails = familyDetails;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<FamilyDetail> _familyDetails;
  @override
  @JsonKey(name: 'family_details')
  List<FamilyDetail> get familyDetails {
    if (_familyDetails is EqualUnmodifiableListView) return _familyDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_familyDetails);
  }

  @override
  String toString() {
    return 'Data(familyDetails: $familyDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality()
                .equals(other._familyDetails, _familyDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_familyDetails));

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
  const factory _Data(
      {@JsonKey(name: 'family_details')
      required final List<FamilyDetail> familyDetails}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'family_details')
  List<FamilyDetail> get familyDetails;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FamilyDetail _$FamilyDetailFromJson(Map<String, dynamic> json) {
  return _FamilyDetail.fromJson(json);
}

/// @nodoc
mixin _$FamilyDetail {
  @JsonKey(name: 'membership_card')
  FamilyMembershipCard get membershipCard => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_details')
  FamilyPersonalDetails get personalDetails =>
      throw _privateConstructorUsedError;

  /// Serializes this FamilyDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FamilyDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FamilyDetailCopyWith<FamilyDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyDetailCopyWith<$Res> {
  factory $FamilyDetailCopyWith(
          FamilyDetail value, $Res Function(FamilyDetail) then) =
      _$FamilyDetailCopyWithImpl<$Res, FamilyDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'membership_card') FamilyMembershipCard membershipCard,
      @JsonKey(name: 'personal_details')
      FamilyPersonalDetails personalDetails});

  $FamilyMembershipCardCopyWith<$Res> get membershipCard;
  $FamilyPersonalDetailsCopyWith<$Res> get personalDetails;
}

/// @nodoc
class _$FamilyDetailCopyWithImpl<$Res, $Val extends FamilyDetail>
    implements $FamilyDetailCopyWith<$Res> {
  _$FamilyDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FamilyDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? membershipCard = null,
    Object? personalDetails = null,
  }) {
    return _then(_value.copyWith(
      membershipCard: null == membershipCard
          ? _value.membershipCard
          : membershipCard // ignore: cast_nullable_to_non_nullable
              as FamilyMembershipCard,
      personalDetails: null == personalDetails
          ? _value.personalDetails
          : personalDetails // ignore: cast_nullable_to_non_nullable
              as FamilyPersonalDetails,
    ) as $Val);
  }

  /// Create a copy of FamilyDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FamilyMembershipCardCopyWith<$Res> get membershipCard {
    return $FamilyMembershipCardCopyWith<$Res>(_value.membershipCard, (value) {
      return _then(_value.copyWith(membershipCard: value) as $Val);
    });
  }

  /// Create a copy of FamilyDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FamilyPersonalDetailsCopyWith<$Res> get personalDetails {
    return $FamilyPersonalDetailsCopyWith<$Res>(_value.personalDetails,
        (value) {
      return _then(_value.copyWith(personalDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FamilyDetailImplCopyWith<$Res>
    implements $FamilyDetailCopyWith<$Res> {
  factory _$$FamilyDetailImplCopyWith(
          _$FamilyDetailImpl value, $Res Function(_$FamilyDetailImpl) then) =
      __$$FamilyDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'membership_card') FamilyMembershipCard membershipCard,
      @JsonKey(name: 'personal_details')
      FamilyPersonalDetails personalDetails});

  @override
  $FamilyMembershipCardCopyWith<$Res> get membershipCard;
  @override
  $FamilyPersonalDetailsCopyWith<$Res> get personalDetails;
}

/// @nodoc
class __$$FamilyDetailImplCopyWithImpl<$Res>
    extends _$FamilyDetailCopyWithImpl<$Res, _$FamilyDetailImpl>
    implements _$$FamilyDetailImplCopyWith<$Res> {
  __$$FamilyDetailImplCopyWithImpl(
      _$FamilyDetailImpl _value, $Res Function(_$FamilyDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of FamilyDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? membershipCard = null,
    Object? personalDetails = null,
  }) {
    return _then(_$FamilyDetailImpl(
      membershipCard: null == membershipCard
          ? _value.membershipCard
          : membershipCard // ignore: cast_nullable_to_non_nullable
              as FamilyMembershipCard,
      personalDetails: null == personalDetails
          ? _value.personalDetails
          : personalDetails // ignore: cast_nullable_to_non_nullable
              as FamilyPersonalDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FamilyDetailImpl implements _FamilyDetail {
  const _$FamilyDetailImpl(
      {@JsonKey(name: 'membership_card') required this.membershipCard,
      @JsonKey(name: 'personal_details') required this.personalDetails});

  factory _$FamilyDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilyDetailImplFromJson(json);

  @override
  @JsonKey(name: 'membership_card')
  final FamilyMembershipCard membershipCard;
  @override
  @JsonKey(name: 'personal_details')
  final FamilyPersonalDetails personalDetails;

  @override
  String toString() {
    return 'FamilyDetail(membershipCard: $membershipCard, personalDetails: $personalDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyDetailImpl &&
            (identical(other.membershipCard, membershipCard) ||
                other.membershipCard == membershipCard) &&
            (identical(other.personalDetails, personalDetails) ||
                other.personalDetails == personalDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, membershipCard, personalDetails);

  /// Create a copy of FamilyDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FamilyDetailImplCopyWith<_$FamilyDetailImpl> get copyWith =>
      __$$FamilyDetailImplCopyWithImpl<_$FamilyDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilyDetailImplToJson(
      this,
    );
  }
}

abstract class _FamilyDetail implements FamilyDetail {
  const factory _FamilyDetail(
          {@JsonKey(name: 'membership_card')
          required final FamilyMembershipCard membershipCard,
          @JsonKey(name: 'personal_details')
          required final FamilyPersonalDetails personalDetails}) =
      _$FamilyDetailImpl;

  factory _FamilyDetail.fromJson(Map<String, dynamic> json) =
      _$FamilyDetailImpl.fromJson;

  @override
  @JsonKey(name: 'membership_card')
  FamilyMembershipCard get membershipCard;
  @override
  @JsonKey(name: 'personal_details')
  FamilyPersonalDetails get personalDetails;

  /// Create a copy of FamilyDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FamilyDetailImplCopyWith<_$FamilyDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FamilyMembershipCard _$FamilyMembershipCardFromJson(Map<String, dynamic> json) {
  return _FamilyMembershipCard.fromJson(json);
}

/// @nodoc
mixin _$FamilyMembershipCard {
  int get id => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  String get village => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  FamilyDistrict get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'district_id')
  int? get districtId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_no')
  String get mobileNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_no')
  String get membershipNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'ref_code')
  String get refCode => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'joining_date')
  String get joiningDate => throw _privateConstructorUsedError;
  int get relationship => throw _privateConstructorUsedError;
  @JsonKey(name: 'voter_id')
  String get voterId => throw _privateConstructorUsedError;

  /// Serializes this FamilyMembershipCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FamilyMembershipCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FamilyMembershipCardCopyWith<FamilyMembershipCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyMembershipCardCopyWith<$Res> {
  factory $FamilyMembershipCardCopyWith(FamilyMembershipCard value,
          $Res Function(FamilyMembershipCard) then) =
      _$FamilyMembershipCardCopyWithImpl<$Res, FamilyMembershipCard>;
  @useResult
  $Res call(
      {int id,
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
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      String village,
      String? photo,
      FamilyDistrict district,
      @JsonKey(name: 'district_id') int? districtId,
      String name,
      @JsonKey(name: 'mobile_no') String mobileNo,
      @JsonKey(name: 'membership_no') String membershipNo,
      @JsonKey(name: 'ref_code') String refCode,
      int gender,
      @JsonKey(name: 'date_of_birth') String dateOfBirth,
      String? email,
      @JsonKey(name: 'joining_date') String joiningDate,
      int relationship,
      @JsonKey(name: 'voter_id') String voterId});

  $FamilyDistrictCopyWith<$Res> get district;
}

/// @nodoc
class _$FamilyMembershipCardCopyWithImpl<$Res,
        $Val extends FamilyMembershipCard>
    implements $FamilyMembershipCardCopyWith<$Res> {
  _$FamilyMembershipCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FamilyMembershipCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
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
    Object? village = null,
    Object? photo = freezed,
    Object? district = null,
    Object? districtId = freezed,
    Object? name = null,
    Object? mobileNo = null,
    Object? membershipNo = null,
    Object? refCode = null,
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? email = freezed,
    Object? joiningDate = null,
    Object? relationship = null,
    Object? voterId = null,
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
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      village: null == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as FamilyDistrict,
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
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      joiningDate: null == joiningDate
          ? _value.joiningDate
          : joiningDate // ignore: cast_nullable_to_non_nullable
              as String,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as int,
      voterId: null == voterId
          ? _value.voterId
          : voterId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of FamilyMembershipCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FamilyDistrictCopyWith<$Res> get district {
    return $FamilyDistrictCopyWith<$Res>(_value.district, (value) {
      return _then(_value.copyWith(district: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FamilyMembershipCardImplCopyWith<$Res>
    implements $FamilyMembershipCardCopyWith<$Res> {
  factory _$$FamilyMembershipCardImplCopyWith(_$FamilyMembershipCardImpl value,
          $Res Function(_$FamilyMembershipCardImpl) then) =
      __$$FamilyMembershipCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
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
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      String village,
      String? photo,
      FamilyDistrict district,
      @JsonKey(name: 'district_id') int? districtId,
      String name,
      @JsonKey(name: 'mobile_no') String mobileNo,
      @JsonKey(name: 'membership_no') String membershipNo,
      @JsonKey(name: 'ref_code') String refCode,
      int gender,
      @JsonKey(name: 'date_of_birth') String dateOfBirth,
      String? email,
      @JsonKey(name: 'joining_date') String joiningDate,
      int relationship,
      @JsonKey(name: 'voter_id') String voterId});

  @override
  $FamilyDistrictCopyWith<$Res> get district;
}

/// @nodoc
class __$$FamilyMembershipCardImplCopyWithImpl<$Res>
    extends _$FamilyMembershipCardCopyWithImpl<$Res, _$FamilyMembershipCardImpl>
    implements _$$FamilyMembershipCardImplCopyWith<$Res> {
  __$$FamilyMembershipCardImplCopyWithImpl(_$FamilyMembershipCardImpl _value,
      $Res Function(_$FamilyMembershipCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of FamilyMembershipCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
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
    Object? village = null,
    Object? photo = freezed,
    Object? district = null,
    Object? districtId = freezed,
    Object? name = null,
    Object? mobileNo = null,
    Object? membershipNo = null,
    Object? refCode = null,
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? email = freezed,
    Object? joiningDate = null,
    Object? relationship = null,
    Object? voterId = null,
  }) {
    return _then(_$FamilyMembershipCardImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      village: null == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as FamilyDistrict,
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
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      joiningDate: null == joiningDate
          ? _value.joiningDate
          : joiningDate // ignore: cast_nullable_to_non_nullable
              as String,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as int,
      voterId: null == voterId
          ? _value.voterId
          : voterId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FamilyMembershipCardImpl implements _FamilyMembershipCard {
  const _$FamilyMembershipCardImpl(
      {required this.id,
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
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required this.village,
      this.photo,
      required this.district,
      @JsonKey(name: 'district_id') this.districtId,
      required this.name,
      @JsonKey(name: 'mobile_no') required this.mobileNo,
      @JsonKey(name: 'membership_no') required this.membershipNo,
      @JsonKey(name: 'ref_code') required this.refCode,
      required this.gender,
      @JsonKey(name: 'date_of_birth') required this.dateOfBirth,
      this.email,
      @JsonKey(name: 'joining_date') required this.joiningDate,
      required this.relationship,
      @JsonKey(name: 'voter_id') required this.voterId});

  factory _$FamilyMembershipCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilyMembershipCardImplFromJson(json);

  @override
  final int id;
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
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  final String village;
  @override
  final String? photo;
  @override
  final FamilyDistrict district;
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
  final int gender;
  @override
  @JsonKey(name: 'date_of_birth')
  final String dateOfBirth;
  @override
  final String? email;
  @override
  @JsonKey(name: 'joining_date')
  final String joiningDate;
  @override
  final int relationship;
  @override
  @JsonKey(name: 'voter_id')
  final String voterId;

  @override
  String toString() {
    return 'FamilyMembershipCard(id: $id, userId: $userId, refId: $refId, oldRefCode: $oldRefCode, title: $title, address: $address, pinCode: $pinCode, btcAssemblyConstituencyId: $btcAssemblyConstituencyId, btcConstituency: $btcConstituency, partyDistrict: $partyDistrict, assemblyConstituency: $assemblyConstituency, primaryId: $primaryId, boothId: $boothId, villageId: $villageId, createdBy: $createdBy, updateCount: $updateCount, createdAt: $createdAt, updatedAt: $updatedAt, village: $village, photo: $photo, district: $district, districtId: $districtId, name: $name, mobileNo: $mobileNo, membershipNo: $membershipNo, refCode: $refCode, gender: $gender, dateOfBirth: $dateOfBirth, email: $email, joiningDate: $joiningDate, relationship: $relationship, voterId: $voterId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyMembershipCardImpl &&
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
            (identical(other.joiningDate, joiningDate) ||
                other.joiningDate == joiningDate) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.voterId, voterId) || other.voterId == voterId));
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
        joiningDate,
        relationship,
        voterId
      ]);

  /// Create a copy of FamilyMembershipCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FamilyMembershipCardImplCopyWith<_$FamilyMembershipCardImpl>
      get copyWith =>
          __$$FamilyMembershipCardImplCopyWithImpl<_$FamilyMembershipCardImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilyMembershipCardImplToJson(
      this,
    );
  }
}

abstract class _FamilyMembershipCard implements FamilyMembershipCard {
  const factory _FamilyMembershipCard(
          {required final int id,
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
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt,
          required final String village,
          final String? photo,
          required final FamilyDistrict district,
          @JsonKey(name: 'district_id') final int? districtId,
          required final String name,
          @JsonKey(name: 'mobile_no') required final String mobileNo,
          @JsonKey(name: 'membership_no') required final String membershipNo,
          @JsonKey(name: 'ref_code') required final String refCode,
          required final int gender,
          @JsonKey(name: 'date_of_birth') required final String dateOfBirth,
          final String? email,
          @JsonKey(name: 'joining_date') required final String joiningDate,
          required final int relationship,
          @JsonKey(name: 'voter_id') required final String voterId}) =
      _$FamilyMembershipCardImpl;

  factory _FamilyMembershipCard.fromJson(Map<String, dynamic> json) =
      _$FamilyMembershipCardImpl.fromJson;

  @override
  int get id;
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
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  String get village;
  @override
  String? get photo;
  @override
  FamilyDistrict get district;
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
  int get gender;
  @override
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth;
  @override
  String? get email;
  @override
  @JsonKey(name: 'joining_date')
  String get joiningDate;
  @override
  int get relationship;
  @override
  @JsonKey(name: 'voter_id')
  String get voterId;

  /// Create a copy of FamilyMembershipCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FamilyMembershipCardImplCopyWith<_$FamilyMembershipCardImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FamilyDistrict _$FamilyDistrictFromJson(Map<String, dynamic> json) {
  return _FamilyDistrict.fromJson(json);
}

/// @nodoc
mixin _$FamilyDistrict {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this FamilyDistrict to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FamilyDistrict
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FamilyDistrictCopyWith<FamilyDistrict> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyDistrictCopyWith<$Res> {
  factory $FamilyDistrictCopyWith(
          FamilyDistrict value, $Res Function(FamilyDistrict) then) =
      _$FamilyDistrictCopyWithImpl<$Res, FamilyDistrict>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$FamilyDistrictCopyWithImpl<$Res, $Val extends FamilyDistrict>
    implements $FamilyDistrictCopyWith<$Res> {
  _$FamilyDistrictCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FamilyDistrict
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FamilyDistrictImplCopyWith<$Res>
    implements $FamilyDistrictCopyWith<$Res> {
  factory _$$FamilyDistrictImplCopyWith(_$FamilyDistrictImpl value,
          $Res Function(_$FamilyDistrictImpl) then) =
      __$$FamilyDistrictImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$FamilyDistrictImplCopyWithImpl<$Res>
    extends _$FamilyDistrictCopyWithImpl<$Res, _$FamilyDistrictImpl>
    implements _$$FamilyDistrictImplCopyWith<$Res> {
  __$$FamilyDistrictImplCopyWithImpl(
      _$FamilyDistrictImpl _value, $Res Function(_$FamilyDistrictImpl) _then)
      : super(_value, _then);

  /// Create a copy of FamilyDistrict
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$FamilyDistrictImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FamilyDistrictImpl implements _FamilyDistrict {
  const _$FamilyDistrictImpl({required this.id, required this.name});

  factory _$FamilyDistrictImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilyDistrictImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'FamilyDistrict(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyDistrictImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of FamilyDistrict
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FamilyDistrictImplCopyWith<_$FamilyDistrictImpl> get copyWith =>
      __$$FamilyDistrictImplCopyWithImpl<_$FamilyDistrictImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilyDistrictImplToJson(
      this,
    );
  }
}

abstract class _FamilyDistrict implements FamilyDistrict {
  const factory _FamilyDistrict(
      {required final int id,
      required final String name}) = _$FamilyDistrictImpl;

  factory _FamilyDistrict.fromJson(Map<String, dynamic> json) =
      _$FamilyDistrictImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of FamilyDistrict
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FamilyDistrictImplCopyWith<_$FamilyDistrictImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FamilyPersonalDetails _$FamilyPersonalDetailsFromJson(
    Map<String, dynamic> json) {
  return _FamilyPersonalDetails.fromJson(json);
}

/// @nodoc
mixin _$FamilyPersonalDetails {
  @JsonKey(name: 'member_id')
  int get memberId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get religion => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_religion')
  String? get otherReligion => throw _privateConstructorUsedError;
  String? get caste => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get profession => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_profession')
  String? get otherProfession => throw _privateConstructorUsedError;
  String? get education => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_education')
  String? get otherEducation => throw _privateConstructorUsedError;
  @JsonKey(name: 'aadhaar_no')
  String? get aadhaarNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'voter_id')
  String? get voterId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_no')
  String? get mobileNo => throw _privateConstructorUsedError;

  /// Serializes this FamilyPersonalDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FamilyPersonalDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FamilyPersonalDetailsCopyWith<FamilyPersonalDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyPersonalDetailsCopyWith<$Res> {
  factory $FamilyPersonalDetailsCopyWith(FamilyPersonalDetails value,
          $Res Function(FamilyPersonalDetails) then) =
      _$FamilyPersonalDetailsCopyWithImpl<$Res, FamilyPersonalDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'member_id') int memberId,
      String name,
      @JsonKey(name: 'date_of_birth') String dateOfBirth,
      int gender,
      String? email,
      String? religion,
      @JsonKey(name: 'other_religion') String? otherReligion,
      String? caste,
      String? category,
      String? profession,
      @JsonKey(name: 'other_profession') String? otherProfession,
      String? education,
      @JsonKey(name: 'other_education') String? otherEducation,
      @JsonKey(name: 'aadhaar_no') String? aadhaarNo,
      @JsonKey(name: 'voter_id') String? voterId,
      @JsonKey(name: 'mobile_no') String? mobileNo});
}

/// @nodoc
class _$FamilyPersonalDetailsCopyWithImpl<$Res,
        $Val extends FamilyPersonalDetails>
    implements $FamilyPersonalDetailsCopyWith<$Res> {
  _$FamilyPersonalDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FamilyPersonalDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? name = null,
    Object? dateOfBirth = null,
    Object? gender = null,
    Object? email = freezed,
    Object? religion = freezed,
    Object? otherReligion = freezed,
    Object? caste = freezed,
    Object? category = freezed,
    Object? profession = freezed,
    Object? otherProfession = freezed,
    Object? education = freezed,
    Object? otherEducation = freezed,
    Object? aadhaarNo = freezed,
    Object? voterId = freezed,
    Object? mobileNo = freezed,
  }) {
    return _then(_value.copyWith(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      religion: freezed == religion
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as String?,
      otherReligion: freezed == otherReligion
          ? _value.otherReligion
          : otherReligion // ignore: cast_nullable_to_non_nullable
              as String?,
      caste: freezed == caste
          ? _value.caste
          : caste // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      otherProfession: freezed == otherProfession
          ? _value.otherProfession
          : otherProfession // ignore: cast_nullable_to_non_nullable
              as String?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String?,
      otherEducation: freezed == otherEducation
          ? _value.otherEducation
          : otherEducation // ignore: cast_nullable_to_non_nullable
              as String?,
      aadhaarNo: freezed == aadhaarNo
          ? _value.aadhaarNo
          : aadhaarNo // ignore: cast_nullable_to_non_nullable
              as String?,
      voterId: freezed == voterId
          ? _value.voterId
          : voterId // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FamilyPersonalDetailsImplCopyWith<$Res>
    implements $FamilyPersonalDetailsCopyWith<$Res> {
  factory _$$FamilyPersonalDetailsImplCopyWith(
          _$FamilyPersonalDetailsImpl value,
          $Res Function(_$FamilyPersonalDetailsImpl) then) =
      __$$FamilyPersonalDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'member_id') int memberId,
      String name,
      @JsonKey(name: 'date_of_birth') String dateOfBirth,
      int gender,
      String? email,
      String? religion,
      @JsonKey(name: 'other_religion') String? otherReligion,
      String? caste,
      String? category,
      String? profession,
      @JsonKey(name: 'other_profession') String? otherProfession,
      String? education,
      @JsonKey(name: 'other_education') String? otherEducation,
      @JsonKey(name: 'aadhaar_no') String? aadhaarNo,
      @JsonKey(name: 'voter_id') String? voterId,
      @JsonKey(name: 'mobile_no') String? mobileNo});
}

/// @nodoc
class __$$FamilyPersonalDetailsImplCopyWithImpl<$Res>
    extends _$FamilyPersonalDetailsCopyWithImpl<$Res,
        _$FamilyPersonalDetailsImpl>
    implements _$$FamilyPersonalDetailsImplCopyWith<$Res> {
  __$$FamilyPersonalDetailsImplCopyWithImpl(_$FamilyPersonalDetailsImpl _value,
      $Res Function(_$FamilyPersonalDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of FamilyPersonalDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? name = null,
    Object? dateOfBirth = null,
    Object? gender = null,
    Object? email = freezed,
    Object? religion = freezed,
    Object? otherReligion = freezed,
    Object? caste = freezed,
    Object? category = freezed,
    Object? profession = freezed,
    Object? otherProfession = freezed,
    Object? education = freezed,
    Object? otherEducation = freezed,
    Object? aadhaarNo = freezed,
    Object? voterId = freezed,
    Object? mobileNo = freezed,
  }) {
    return _then(_$FamilyPersonalDetailsImpl(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      religion: freezed == religion
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as String?,
      otherReligion: freezed == otherReligion
          ? _value.otherReligion
          : otherReligion // ignore: cast_nullable_to_non_nullable
              as String?,
      caste: freezed == caste
          ? _value.caste
          : caste // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      otherProfession: freezed == otherProfession
          ? _value.otherProfession
          : otherProfession // ignore: cast_nullable_to_non_nullable
              as String?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String?,
      otherEducation: freezed == otherEducation
          ? _value.otherEducation
          : otherEducation // ignore: cast_nullable_to_non_nullable
              as String?,
      aadhaarNo: freezed == aadhaarNo
          ? _value.aadhaarNo
          : aadhaarNo // ignore: cast_nullable_to_non_nullable
              as String?,
      voterId: freezed == voterId
          ? _value.voterId
          : voterId // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FamilyPersonalDetailsImpl implements _FamilyPersonalDetails {
  const _$FamilyPersonalDetailsImpl(
      {@JsonKey(name: 'member_id') required this.memberId,
      required this.name,
      @JsonKey(name: 'date_of_birth') required this.dateOfBirth,
      required this.gender,
      this.email,
      this.religion,
      @JsonKey(name: 'other_religion') this.otherReligion,
      this.caste,
      this.category,
      this.profession,
      @JsonKey(name: 'other_profession') this.otherProfession,
      this.education,
      @JsonKey(name: 'other_education') this.otherEducation,
      @JsonKey(name: 'aadhaar_no') this.aadhaarNo,
      @JsonKey(name: 'voter_id') this.voterId,
      @JsonKey(name: 'mobile_no') this.mobileNo});

  factory _$FamilyPersonalDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilyPersonalDetailsImplFromJson(json);

  @override
  @JsonKey(name: 'member_id')
  final int memberId;
  @override
  final String name;
  @override
  @JsonKey(name: 'date_of_birth')
  final String dateOfBirth;
  @override
  final int gender;
  @override
  final String? email;
  @override
  final String? religion;
  @override
  @JsonKey(name: 'other_religion')
  final String? otherReligion;
  @override
  final String? caste;
  @override
  final String? category;
  @override
  final String? profession;
  @override
  @JsonKey(name: 'other_profession')
  final String? otherProfession;
  @override
  final String? education;
  @override
  @JsonKey(name: 'other_education')
  final String? otherEducation;
  @override
  @JsonKey(name: 'aadhaar_no')
  final String? aadhaarNo;
  @override
  @JsonKey(name: 'voter_id')
  final String? voterId;
  @override
  @JsonKey(name: 'mobile_no')
  final String? mobileNo;

  @override
  String toString() {
    return 'FamilyPersonalDetails(memberId: $memberId, name: $name, dateOfBirth: $dateOfBirth, gender: $gender, email: $email, religion: $religion, otherReligion: $otherReligion, caste: $caste, category: $category, profession: $profession, otherProfession: $otherProfession, education: $education, otherEducation: $otherEducation, aadhaarNo: $aadhaarNo, voterId: $voterId, mobileNo: $mobileNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyPersonalDetailsImpl &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.religion, religion) ||
                other.religion == religion) &&
            (identical(other.otherReligion, otherReligion) ||
                other.otherReligion == otherReligion) &&
            (identical(other.caste, caste) || other.caste == caste) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.otherProfession, otherProfession) ||
                other.otherProfession == otherProfession) &&
            (identical(other.education, education) ||
                other.education == education) &&
            (identical(other.otherEducation, otherEducation) ||
                other.otherEducation == otherEducation) &&
            (identical(other.aadhaarNo, aadhaarNo) ||
                other.aadhaarNo == aadhaarNo) &&
            (identical(other.voterId, voterId) || other.voterId == voterId) &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      memberId,
      name,
      dateOfBirth,
      gender,
      email,
      religion,
      otherReligion,
      caste,
      category,
      profession,
      otherProfession,
      education,
      otherEducation,
      aadhaarNo,
      voterId,
      mobileNo);

  /// Create a copy of FamilyPersonalDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FamilyPersonalDetailsImplCopyWith<_$FamilyPersonalDetailsImpl>
      get copyWith => __$$FamilyPersonalDetailsImplCopyWithImpl<
          _$FamilyPersonalDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilyPersonalDetailsImplToJson(
      this,
    );
  }
}

abstract class _FamilyPersonalDetails implements FamilyPersonalDetails {
  const factory _FamilyPersonalDetails(
          {@JsonKey(name: 'member_id') required final int memberId,
          required final String name,
          @JsonKey(name: 'date_of_birth') required final String dateOfBirth,
          required final int gender,
          final String? email,
          final String? religion,
          @JsonKey(name: 'other_religion') final String? otherReligion,
          final String? caste,
          final String? category,
          final String? profession,
          @JsonKey(name: 'other_profession') final String? otherProfession,
          final String? education,
          @JsonKey(name: 'other_education') final String? otherEducation,
          @JsonKey(name: 'aadhaar_no') final String? aadhaarNo,
          @JsonKey(name: 'voter_id') final String? voterId,
          @JsonKey(name: 'mobile_no') final String? mobileNo}) =
      _$FamilyPersonalDetailsImpl;

  factory _FamilyPersonalDetails.fromJson(Map<String, dynamic> json) =
      _$FamilyPersonalDetailsImpl.fromJson;

  @override
  @JsonKey(name: 'member_id')
  int get memberId;
  @override
  String get name;
  @override
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth;
  @override
  int get gender;
  @override
  String? get email;
  @override
  String? get religion;
  @override
  @JsonKey(name: 'other_religion')
  String? get otherReligion;
  @override
  String? get caste;
  @override
  String? get category;
  @override
  String? get profession;
  @override
  @JsonKey(name: 'other_profession')
  String? get otherProfession;
  @override
  String? get education;
  @override
  @JsonKey(name: 'other_education')
  String? get otherEducation;
  @override
  @JsonKey(name: 'aadhaar_no')
  String? get aadhaarNo;
  @override
  @JsonKey(name: 'voter_id')
  String? get voterId;
  @override
  @JsonKey(name: 'mobile_no')
  String? get mobileNo;

  /// Create a copy of FamilyPersonalDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FamilyPersonalDetailsImplCopyWith<_$FamilyPersonalDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
