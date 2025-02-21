// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_performer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopPerformerModel _$TopPerformerModelFromJson(Map<String, dynamic> json) {
  return _TopPerformerModel.fromJson(json);
}

/// @nodoc
mixin _$TopPerformerModel {
  @JsonKey(name: 'draw')
  int? get draw => throw _privateConstructorUsedError;
  @JsonKey(name: 'recordsTotal')
  int? get recordsTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'recordsFiltered')
  int? get recordsFiltered => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<TopPerformerData>? get data => throw _privateConstructorUsedError;

  /// Serializes this TopPerformerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopPerformerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopPerformerModelCopyWith<TopPerformerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopPerformerModelCopyWith<$Res> {
  factory $TopPerformerModelCopyWith(
          TopPerformerModel value, $Res Function(TopPerformerModel) then) =
      _$TopPerformerModelCopyWithImpl<$Res, TopPerformerModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'draw') int? draw,
      @JsonKey(name: 'recordsTotal') int? recordsTotal,
      @JsonKey(name: 'recordsFiltered') int? recordsFiltered,
      @JsonKey(name: 'data') List<TopPerformerData>? data});
}

/// @nodoc
class _$TopPerformerModelCopyWithImpl<$Res, $Val extends TopPerformerModel>
    implements $TopPerformerModelCopyWith<$Res> {
  _$TopPerformerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopPerformerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? draw = freezed,
    Object? recordsTotal = freezed,
    Object? recordsFiltered = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      draw: freezed == draw
          ? _value.draw
          : draw // ignore: cast_nullable_to_non_nullable
              as int?,
      recordsTotal: freezed == recordsTotal
          ? _value.recordsTotal
          : recordsTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      recordsFiltered: freezed == recordsFiltered
          ? _value.recordsFiltered
          : recordsFiltered // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TopPerformerData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopPerformerModelImplCopyWith<$Res>
    implements $TopPerformerModelCopyWith<$Res> {
  factory _$$TopPerformerModelImplCopyWith(_$TopPerformerModelImpl value,
          $Res Function(_$TopPerformerModelImpl) then) =
      __$$TopPerformerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'draw') int? draw,
      @JsonKey(name: 'recordsTotal') int? recordsTotal,
      @JsonKey(name: 'recordsFiltered') int? recordsFiltered,
      @JsonKey(name: 'data') List<TopPerformerData>? data});
}

/// @nodoc
class __$$TopPerformerModelImplCopyWithImpl<$Res>
    extends _$TopPerformerModelCopyWithImpl<$Res, _$TopPerformerModelImpl>
    implements _$$TopPerformerModelImplCopyWith<$Res> {
  __$$TopPerformerModelImplCopyWithImpl(_$TopPerformerModelImpl _value,
      $Res Function(_$TopPerformerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopPerformerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? draw = freezed,
    Object? recordsTotal = freezed,
    Object? recordsFiltered = freezed,
    Object? data = freezed,
  }) {
    return _then(_$TopPerformerModelImpl(
      draw: freezed == draw
          ? _value.draw
          : draw // ignore: cast_nullable_to_non_nullable
              as int?,
      recordsTotal: freezed == recordsTotal
          ? _value.recordsTotal
          : recordsTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      recordsFiltered: freezed == recordsFiltered
          ? _value.recordsFiltered
          : recordsFiltered // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TopPerformerData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopPerformerModelImpl implements _TopPerformerModel {
  const _$TopPerformerModelImpl(
      {@JsonKey(name: 'draw') this.draw,
      @JsonKey(name: 'recordsTotal') this.recordsTotal,
      @JsonKey(name: 'recordsFiltered') this.recordsFiltered,
      @JsonKey(name: 'data') final List<TopPerformerData>? data})
      : _data = data;

  factory _$TopPerformerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopPerformerModelImplFromJson(json);

  @override
  @JsonKey(name: 'draw')
  final int? draw;
  @override
  @JsonKey(name: 'recordsTotal')
  final int? recordsTotal;
  @override
  @JsonKey(name: 'recordsFiltered')
  final int? recordsFiltered;
  final List<TopPerformerData>? _data;
  @override
  @JsonKey(name: 'data')
  List<TopPerformerData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TopPerformerModel(draw: $draw, recordsTotal: $recordsTotal, recordsFiltered: $recordsFiltered, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopPerformerModelImpl &&
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

  /// Create a copy of TopPerformerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopPerformerModelImplCopyWith<_$TopPerformerModelImpl> get copyWith =>
      __$$TopPerformerModelImplCopyWithImpl<_$TopPerformerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopPerformerModelImplToJson(
      this,
    );
  }
}

abstract class _TopPerformerModel implements TopPerformerModel {
  const factory _TopPerformerModel(
          {@JsonKey(name: 'draw') final int? draw,
          @JsonKey(name: 'recordsTotal') final int? recordsTotal,
          @JsonKey(name: 'recordsFiltered') final int? recordsFiltered,
          @JsonKey(name: 'data') final List<TopPerformerData>? data}) =
      _$TopPerformerModelImpl;

  factory _TopPerformerModel.fromJson(Map<String, dynamic> json) =
      _$TopPerformerModelImpl.fromJson;

  @override
  @JsonKey(name: 'draw')
  int? get draw;
  @override
  @JsonKey(name: 'recordsTotal')
  int? get recordsTotal;
  @override
  @JsonKey(name: 'recordsFiltered')
  int? get recordsFiltered;
  @override
  @JsonKey(name: 'data')
  List<TopPerformerData>? get data;

  /// Create a copy of TopPerformerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopPerformerModelImplCopyWith<_$TopPerformerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopPerformerData _$TopPerformerDataFromJson(Map<String, dynamic> json) {
  return _TopPerformerData.fromJson(json);
}

/// @nodoc
mixin _$TopPerformerData {
  @JsonKey(name: 'member_name')
  String? get memberName => throw _privateConstructorUsedError;
  @JsonKey(name: 'btc_constituency_name')
  String? get btcConstituencyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'ref_count')
  int? get refCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'verified_member_count')
  String? get verifiedMemberCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'non_verified_member_count')
  String? get nonVerifiedMemberCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'member_id')
  int? get memberId => throw _privateConstructorUsedError;

  /// Serializes this TopPerformerData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopPerformerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopPerformerDataCopyWith<TopPerformerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopPerformerDataCopyWith<$Res> {
  factory $TopPerformerDataCopyWith(
          TopPerformerData value, $Res Function(TopPerformerData) then) =
      _$TopPerformerDataCopyWithImpl<$Res, TopPerformerData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'member_name') String? memberName,
      @JsonKey(name: 'btc_constituency_name') String? btcConstituencyName,
      @JsonKey(name: 'ref_count') int? refCount,
      @JsonKey(name: 'verified_member_count') String? verifiedMemberCount,
      @JsonKey(name: 'non_verified_member_count')
      String? nonVerifiedMemberCount,
      @JsonKey(name: 'member_id') int? memberId});
}

/// @nodoc
class _$TopPerformerDataCopyWithImpl<$Res, $Val extends TopPerformerData>
    implements $TopPerformerDataCopyWith<$Res> {
  _$TopPerformerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopPerformerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberName = freezed,
    Object? btcConstituencyName = freezed,
    Object? refCount = freezed,
    Object? verifiedMemberCount = freezed,
    Object? nonVerifiedMemberCount = freezed,
    Object? memberId = freezed,
  }) {
    return _then(_value.copyWith(
      memberName: freezed == memberName
          ? _value.memberName
          : memberName // ignore: cast_nullable_to_non_nullable
              as String?,
      btcConstituencyName: freezed == btcConstituencyName
          ? _value.btcConstituencyName
          : btcConstituencyName // ignore: cast_nullable_to_non_nullable
              as String?,
      refCount: freezed == refCount
          ? _value.refCount
          : refCount // ignore: cast_nullable_to_non_nullable
              as int?,
      verifiedMemberCount: freezed == verifiedMemberCount
          ? _value.verifiedMemberCount
          : verifiedMemberCount // ignore: cast_nullable_to_non_nullable
              as String?,
      nonVerifiedMemberCount: freezed == nonVerifiedMemberCount
          ? _value.nonVerifiedMemberCount
          : nonVerifiedMemberCount // ignore: cast_nullable_to_non_nullable
              as String?,
      memberId: freezed == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopPerformerDataImplCopyWith<$Res>
    implements $TopPerformerDataCopyWith<$Res> {
  factory _$$TopPerformerDataImplCopyWith(_$TopPerformerDataImpl value,
          $Res Function(_$TopPerformerDataImpl) then) =
      __$$TopPerformerDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'member_name') String? memberName,
      @JsonKey(name: 'btc_constituency_name') String? btcConstituencyName,
      @JsonKey(name: 'ref_count') int? refCount,
      @JsonKey(name: 'verified_member_count') String? verifiedMemberCount,
      @JsonKey(name: 'non_verified_member_count')
      String? nonVerifiedMemberCount,
      @JsonKey(name: 'member_id') int? memberId});
}

/// @nodoc
class __$$TopPerformerDataImplCopyWithImpl<$Res>
    extends _$TopPerformerDataCopyWithImpl<$Res, _$TopPerformerDataImpl>
    implements _$$TopPerformerDataImplCopyWith<$Res> {
  __$$TopPerformerDataImplCopyWithImpl(_$TopPerformerDataImpl _value,
      $Res Function(_$TopPerformerDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopPerformerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberName = freezed,
    Object? btcConstituencyName = freezed,
    Object? refCount = freezed,
    Object? verifiedMemberCount = freezed,
    Object? nonVerifiedMemberCount = freezed,
    Object? memberId = freezed,
  }) {
    return _then(_$TopPerformerDataImpl(
      memberName: freezed == memberName
          ? _value.memberName
          : memberName // ignore: cast_nullable_to_non_nullable
              as String?,
      btcConstituencyName: freezed == btcConstituencyName
          ? _value.btcConstituencyName
          : btcConstituencyName // ignore: cast_nullable_to_non_nullable
              as String?,
      refCount: freezed == refCount
          ? _value.refCount
          : refCount // ignore: cast_nullable_to_non_nullable
              as int?,
      verifiedMemberCount: freezed == verifiedMemberCount
          ? _value.verifiedMemberCount
          : verifiedMemberCount // ignore: cast_nullable_to_non_nullable
              as String?,
      nonVerifiedMemberCount: freezed == nonVerifiedMemberCount
          ? _value.nonVerifiedMemberCount
          : nonVerifiedMemberCount // ignore: cast_nullable_to_non_nullable
              as String?,
      memberId: freezed == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopPerformerDataImpl implements _TopPerformerData {
  const _$TopPerformerDataImpl(
      {@JsonKey(name: 'member_name') this.memberName,
      @JsonKey(name: 'btc_constituency_name') this.btcConstituencyName,
      @JsonKey(name: 'ref_count') this.refCount,
      @JsonKey(name: 'verified_member_count') this.verifiedMemberCount,
      @JsonKey(name: 'non_verified_member_count') this.nonVerifiedMemberCount,
      @JsonKey(name: 'member_id') this.memberId});

  factory _$TopPerformerDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopPerformerDataImplFromJson(json);

  @override
  @JsonKey(name: 'member_name')
  final String? memberName;
  @override
  @JsonKey(name: 'btc_constituency_name')
  final String? btcConstituencyName;
  @override
  @JsonKey(name: 'ref_count')
  final int? refCount;
  @override
  @JsonKey(name: 'verified_member_count')
  final String? verifiedMemberCount;
  @override
  @JsonKey(name: 'non_verified_member_count')
  final String? nonVerifiedMemberCount;
  @override
  @JsonKey(name: 'member_id')
  final int? memberId;

  @override
  String toString() {
    return 'TopPerformerData(memberName: $memberName, btcConstituencyName: $btcConstituencyName, refCount: $refCount, verifiedMemberCount: $verifiedMemberCount, nonVerifiedMemberCount: $nonVerifiedMemberCount, memberId: $memberId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopPerformerDataImpl &&
            (identical(other.memberName, memberName) ||
                other.memberName == memberName) &&
            (identical(other.btcConstituencyName, btcConstituencyName) ||
                other.btcConstituencyName == btcConstituencyName) &&
            (identical(other.refCount, refCount) ||
                other.refCount == refCount) &&
            (identical(other.verifiedMemberCount, verifiedMemberCount) ||
                other.verifiedMemberCount == verifiedMemberCount) &&
            (identical(other.nonVerifiedMemberCount, nonVerifiedMemberCount) ||
                other.nonVerifiedMemberCount == nonVerifiedMemberCount) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, memberName, btcConstituencyName,
      refCount, verifiedMemberCount, nonVerifiedMemberCount, memberId);

  /// Create a copy of TopPerformerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopPerformerDataImplCopyWith<_$TopPerformerDataImpl> get copyWith =>
      __$$TopPerformerDataImplCopyWithImpl<_$TopPerformerDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopPerformerDataImplToJson(
      this,
    );
  }
}

abstract class _TopPerformerData implements TopPerformerData {
  const factory _TopPerformerData(
      {@JsonKey(name: 'member_name') final String? memberName,
      @JsonKey(name: 'btc_constituency_name') final String? btcConstituencyName,
      @JsonKey(name: 'ref_count') final int? refCount,
      @JsonKey(name: 'verified_member_count') final String? verifiedMemberCount,
      @JsonKey(name: 'non_verified_member_count')
      final String? nonVerifiedMemberCount,
      @JsonKey(name: 'member_id')
      final int? memberId}) = _$TopPerformerDataImpl;

  factory _TopPerformerData.fromJson(Map<String, dynamic> json) =
      _$TopPerformerDataImpl.fromJson;

  @override
  @JsonKey(name: 'member_name')
  String? get memberName;
  @override
  @JsonKey(name: 'btc_constituency_name')
  String? get btcConstituencyName;
  @override
  @JsonKey(name: 'ref_count')
  int? get refCount;
  @override
  @JsonKey(name: 'verified_member_count')
  String? get verifiedMemberCount;
  @override
  @JsonKey(name: 'non_verified_member_count')
  String? get nonVerifiedMemberCount;
  @override
  @JsonKey(name: 'member_id')
  int? get memberId;

  /// Create a copy of TopPerformerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopPerformerDataImplCopyWith<_$TopPerformerDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
