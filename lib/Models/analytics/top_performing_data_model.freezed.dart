// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_performing_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TopPerformingDataModel {
  List<TopPerformingData> get data => throw _privateConstructorUsedError;
  int get draw => throw _privateConstructorUsedError;
  int get recordsTotal => throw _privateConstructorUsedError;
  int get recordsFiltered => throw _privateConstructorUsedError;

  /// Create a copy of TopPerformingDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopPerformingDataModelCopyWith<TopPerformingDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopPerformingDataModelCopyWith<$Res> {
  factory $TopPerformingDataModelCopyWith(TopPerformingDataModel value,
          $Res Function(TopPerformingDataModel) then) =
      _$TopPerformingDataModelCopyWithImpl<$Res, TopPerformingDataModel>;
  @useResult
  $Res call(
      {List<TopPerformingData> data,
      int draw,
      int recordsTotal,
      int recordsFiltered});
}

/// @nodoc
class _$TopPerformingDataModelCopyWithImpl<$Res,
        $Val extends TopPerformingDataModel>
    implements $TopPerformingDataModelCopyWith<$Res> {
  _$TopPerformingDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopPerformingDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? draw = null,
    Object? recordsTotal = null,
    Object? recordsFiltered = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TopPerformingData>,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopPerformingDataModelImplCopyWith<$Res>
    implements $TopPerformingDataModelCopyWith<$Res> {
  factory _$$TopPerformingDataModelImplCopyWith(
          _$TopPerformingDataModelImpl value,
          $Res Function(_$TopPerformingDataModelImpl) then) =
      __$$TopPerformingDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TopPerformingData> data,
      int draw,
      int recordsTotal,
      int recordsFiltered});
}

/// @nodoc
class __$$TopPerformingDataModelImplCopyWithImpl<$Res>
    extends _$TopPerformingDataModelCopyWithImpl<$Res,
        _$TopPerformingDataModelImpl>
    implements _$$TopPerformingDataModelImplCopyWith<$Res> {
  __$$TopPerformingDataModelImplCopyWithImpl(
      _$TopPerformingDataModelImpl _value,
      $Res Function(_$TopPerformingDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopPerformingDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? draw = null,
    Object? recordsTotal = null,
    Object? recordsFiltered = null,
  }) {
    return _then(_$TopPerformingDataModelImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TopPerformingData>,
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
    ));
  }
}

/// @nodoc

class _$TopPerformingDataModelImpl implements _TopPerformingDataModel {
  const _$TopPerformingDataModelImpl(
      {required final List<TopPerformingData> data,
      required this.draw,
      required this.recordsTotal,
      required this.recordsFiltered})
      : _data = data;

  final List<TopPerformingData> _data;
  @override
  List<TopPerformingData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int draw;
  @override
  final int recordsTotal;
  @override
  final int recordsFiltered;

  @override
  String toString() {
    return 'TopPerformingDataModel(data: $data, draw: $draw, recordsTotal: $recordsTotal, recordsFiltered: $recordsFiltered)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopPerformingDataModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.draw, draw) || other.draw == draw) &&
            (identical(other.recordsTotal, recordsTotal) ||
                other.recordsTotal == recordsTotal) &&
            (identical(other.recordsFiltered, recordsFiltered) ||
                other.recordsFiltered == recordsFiltered));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      draw,
      recordsTotal,
      recordsFiltered);

  /// Create a copy of TopPerformingDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopPerformingDataModelImplCopyWith<_$TopPerformingDataModelImpl>
      get copyWith => __$$TopPerformingDataModelImplCopyWithImpl<
          _$TopPerformingDataModelImpl>(this, _$identity);
}

abstract class _TopPerformingDataModel implements TopPerformingDataModel {
  const factory _TopPerformingDataModel(
      {required final List<TopPerformingData> data,
      required final int draw,
      required final int recordsTotal,
      required final int recordsFiltered}) = _$TopPerformingDataModelImpl;

  @override
  List<TopPerformingData> get data;
  @override
  int get draw;
  @override
  int get recordsTotal;
  @override
  int get recordsFiltered;

  /// Create a copy of TopPerformingDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopPerformingDataModelImplCopyWith<_$TopPerformingDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TopPerformingData _$TopPerformingDataFromJson(Map<String, dynamic> json) {
  return _TopPerformingData.fromJson(json);
}

/// @nodoc
mixin _$TopPerformingData {
  @JsonKey(name: 'btc_constituency')
  int? get btcConstituency => throw _privateConstructorUsedError;
  @JsonKey(name: 'btc_constituency_name')
  String? get btcConstituencyName => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'member_count')
  int? get memberCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'primary_id')
  int? get primary_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'primary_name')
  String? get primary_name => throw _privateConstructorUsedError;
  @JsonKey(name: 'assembly_constituency')
  int? get assembly_constituency => throw _privateConstructorUsedError;
  @JsonKey(name: 'assembly_constituency_name')
  String? get assembly_constituency_name => throw _privateConstructorUsedError;
  @JsonKey(name: 'party_district_name')
  String? get party_district_name => throw _privateConstructorUsedError;
  @JsonKey(name: 'verified_member_count')
  String? get verifiedMemberCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'non_verified_member_count')
  String? get nonVerifiedMemberCount => throw _privateConstructorUsedError;
  int? get slno => throw _privateConstructorUsedError;

  /// Serializes this TopPerformingData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopPerformingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopPerformingDataCopyWith<TopPerformingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopPerformingDataCopyWith<$Res> {
  factory $TopPerformingDataCopyWith(
          TopPerformingData value, $Res Function(TopPerformingData) then) =
      _$TopPerformingDataCopyWithImpl<$Res, TopPerformingData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'btc_constituency') int? btcConstituency,
      @JsonKey(name: 'btc_constituency_name') String? btcConstituencyName,
      String? name,
      @JsonKey(name: 'member_count') int? memberCount,
      @JsonKey(name: 'primary_id') int? primary_id,
      @JsonKey(name: 'primary_name') String? primary_name,
      @JsonKey(name: 'assembly_constituency') int? assembly_constituency,
      @JsonKey(name: 'assembly_constituency_name')
      String? assembly_constituency_name,
      @JsonKey(name: 'party_district_name') String? party_district_name,
      @JsonKey(name: 'verified_member_count') String? verifiedMemberCount,
      @JsonKey(name: 'non_verified_member_count')
      String? nonVerifiedMemberCount,
      int? slno});
}

/// @nodoc
class _$TopPerformingDataCopyWithImpl<$Res, $Val extends TopPerformingData>
    implements $TopPerformingDataCopyWith<$Res> {
  _$TopPerformingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopPerformingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? btcConstituency = freezed,
    Object? btcConstituencyName = freezed,
    Object? name = freezed,
    Object? memberCount = freezed,
    Object? primary_id = freezed,
    Object? primary_name = freezed,
    Object? assembly_constituency = freezed,
    Object? assembly_constituency_name = freezed,
    Object? party_district_name = freezed,
    Object? verifiedMemberCount = freezed,
    Object? nonVerifiedMemberCount = freezed,
    Object? slno = freezed,
  }) {
    return _then(_value.copyWith(
      btcConstituency: freezed == btcConstituency
          ? _value.btcConstituency
          : btcConstituency // ignore: cast_nullable_to_non_nullable
              as int?,
      btcConstituencyName: freezed == btcConstituencyName
          ? _value.btcConstituencyName
          : btcConstituencyName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      memberCount: freezed == memberCount
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int?,
      primary_id: freezed == primary_id
          ? _value.primary_id
          : primary_id // ignore: cast_nullable_to_non_nullable
              as int?,
      primary_name: freezed == primary_name
          ? _value.primary_name
          : primary_name // ignore: cast_nullable_to_non_nullable
              as String?,
      assembly_constituency: freezed == assembly_constituency
          ? _value.assembly_constituency
          : assembly_constituency // ignore: cast_nullable_to_non_nullable
              as int?,
      assembly_constituency_name: freezed == assembly_constituency_name
          ? _value.assembly_constituency_name
          : assembly_constituency_name // ignore: cast_nullable_to_non_nullable
              as String?,
      party_district_name: freezed == party_district_name
          ? _value.party_district_name
          : party_district_name // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedMemberCount: freezed == verifiedMemberCount
          ? _value.verifiedMemberCount
          : verifiedMemberCount // ignore: cast_nullable_to_non_nullable
              as String?,
      nonVerifiedMemberCount: freezed == nonVerifiedMemberCount
          ? _value.nonVerifiedMemberCount
          : nonVerifiedMemberCount // ignore: cast_nullable_to_non_nullable
              as String?,
      slno: freezed == slno
          ? _value.slno
          : slno // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopPerformingDataImplCopyWith<$Res>
    implements $TopPerformingDataCopyWith<$Res> {
  factory _$$TopPerformingDataImplCopyWith(_$TopPerformingDataImpl value,
          $Res Function(_$TopPerformingDataImpl) then) =
      __$$TopPerformingDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'btc_constituency') int? btcConstituency,
      @JsonKey(name: 'btc_constituency_name') String? btcConstituencyName,
      String? name,
      @JsonKey(name: 'member_count') int? memberCount,
      @JsonKey(name: 'primary_id') int? primary_id,
      @JsonKey(name: 'primary_name') String? primary_name,
      @JsonKey(name: 'assembly_constituency') int? assembly_constituency,
      @JsonKey(name: 'assembly_constituency_name')
      String? assembly_constituency_name,
      @JsonKey(name: 'party_district_name') String? party_district_name,
      @JsonKey(name: 'verified_member_count') String? verifiedMemberCount,
      @JsonKey(name: 'non_verified_member_count')
      String? nonVerifiedMemberCount,
      int? slno});
}

/// @nodoc
class __$$TopPerformingDataImplCopyWithImpl<$Res>
    extends _$TopPerformingDataCopyWithImpl<$Res, _$TopPerformingDataImpl>
    implements _$$TopPerformingDataImplCopyWith<$Res> {
  __$$TopPerformingDataImplCopyWithImpl(_$TopPerformingDataImpl _value,
      $Res Function(_$TopPerformingDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopPerformingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? btcConstituency = freezed,
    Object? btcConstituencyName = freezed,
    Object? name = freezed,
    Object? memberCount = freezed,
    Object? primary_id = freezed,
    Object? primary_name = freezed,
    Object? assembly_constituency = freezed,
    Object? assembly_constituency_name = freezed,
    Object? party_district_name = freezed,
    Object? verifiedMemberCount = freezed,
    Object? nonVerifiedMemberCount = freezed,
    Object? slno = freezed,
  }) {
    return _then(_$TopPerformingDataImpl(
      btcConstituency: freezed == btcConstituency
          ? _value.btcConstituency
          : btcConstituency // ignore: cast_nullable_to_non_nullable
              as int?,
      btcConstituencyName: freezed == btcConstituencyName
          ? _value.btcConstituencyName
          : btcConstituencyName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      memberCount: freezed == memberCount
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int?,
      primary_id: freezed == primary_id
          ? _value.primary_id
          : primary_id // ignore: cast_nullable_to_non_nullable
              as int?,
      primary_name: freezed == primary_name
          ? _value.primary_name
          : primary_name // ignore: cast_nullable_to_non_nullable
              as String?,
      assembly_constituency: freezed == assembly_constituency
          ? _value.assembly_constituency
          : assembly_constituency // ignore: cast_nullable_to_non_nullable
              as int?,
      assembly_constituency_name: freezed == assembly_constituency_name
          ? _value.assembly_constituency_name
          : assembly_constituency_name // ignore: cast_nullable_to_non_nullable
              as String?,
      party_district_name: freezed == party_district_name
          ? _value.party_district_name
          : party_district_name // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedMemberCount: freezed == verifiedMemberCount
          ? _value.verifiedMemberCount
          : verifiedMemberCount // ignore: cast_nullable_to_non_nullable
              as String?,
      nonVerifiedMemberCount: freezed == nonVerifiedMemberCount
          ? _value.nonVerifiedMemberCount
          : nonVerifiedMemberCount // ignore: cast_nullable_to_non_nullable
              as String?,
      slno: freezed == slno
          ? _value.slno
          : slno // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopPerformingDataImpl implements _TopPerformingData {
  const _$TopPerformingDataImpl(
      {@JsonKey(name: 'btc_constituency') required this.btcConstituency,
      @JsonKey(name: 'btc_constituency_name') required this.btcConstituencyName,
      required this.name,
      @JsonKey(name: 'member_count') required this.memberCount,
      @JsonKey(name: 'primary_id') required this.primary_id,
      @JsonKey(name: 'primary_name') required this.primary_name,
      @JsonKey(name: 'assembly_constituency')
      required this.assembly_constituency,
      @JsonKey(name: 'assembly_constituency_name')
      required this.assembly_constituency_name,
      @JsonKey(name: 'party_district_name') required this.party_district_name,
      @JsonKey(name: 'verified_member_count') required this.verifiedMemberCount,
      @JsonKey(name: 'non_verified_member_count')
      required this.nonVerifiedMemberCount,
      required this.slno});

  factory _$TopPerformingDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopPerformingDataImplFromJson(json);

  @override
  @JsonKey(name: 'btc_constituency')
  final int? btcConstituency;
  @override
  @JsonKey(name: 'btc_constituency_name')
  final String? btcConstituencyName;
  @override
  final String? name;
  @override
  @JsonKey(name: 'member_count')
  final int? memberCount;
  @override
  @JsonKey(name: 'primary_id')
  final int? primary_id;
  @override
  @JsonKey(name: 'primary_name')
  final String? primary_name;
  @override
  @JsonKey(name: 'assembly_constituency')
  final int? assembly_constituency;
  @override
  @JsonKey(name: 'assembly_constituency_name')
  final String? assembly_constituency_name;
  @override
  @JsonKey(name: 'party_district_name')
  final String? party_district_name;
  @override
  @JsonKey(name: 'verified_member_count')
  final String? verifiedMemberCount;
  @override
  @JsonKey(name: 'non_verified_member_count')
  final String? nonVerifiedMemberCount;
  @override
  final int? slno;

  @override
  String toString() {
    return 'TopPerformingData(btcConstituency: $btcConstituency, btcConstituencyName: $btcConstituencyName, name: $name, memberCount: $memberCount, primary_id: $primary_id, primary_name: $primary_name, assembly_constituency: $assembly_constituency, assembly_constituency_name: $assembly_constituency_name, party_district_name: $party_district_name, verifiedMemberCount: $verifiedMemberCount, nonVerifiedMemberCount: $nonVerifiedMemberCount, slno: $slno)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopPerformingDataImpl &&
            (identical(other.btcConstituency, btcConstituency) ||
                other.btcConstituency == btcConstituency) &&
            (identical(other.btcConstituencyName, btcConstituencyName) ||
                other.btcConstituencyName == btcConstituencyName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.memberCount, memberCount) ||
                other.memberCount == memberCount) &&
            (identical(other.primary_id, primary_id) ||
                other.primary_id == primary_id) &&
            (identical(other.primary_name, primary_name) ||
                other.primary_name == primary_name) &&
            (identical(other.assembly_constituency, assembly_constituency) ||
                other.assembly_constituency == assembly_constituency) &&
            (identical(other.assembly_constituency_name,
                    assembly_constituency_name) ||
                other.assembly_constituency_name ==
                    assembly_constituency_name) &&
            (identical(other.party_district_name, party_district_name) ||
                other.party_district_name == party_district_name) &&
            (identical(other.verifiedMemberCount, verifiedMemberCount) ||
                other.verifiedMemberCount == verifiedMemberCount) &&
            (identical(other.nonVerifiedMemberCount, nonVerifiedMemberCount) ||
                other.nonVerifiedMemberCount == nonVerifiedMemberCount) &&
            (identical(other.slno, slno) || other.slno == slno));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      btcConstituency,
      btcConstituencyName,
      name,
      memberCount,
      primary_id,
      primary_name,
      assembly_constituency,
      assembly_constituency_name,
      party_district_name,
      verifiedMemberCount,
      nonVerifiedMemberCount,
      slno);

  /// Create a copy of TopPerformingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopPerformingDataImplCopyWith<_$TopPerformingDataImpl> get copyWith =>
      __$$TopPerformingDataImplCopyWithImpl<_$TopPerformingDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopPerformingDataImplToJson(
      this,
    );
  }
}

abstract class _TopPerformingData implements TopPerformingData {
  const factory _TopPerformingData(
      {@JsonKey(name: 'btc_constituency') required final int? btcConstituency,
      @JsonKey(name: 'btc_constituency_name')
      required final String? btcConstituencyName,
      required final String? name,
      @JsonKey(name: 'member_count') required final int? memberCount,
      @JsonKey(name: 'primary_id') required final int? primary_id,
      @JsonKey(name: 'primary_name') required final String? primary_name,
      @JsonKey(name: 'assembly_constituency')
      required final int? assembly_constituency,
      @JsonKey(name: 'assembly_constituency_name')
      required final String? assembly_constituency_name,
      @JsonKey(name: 'party_district_name')
      required final String? party_district_name,
      @JsonKey(name: 'verified_member_count')
      required final String? verifiedMemberCount,
      @JsonKey(name: 'non_verified_member_count')
      required final String? nonVerifiedMemberCount,
      required final int? slno}) = _$TopPerformingDataImpl;

  factory _TopPerformingData.fromJson(Map<String, dynamic> json) =
      _$TopPerformingDataImpl.fromJson;

  @override
  @JsonKey(name: 'btc_constituency')
  int? get btcConstituency;
  @override
  @JsonKey(name: 'btc_constituency_name')
  String? get btcConstituencyName;
  @override
  String? get name;
  @override
  @JsonKey(name: 'member_count')
  int? get memberCount;
  @override
  @JsonKey(name: 'primary_id')
  int? get primary_id;
  @override
  @JsonKey(name: 'primary_name')
  String? get primary_name;
  @override
  @JsonKey(name: 'assembly_constituency')
  int? get assembly_constituency;
  @override
  @JsonKey(name: 'assembly_constituency_name')
  String? get assembly_constituency_name;
  @override
  @JsonKey(name: 'party_district_name')
  String? get party_district_name;
  @override
  @JsonKey(name: 'verified_member_count')
  String? get verifiedMemberCount;
  @override
  @JsonKey(name: 'non_verified_member_count')
  String? get nonVerifiedMemberCount;
  @override
  int? get slno;

  /// Create a copy of TopPerformingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopPerformingDataImplCopyWith<_$TopPerformingDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
