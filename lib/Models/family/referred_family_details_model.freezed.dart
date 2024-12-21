// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referred_family_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReferredFamilyDetailsModel _$ReferredFamilyDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _ReferredFamilyDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$ReferredFamilyDetailsModel {
  int get status =>
      throw _privateConstructorUsedError; // Defaulting to 0 if not provided
  String get message =>
      throw _privateConstructorUsedError; // Defaulting to 'Unauthorized' for message
  FamilyData get data =>
      throw _privateConstructorUsedError; // Defaulting to empty FamilyData
  int get code => throw _privateConstructorUsedError;

  /// Serializes this ReferredFamilyDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferredFamilyDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferredFamilyDetailsModelCopyWith<ReferredFamilyDetailsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferredFamilyDetailsModelCopyWith<$Res> {
  factory $ReferredFamilyDetailsModelCopyWith(ReferredFamilyDetailsModel value,
          $Res Function(ReferredFamilyDetailsModel) then) =
      _$ReferredFamilyDetailsModelCopyWithImpl<$Res,
          ReferredFamilyDetailsModel>;
  @useResult
  $Res call({int status, String message, FamilyData data, int code});

  $FamilyDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ReferredFamilyDetailsModelCopyWithImpl<$Res,
        $Val extends ReferredFamilyDetailsModel>
    implements $ReferredFamilyDetailsModelCopyWith<$Res> {
  _$ReferredFamilyDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferredFamilyDetailsModel
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
              as FamilyData,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of ReferredFamilyDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FamilyDataCopyWith<$Res> get data {
    return $FamilyDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReferredFamilyDetailsModelImplCopyWith<$Res>
    implements $ReferredFamilyDetailsModelCopyWith<$Res> {
  factory _$$ReferredFamilyDetailsModelImplCopyWith(
          _$ReferredFamilyDetailsModelImpl value,
          $Res Function(_$ReferredFamilyDetailsModelImpl) then) =
      __$$ReferredFamilyDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, FamilyData data, int code});

  @override
  $FamilyDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ReferredFamilyDetailsModelImplCopyWithImpl<$Res>
    extends _$ReferredFamilyDetailsModelCopyWithImpl<$Res,
        _$ReferredFamilyDetailsModelImpl>
    implements _$$ReferredFamilyDetailsModelImplCopyWith<$Res> {
  __$$ReferredFamilyDetailsModelImplCopyWithImpl(
      _$ReferredFamilyDetailsModelImpl _value,
      $Res Function(_$ReferredFamilyDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferredFamilyDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
    Object? code = null,
  }) {
    return _then(_$ReferredFamilyDetailsModelImpl(
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
              as FamilyData,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferredFamilyDetailsModelImpl implements _ReferredFamilyDetailsModel {
  const _$ReferredFamilyDetailsModelImpl(
      {this.status = 0,
      this.message = 'Unauthorized',
      this.data = const FamilyData(familyDetails: []),
      this.code = 401});

  factory _$ReferredFamilyDetailsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ReferredFamilyDetailsModelImplFromJson(json);

  @override
  @JsonKey()
  final int status;
// Defaulting to 0 if not provided
  @override
  @JsonKey()
  final String message;
// Defaulting to 'Unauthorized' for message
  @override
  @JsonKey()
  final FamilyData data;
// Defaulting to empty FamilyData
  @override
  @JsonKey()
  final int code;

  @override
  String toString() {
    return 'ReferredFamilyDetailsModel(status: $status, message: $message, data: $data, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferredFamilyDetailsModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data, code);

  /// Create a copy of ReferredFamilyDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferredFamilyDetailsModelImplCopyWith<_$ReferredFamilyDetailsModelImpl>
      get copyWith => __$$ReferredFamilyDetailsModelImplCopyWithImpl<
          _$ReferredFamilyDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferredFamilyDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _ReferredFamilyDetailsModel
    implements ReferredFamilyDetailsModel {
  const factory _ReferredFamilyDetailsModel(
      {final int status,
      final String message,
      final FamilyData data,
      final int code}) = _$ReferredFamilyDetailsModelImpl;

  factory _ReferredFamilyDetailsModel.fromJson(Map<String, dynamic> json) =
      _$ReferredFamilyDetailsModelImpl.fromJson;

  @override
  int get status; // Defaulting to 0 if not provided
  @override
  String get message; // Defaulting to 'Unauthorized' for message
  @override
  FamilyData get data; // Defaulting to empty FamilyData
  @override
  int get code;

  /// Create a copy of ReferredFamilyDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferredFamilyDetailsModelImplCopyWith<_$ReferredFamilyDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FamilyData _$FamilyDataFromJson(Map<String, dynamic> json) {
  return _FamilyData.fromJson(json);
}

/// @nodoc
mixin _$FamilyData {
  @JsonKey(name: 'family_details')
  List<ReferredMemberFamilyDetails> get familyDetails =>
      throw _privateConstructorUsedError;

  /// Serializes this FamilyData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FamilyData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FamilyDataCopyWith<FamilyData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyDataCopyWith<$Res> {
  factory $FamilyDataCopyWith(
          FamilyData value, $Res Function(FamilyData) then) =
      _$FamilyDataCopyWithImpl<$Res, FamilyData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'family_details')
      List<ReferredMemberFamilyDetails> familyDetails});
}

/// @nodoc
class _$FamilyDataCopyWithImpl<$Res, $Val extends FamilyData>
    implements $FamilyDataCopyWith<$Res> {
  _$FamilyDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FamilyData
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
              as List<ReferredMemberFamilyDetails>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FamilyDataImplCopyWith<$Res>
    implements $FamilyDataCopyWith<$Res> {
  factory _$$FamilyDataImplCopyWith(
          _$FamilyDataImpl value, $Res Function(_$FamilyDataImpl) then) =
      __$$FamilyDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'family_details')
      List<ReferredMemberFamilyDetails> familyDetails});
}

/// @nodoc
class __$$FamilyDataImplCopyWithImpl<$Res>
    extends _$FamilyDataCopyWithImpl<$Res, _$FamilyDataImpl>
    implements _$$FamilyDataImplCopyWith<$Res> {
  __$$FamilyDataImplCopyWithImpl(
      _$FamilyDataImpl _value, $Res Function(_$FamilyDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of FamilyData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? familyDetails = null,
  }) {
    return _then(_$FamilyDataImpl(
      familyDetails: null == familyDetails
          ? _value._familyDetails
          : familyDetails // ignore: cast_nullable_to_non_nullable
              as List<ReferredMemberFamilyDetails>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FamilyDataImpl implements _FamilyData {
  const _$FamilyDataImpl(
      {@JsonKey(name: 'family_details')
      required final List<ReferredMemberFamilyDetails> familyDetails})
      : _familyDetails = familyDetails;

  factory _$FamilyDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilyDataImplFromJson(json);

  final List<ReferredMemberFamilyDetails> _familyDetails;
  @override
  @JsonKey(name: 'family_details')
  List<ReferredMemberFamilyDetails> get familyDetails {
    if (_familyDetails is EqualUnmodifiableListView) return _familyDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_familyDetails);
  }

  @override
  String toString() {
    return 'FamilyData(familyDetails: $familyDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyDataImpl &&
            const DeepCollectionEquality()
                .equals(other._familyDetails, _familyDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_familyDetails));

  /// Create a copy of FamilyData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FamilyDataImplCopyWith<_$FamilyDataImpl> get copyWith =>
      __$$FamilyDataImplCopyWithImpl<_$FamilyDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilyDataImplToJson(
      this,
    );
  }
}

abstract class _FamilyData implements FamilyData {
  const factory _FamilyData(
          {@JsonKey(name: 'family_details')
          required final List<ReferredMemberFamilyDetails> familyDetails}) =
      _$FamilyDataImpl;

  factory _FamilyData.fromJson(Map<String, dynamic> json) =
      _$FamilyDataImpl.fromJson;

  @override
  @JsonKey(name: 'family_details')
  List<ReferredMemberFamilyDetails> get familyDetails;

  /// Create a copy of FamilyData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FamilyDataImplCopyWith<_$FamilyDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReferredMemberFamilyDetails _$ReferredMemberFamilyDetailsFromJson(
    Map<String, dynamic> json) {
  return _ReferredMemberFamilyDetails.fromJson(json);
}

/// @nodoc
mixin _$ReferredMemberFamilyDetails {
  @JsonKey(name: 'membership_card')
  MembershipCard get membershipCard => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_details')
  ReferredPersonalDetails get personalDetails =>
      throw _privateConstructorUsedError;

  /// Serializes this ReferredMemberFamilyDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferredMemberFamilyDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferredMemberFamilyDetailsCopyWith<ReferredMemberFamilyDetails>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferredMemberFamilyDetailsCopyWith<$Res> {
  factory $ReferredMemberFamilyDetailsCopyWith(
          ReferredMemberFamilyDetails value,
          $Res Function(ReferredMemberFamilyDetails) then) =
      _$ReferredMemberFamilyDetailsCopyWithImpl<$Res,
          ReferredMemberFamilyDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'membership_card') MembershipCard membershipCard,
      @JsonKey(name: 'personal_details')
      ReferredPersonalDetails personalDetails});

  $MembershipCardCopyWith<$Res> get membershipCard;
  $ReferredPersonalDetailsCopyWith<$Res> get personalDetails;
}

/// @nodoc
class _$ReferredMemberFamilyDetailsCopyWithImpl<$Res,
        $Val extends ReferredMemberFamilyDetails>
    implements $ReferredMemberFamilyDetailsCopyWith<$Res> {
  _$ReferredMemberFamilyDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferredMemberFamilyDetails
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
              as MembershipCard,
      personalDetails: null == personalDetails
          ? _value.personalDetails
          : personalDetails // ignore: cast_nullable_to_non_nullable
              as ReferredPersonalDetails,
    ) as $Val);
  }

  /// Create a copy of ReferredMemberFamilyDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MembershipCardCopyWith<$Res> get membershipCard {
    return $MembershipCardCopyWith<$Res>(_value.membershipCard, (value) {
      return _then(_value.copyWith(membershipCard: value) as $Val);
    });
  }

  /// Create a copy of ReferredMemberFamilyDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferredPersonalDetailsCopyWith<$Res> get personalDetails {
    return $ReferredPersonalDetailsCopyWith<$Res>(_value.personalDetails,
        (value) {
      return _then(_value.copyWith(personalDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReferredMemberFamilyDetailsImplCopyWith<$Res>
    implements $ReferredMemberFamilyDetailsCopyWith<$Res> {
  factory _$$ReferredMemberFamilyDetailsImplCopyWith(
          _$ReferredMemberFamilyDetailsImpl value,
          $Res Function(_$ReferredMemberFamilyDetailsImpl) then) =
      __$$ReferredMemberFamilyDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'membership_card') MembershipCard membershipCard,
      @JsonKey(name: 'personal_details')
      ReferredPersonalDetails personalDetails});

  @override
  $MembershipCardCopyWith<$Res> get membershipCard;
  @override
  $ReferredPersonalDetailsCopyWith<$Res> get personalDetails;
}

/// @nodoc
class __$$ReferredMemberFamilyDetailsImplCopyWithImpl<$Res>
    extends _$ReferredMemberFamilyDetailsCopyWithImpl<$Res,
        _$ReferredMemberFamilyDetailsImpl>
    implements _$$ReferredMemberFamilyDetailsImplCopyWith<$Res> {
  __$$ReferredMemberFamilyDetailsImplCopyWithImpl(
      _$ReferredMemberFamilyDetailsImpl _value,
      $Res Function(_$ReferredMemberFamilyDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferredMemberFamilyDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? membershipCard = null,
    Object? personalDetails = null,
  }) {
    return _then(_$ReferredMemberFamilyDetailsImpl(
      membershipCard: null == membershipCard
          ? _value.membershipCard
          : membershipCard // ignore: cast_nullable_to_non_nullable
              as MembershipCard,
      personalDetails: null == personalDetails
          ? _value.personalDetails
          : personalDetails // ignore: cast_nullable_to_non_nullable
              as ReferredPersonalDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferredMemberFamilyDetailsImpl
    implements _ReferredMemberFamilyDetails {
  const _$ReferredMemberFamilyDetailsImpl(
      {@JsonKey(name: 'membership_card') required this.membershipCard,
      @JsonKey(name: 'personal_details') required this.personalDetails});

  factory _$ReferredMemberFamilyDetailsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ReferredMemberFamilyDetailsImplFromJson(json);

  @override
  @JsonKey(name: 'membership_card')
  final MembershipCard membershipCard;
  @override
  @JsonKey(name: 'personal_details')
  final ReferredPersonalDetails personalDetails;

  @override
  String toString() {
    return 'ReferredMemberFamilyDetails(membershipCard: $membershipCard, personalDetails: $personalDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferredMemberFamilyDetailsImpl &&
            (identical(other.membershipCard, membershipCard) ||
                other.membershipCard == membershipCard) &&
            (identical(other.personalDetails, personalDetails) ||
                other.personalDetails == personalDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, membershipCard, personalDetails);

  /// Create a copy of ReferredMemberFamilyDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferredMemberFamilyDetailsImplCopyWith<_$ReferredMemberFamilyDetailsImpl>
      get copyWith => __$$ReferredMemberFamilyDetailsImplCopyWithImpl<
          _$ReferredMemberFamilyDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferredMemberFamilyDetailsImplToJson(
      this,
    );
  }
}

abstract class _ReferredMemberFamilyDetails
    implements ReferredMemberFamilyDetails {
  const factory _ReferredMemberFamilyDetails(
          {@JsonKey(name: 'membership_card')
          required final MembershipCard membershipCard,
          @JsonKey(name: 'personal_details')
          required final ReferredPersonalDetails personalDetails}) =
      _$ReferredMemberFamilyDetailsImpl;

  factory _ReferredMemberFamilyDetails.fromJson(Map<String, dynamic> json) =
      _$ReferredMemberFamilyDetailsImpl.fromJson;

  @override
  @JsonKey(name: 'membership_card')
  MembershipCard get membershipCard;
  @override
  @JsonKey(name: 'personal_details')
  ReferredPersonalDetails get personalDetails;

  /// Create a copy of ReferredMemberFamilyDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferredMemberFamilyDetailsImplCopyWith<_$ReferredMemberFamilyDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MembershipCard _$MembershipCardFromJson(Map<String, dynamic> json) {
  return _MembershipCard.fromJson(json);
}

/// @nodoc
mixin _$MembershipCard {
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
  @JsonKey(name: 'primary_name')
  String? get primaryName => throw _privateConstructorUsedError;
  District get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'district_id')
  int? get districtId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_no')
  String? get mobileNo => throw _privateConstructorUsedError;
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

  /// Serializes this MembershipCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MembershipCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MembershipCardCopyWith<MembershipCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembershipCardCopyWith<$Res> {
  factory $MembershipCardCopyWith(
          MembershipCard value, $Res Function(MembershipCard) then) =
      _$MembershipCardCopyWithImpl<$Res, MembershipCard>;
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
      @JsonKey(name: 'primary_name') String? primaryName,
      District district,
      @JsonKey(name: 'district_id') int? districtId,
      String name,
      @JsonKey(name: 'mobile_no') String? mobileNo,
      @JsonKey(name: 'membership_no') String membershipNo,
      @JsonKey(name: 'ref_code') String refCode,
      int gender,
      @JsonKey(name: 'date_of_birth') String dateOfBirth,
      String? email,
      @JsonKey(name: 'joining_date') String joiningDate,
      int relationship});

  $DistrictCopyWith<$Res> get district;
}

/// @nodoc
class _$MembershipCardCopyWithImpl<$Res, $Val extends MembershipCard>
    implements $MembershipCardCopyWith<$Res> {
  _$MembershipCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MembershipCard
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
    Object? primaryName = freezed,
    Object? district = null,
    Object? districtId = freezed,
    Object? name = null,
    Object? mobileNo = freezed,
    Object? membershipNo = null,
    Object? refCode = null,
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? email = freezed,
    Object? joiningDate = null,
    Object? relationship = null,
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
      primaryName: freezed == primaryName
          ? _value.primaryName
          : primaryName // ignore: cast_nullable_to_non_nullable
              as String?,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as District,
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }

  /// Create a copy of MembershipCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DistrictCopyWith<$Res> get district {
    return $DistrictCopyWith<$Res>(_value.district, (value) {
      return _then(_value.copyWith(district: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MembershipCardImplCopyWith<$Res>
    implements $MembershipCardCopyWith<$Res> {
  factory _$$MembershipCardImplCopyWith(_$MembershipCardImpl value,
          $Res Function(_$MembershipCardImpl) then) =
      __$$MembershipCardImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'primary_name') String? primaryName,
      District district,
      @JsonKey(name: 'district_id') int? districtId,
      String name,
      @JsonKey(name: 'mobile_no') String? mobileNo,
      @JsonKey(name: 'membership_no') String membershipNo,
      @JsonKey(name: 'ref_code') String refCode,
      int gender,
      @JsonKey(name: 'date_of_birth') String dateOfBirth,
      String? email,
      @JsonKey(name: 'joining_date') String joiningDate,
      int relationship});

  @override
  $DistrictCopyWith<$Res> get district;
}

/// @nodoc
class __$$MembershipCardImplCopyWithImpl<$Res>
    extends _$MembershipCardCopyWithImpl<$Res, _$MembershipCardImpl>
    implements _$$MembershipCardImplCopyWith<$Res> {
  __$$MembershipCardImplCopyWithImpl(
      _$MembershipCardImpl _value, $Res Function(_$MembershipCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of MembershipCard
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
    Object? primaryName = freezed,
    Object? district = null,
    Object? districtId = freezed,
    Object? name = null,
    Object? mobileNo = freezed,
    Object? membershipNo = null,
    Object? refCode = null,
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? email = freezed,
    Object? joiningDate = null,
    Object? relationship = null,
  }) {
    return _then(_$MembershipCardImpl(
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
      primaryName: freezed == primaryName
          ? _value.primaryName
          : primaryName // ignore: cast_nullable_to_non_nullable
              as String?,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as District,
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MembershipCardImpl implements _MembershipCard {
  const _$MembershipCardImpl(
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
      @JsonKey(name: 'primary_name') this.primaryName,
      required this.district,
      @JsonKey(name: 'district_id') this.districtId,
      required this.name,
      @JsonKey(name: 'mobile_no') this.mobileNo,
      @JsonKey(name: 'membership_no') required this.membershipNo,
      @JsonKey(name: 'ref_code') required this.refCode,
      required this.gender,
      @JsonKey(name: 'date_of_birth') required this.dateOfBirth,
      this.email,
      @JsonKey(name: 'joining_date') required this.joiningDate,
      required this.relationship});

  factory _$MembershipCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$MembershipCardImplFromJson(json);

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
  @JsonKey(name: 'primary_name')
  final String? primaryName;
  @override
  final District district;
  @override
  @JsonKey(name: 'district_id')
  final int? districtId;
  @override
  final String name;
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
  String toString() {
    return 'MembershipCard(id: $id, userId: $userId, refId: $refId, oldRefCode: $oldRefCode, title: $title, address: $address, pinCode: $pinCode, btcAssemblyConstituencyId: $btcAssemblyConstituencyId, btcConstituency: $btcConstituency, partyDistrict: $partyDistrict, assemblyConstituency: $assemblyConstituency, primaryId: $primaryId, boothId: $boothId, villageId: $villageId, createdBy: $createdBy, updateCount: $updateCount, createdAt: $createdAt, updatedAt: $updatedAt, village: $village, photo: $photo, primaryName: $primaryName, district: $district, districtId: $districtId, name: $name, mobileNo: $mobileNo, membershipNo: $membershipNo, refCode: $refCode, gender: $gender, dateOfBirth: $dateOfBirth, email: $email, joiningDate: $joiningDate, relationship: $relationship)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MembershipCardImpl &&
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
            (identical(other.primaryName, primaryName) ||
                other.primaryName == primaryName) &&
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
                other.relationship == relationship));
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
        primaryName,
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
        relationship
      ]);

  /// Create a copy of MembershipCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MembershipCardImplCopyWith<_$MembershipCardImpl> get copyWith =>
      __$$MembershipCardImplCopyWithImpl<_$MembershipCardImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MembershipCardImplToJson(
      this,
    );
  }
}

abstract class _MembershipCard implements MembershipCard {
  const factory _MembershipCard(
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
      @JsonKey(name: 'primary_name') final String? primaryName,
      required final District district,
      @JsonKey(name: 'district_id') final int? districtId,
      required final String name,
      @JsonKey(name: 'mobile_no') final String? mobileNo,
      @JsonKey(name: 'membership_no') required final String membershipNo,
      @JsonKey(name: 'ref_code') required final String refCode,
      required final int gender,
      @JsonKey(name: 'date_of_birth') required final String dateOfBirth,
      final String? email,
      @JsonKey(name: 'joining_date') required final String joiningDate,
      required final int relationship}) = _$MembershipCardImpl;

  factory _MembershipCard.fromJson(Map<String, dynamic> json) =
      _$MembershipCardImpl.fromJson;

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
  @JsonKey(name: 'primary_name')
  String? get primaryName;
  @override
  District get district;
  @override
  @JsonKey(name: 'district_id')
  int? get districtId;
  @override
  String get name;
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
  @JsonKey(name: 'date_of_birth')
  String get dateOfBirth;
  @override
  String? get email;
  @override
  @JsonKey(name: 'joining_date')
  String get joiningDate;
  @override
  int get relationship;

  /// Create a copy of MembershipCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MembershipCardImplCopyWith<_$MembershipCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReferredPersonalDetails _$ReferredPersonalDetailsFromJson(
    Map<String, dynamic> json) {
  return _ReferredPersonalDetails.fromJson(json);
}

/// @nodoc
mixin _$ReferredPersonalDetails {
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
  String get voterId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_no')
  String? get mobileNo => throw _privateConstructorUsedError;

  /// Serializes this ReferredPersonalDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferredPersonalDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferredPersonalDetailsCopyWith<ReferredPersonalDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferredPersonalDetailsCopyWith<$Res> {
  factory $ReferredPersonalDetailsCopyWith(ReferredPersonalDetails value,
          $Res Function(ReferredPersonalDetails) then) =
      _$ReferredPersonalDetailsCopyWithImpl<$Res, ReferredPersonalDetails>;
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
      @JsonKey(name: 'voter_id') String voterId,
      @JsonKey(name: 'mobile_no') String? mobileNo});
}

/// @nodoc
class _$ReferredPersonalDetailsCopyWithImpl<$Res,
        $Val extends ReferredPersonalDetails>
    implements $ReferredPersonalDetailsCopyWith<$Res> {
  _$ReferredPersonalDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferredPersonalDetails
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
    Object? voterId = null,
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
      voterId: null == voterId
          ? _value.voterId
          : voterId // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferredPersonalDetailsImplCopyWith<$Res>
    implements $ReferredPersonalDetailsCopyWith<$Res> {
  factory _$$ReferredPersonalDetailsImplCopyWith(
          _$ReferredPersonalDetailsImpl value,
          $Res Function(_$ReferredPersonalDetailsImpl) then) =
      __$$ReferredPersonalDetailsImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'voter_id') String voterId,
      @JsonKey(name: 'mobile_no') String? mobileNo});
}

/// @nodoc
class __$$ReferredPersonalDetailsImplCopyWithImpl<$Res>
    extends _$ReferredPersonalDetailsCopyWithImpl<$Res,
        _$ReferredPersonalDetailsImpl>
    implements _$$ReferredPersonalDetailsImplCopyWith<$Res> {
  __$$ReferredPersonalDetailsImplCopyWithImpl(
      _$ReferredPersonalDetailsImpl _value,
      $Res Function(_$ReferredPersonalDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferredPersonalDetails
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
    Object? voterId = null,
    Object? mobileNo = freezed,
  }) {
    return _then(_$ReferredPersonalDetailsImpl(
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
      voterId: null == voterId
          ? _value.voterId
          : voterId // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferredPersonalDetailsImpl implements _ReferredPersonalDetails {
  const _$ReferredPersonalDetailsImpl(
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
      @JsonKey(name: 'voter_id') required this.voterId,
      @JsonKey(name: 'mobile_no') this.mobileNo});

  factory _$ReferredPersonalDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferredPersonalDetailsImplFromJson(json);

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
  final String voterId;
  @override
  @JsonKey(name: 'mobile_no')
  final String? mobileNo;

  @override
  String toString() {
    return 'ReferredPersonalDetails(memberId: $memberId, name: $name, dateOfBirth: $dateOfBirth, gender: $gender, email: $email, religion: $religion, otherReligion: $otherReligion, caste: $caste, category: $category, profession: $profession, otherProfession: $otherProfession, education: $education, otherEducation: $otherEducation, aadhaarNo: $aadhaarNo, voterId: $voterId, mobileNo: $mobileNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferredPersonalDetailsImpl &&
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

  /// Create a copy of ReferredPersonalDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferredPersonalDetailsImplCopyWith<_$ReferredPersonalDetailsImpl>
      get copyWith => __$$ReferredPersonalDetailsImplCopyWithImpl<
          _$ReferredPersonalDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferredPersonalDetailsImplToJson(
      this,
    );
  }
}

abstract class _ReferredPersonalDetails implements ReferredPersonalDetails {
  const factory _ReferredPersonalDetails(
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
          @JsonKey(name: 'voter_id') required final String voterId,
          @JsonKey(name: 'mobile_no') final String? mobileNo}) =
      _$ReferredPersonalDetailsImpl;

  factory _ReferredPersonalDetails.fromJson(Map<String, dynamic> json) =
      _$ReferredPersonalDetailsImpl.fromJson;

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
  String get voterId;
  @override
  @JsonKey(name: 'mobile_no')
  String? get mobileNo;

  /// Create a copy of ReferredPersonalDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferredPersonalDetailsImplCopyWith<_$ReferredPersonalDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
