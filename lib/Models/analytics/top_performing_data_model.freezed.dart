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

TopPerformingDataModel _$TopPerformingDataModelFromJson(
    Map<String, dynamic> json) {
  return _TopPerformingDataModel.fromJson(json);
}

/// @nodoc
mixin _$TopPerformingDataModel {
  int get draw => throw _privateConstructorUsedError;
  int get recordsTotal => throw _privateConstructorUsedError;
  int get recordsFiltered => throw _privateConstructorUsedError;
  List<TopPerformingData> get data => throw _privateConstructorUsedError;

  /// Serializes this TopPerformingDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

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
      {int draw,
      int recordsTotal,
      int recordsFiltered,
      List<TopPerformingData> data});
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
              as List<TopPerformingData>,
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
      {int draw,
      int recordsTotal,
      int recordsFiltered,
      List<TopPerformingData> data});
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
    Object? draw = null,
    Object? recordsTotal = null,
    Object? recordsFiltered = null,
    Object? data = null,
  }) {
    return _then(_$TopPerformingDataModelImpl(
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
              as List<TopPerformingData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopPerformingDataModelImpl implements _TopPerformingDataModel {
  const _$TopPerformingDataModelImpl(
      {required this.draw,
      required this.recordsTotal,
      required this.recordsFiltered,
      required final List<TopPerformingData> data})
      : _data = data;

  factory _$TopPerformingDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopPerformingDataModelImplFromJson(json);

  @override
  final int draw;
  @override
  final int recordsTotal;
  @override
  final int recordsFiltered;
  final List<TopPerformingData> _data;
  @override
  List<TopPerformingData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'TopPerformingDataModel(draw: $draw, recordsTotal: $recordsTotal, recordsFiltered: $recordsFiltered, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopPerformingDataModelImpl &&
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

  /// Create a copy of TopPerformingDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopPerformingDataModelImplCopyWith<_$TopPerformingDataModelImpl>
      get copyWith => __$$TopPerformingDataModelImplCopyWithImpl<
          _$TopPerformingDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopPerformingDataModelImplToJson(
      this,
    );
  }
}

abstract class _TopPerformingDataModel implements TopPerformingDataModel {
  const factory _TopPerformingDataModel(
          {required final int draw,
          required final int recordsTotal,
          required final int recordsFiltered,
          required final List<TopPerformingData> data}) =
      _$TopPerformingDataModelImpl;

  factory _TopPerformingDataModel.fromJson(Map<String, dynamic> json) =
      _$TopPerformingDataModelImpl.fromJson;

  @override
  int get draw;
  @override
  int get recordsTotal;
  @override
  int get recordsFiltered;
  @override
  List<TopPerformingData> get data;

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
  int get btcConstituency => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'btc_constituency_name')
  String get btcConstituencyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'member_count')
  int get memberCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'verified_member_count')
  String get verifiedMemberCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'non_verified_member_count')
  String get nonVerifiedMemberCount => throw _privateConstructorUsedError;
  int get slno => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'btc_constituency') int btcConstituency,
      String name,
      @JsonKey(name: 'btc_constituency_name') String btcConstituencyName,
      @JsonKey(name: 'member_count') int memberCount,
      @JsonKey(name: 'verified_member_count') String verifiedMemberCount,
      @JsonKey(name: 'non_verified_member_count') String nonVerifiedMemberCount,
      int slno});
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
    Object? btcConstituency = null,
    Object? name = null,
    Object? btcConstituencyName = null,
    Object? memberCount = null,
    Object? verifiedMemberCount = null,
    Object? nonVerifiedMemberCount = null,
    Object? slno = null,
  }) {
    return _then(_value.copyWith(
      btcConstituency: null == btcConstituency
          ? _value.btcConstituency
          : btcConstituency // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      btcConstituencyName: null == btcConstituencyName
          ? _value.btcConstituencyName
          : btcConstituencyName // ignore: cast_nullable_to_non_nullable
              as String,
      memberCount: null == memberCount
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int,
      verifiedMemberCount: null == verifiedMemberCount
          ? _value.verifiedMemberCount
          : verifiedMemberCount // ignore: cast_nullable_to_non_nullable
              as String,
      nonVerifiedMemberCount: null == nonVerifiedMemberCount
          ? _value.nonVerifiedMemberCount
          : nonVerifiedMemberCount // ignore: cast_nullable_to_non_nullable
              as String,
      slno: null == slno
          ? _value.slno
          : slno // ignore: cast_nullable_to_non_nullable
              as int,
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
      {@JsonKey(name: 'btc_constituency') int btcConstituency,
      String name,
      @JsonKey(name: 'btc_constituency_name') String btcConstituencyName,
      @JsonKey(name: 'member_count') int memberCount,
      @JsonKey(name: 'verified_member_count') String verifiedMemberCount,
      @JsonKey(name: 'non_verified_member_count') String nonVerifiedMemberCount,
      int slno});
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
    Object? btcConstituency = null,
    Object? name = null,
    Object? btcConstituencyName = null,
    Object? memberCount = null,
    Object? verifiedMemberCount = null,
    Object? nonVerifiedMemberCount = null,
    Object? slno = null,
  }) {
    return _then(_$TopPerformingDataImpl(
      btcConstituency: null == btcConstituency
          ? _value.btcConstituency
          : btcConstituency // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      btcConstituencyName: null == btcConstituencyName
          ? _value.btcConstituencyName
          : btcConstituencyName // ignore: cast_nullable_to_non_nullable
              as String,
      memberCount: null == memberCount
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int,
      verifiedMemberCount: null == verifiedMemberCount
          ? _value.verifiedMemberCount
          : verifiedMemberCount // ignore: cast_nullable_to_non_nullable
              as String,
      nonVerifiedMemberCount: null == nonVerifiedMemberCount
          ? _value.nonVerifiedMemberCount
          : nonVerifiedMemberCount // ignore: cast_nullable_to_non_nullable
              as String,
      slno: null == slno
          ? _value.slno
          : slno // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopPerformingDataImpl implements _TopPerformingData {
  const _$TopPerformingDataImpl(
      {@JsonKey(name: 'btc_constituency') required this.btcConstituency,
      required this.name,
      @JsonKey(name: 'btc_constituency_name') required this.btcConstituencyName,
      @JsonKey(name: 'member_count') required this.memberCount,
      @JsonKey(name: 'verified_member_count') required this.verifiedMemberCount,
      @JsonKey(name: 'non_verified_member_count')
      required this.nonVerifiedMemberCount,
      required this.slno});

  factory _$TopPerformingDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopPerformingDataImplFromJson(json);

  @override
  @JsonKey(name: 'btc_constituency')
  final int btcConstituency;
  @override
  final String name;
  @override
  @JsonKey(name: 'btc_constituency_name')
  final String btcConstituencyName;
  @override
  @JsonKey(name: 'member_count')
  final int memberCount;
  @override
  @JsonKey(name: 'verified_member_count')
  final String verifiedMemberCount;
  @override
  @JsonKey(name: 'non_verified_member_count')
  final String nonVerifiedMemberCount;
  @override
  final int slno;

  @override
  String toString() {
    return 'TopPerformingData(btcConstituency: $btcConstituency, name: $name, btcConstituencyName: $btcConstituencyName, memberCount: $memberCount, verifiedMemberCount: $verifiedMemberCount, nonVerifiedMemberCount: $nonVerifiedMemberCount, slno: $slno)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopPerformingDataImpl &&
            (identical(other.btcConstituency, btcConstituency) ||
                other.btcConstituency == btcConstituency) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.btcConstituencyName, btcConstituencyName) ||
                other.btcConstituencyName == btcConstituencyName) &&
            (identical(other.memberCount, memberCount) ||
                other.memberCount == memberCount) &&
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
      name,
      btcConstituencyName,
      memberCount,
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
      {@JsonKey(name: 'btc_constituency') required final int btcConstituency,
      required final String name,
      @JsonKey(name: 'btc_constituency_name')
      required final String btcConstituencyName,
      @JsonKey(name: 'member_count') required final int memberCount,
      @JsonKey(name: 'verified_member_count')
      required final String verifiedMemberCount,
      @JsonKey(name: 'non_verified_member_count')
      required final String nonVerifiedMemberCount,
      required final int slno}) = _$TopPerformingDataImpl;

  factory _TopPerformingData.fromJson(Map<String, dynamic> json) =
      _$TopPerformingDataImpl.fromJson;

  @override
  @JsonKey(name: 'btc_constituency')
  int get btcConstituency;
  @override
  String get name;
  @override
  @JsonKey(name: 'btc_constituency_name')
  String get btcConstituencyName;
  @override
  @JsonKey(name: 'member_count')
  int get memberCount;
  @override
  @JsonKey(name: 'verified_member_count')
  String get verifiedMemberCount;
  @override
  @JsonKey(name: 'non_verified_member_count')
  String get nonVerifiedMemberCount;
  @override
  int get slno;

  /// Create a copy of TopPerformingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopPerformingDataImplCopyWith<_$TopPerformingDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
