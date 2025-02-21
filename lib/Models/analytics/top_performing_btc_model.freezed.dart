// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_performing_btc_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopPerformingBtcModel _$TopPerformingBtcModelFromJson(
    Map<String, dynamic> json) {
  return _TopPerformingBtcModel.fromJson(json);
}

/// @nodoc
mixin _$TopPerformingBtcModel {
  @JsonKey(name: 'draw')
  int? get draw => throw _privateConstructorUsedError;
  @JsonKey(name: 'recordsTotal')
  int? get recordsTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'recordsFiltered')
  int? get recordsFiltered => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<BtcData>? get data => throw _privateConstructorUsedError;

  /// Serializes this TopPerformingBtcModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopPerformingBtcModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopPerformingBtcModelCopyWith<TopPerformingBtcModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopPerformingBtcModelCopyWith<$Res> {
  factory $TopPerformingBtcModelCopyWith(TopPerformingBtcModel value,
          $Res Function(TopPerformingBtcModel) then) =
      _$TopPerformingBtcModelCopyWithImpl<$Res, TopPerformingBtcModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'draw') int? draw,
      @JsonKey(name: 'recordsTotal') int? recordsTotal,
      @JsonKey(name: 'recordsFiltered') int? recordsFiltered,
      @JsonKey(name: 'data') List<BtcData>? data});
}

/// @nodoc
class _$TopPerformingBtcModelCopyWithImpl<$Res,
        $Val extends TopPerformingBtcModel>
    implements $TopPerformingBtcModelCopyWith<$Res> {
  _$TopPerformingBtcModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopPerformingBtcModel
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
              as List<BtcData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopPerformingBtcModelImplCopyWith<$Res>
    implements $TopPerformingBtcModelCopyWith<$Res> {
  factory _$$TopPerformingBtcModelImplCopyWith(
          _$TopPerformingBtcModelImpl value,
          $Res Function(_$TopPerformingBtcModelImpl) then) =
      __$$TopPerformingBtcModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'draw') int? draw,
      @JsonKey(name: 'recordsTotal') int? recordsTotal,
      @JsonKey(name: 'recordsFiltered') int? recordsFiltered,
      @JsonKey(name: 'data') List<BtcData>? data});
}

/// @nodoc
class __$$TopPerformingBtcModelImplCopyWithImpl<$Res>
    extends _$TopPerformingBtcModelCopyWithImpl<$Res,
        _$TopPerformingBtcModelImpl>
    implements _$$TopPerformingBtcModelImplCopyWith<$Res> {
  __$$TopPerformingBtcModelImplCopyWithImpl(_$TopPerformingBtcModelImpl _value,
      $Res Function(_$TopPerformingBtcModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopPerformingBtcModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? draw = freezed,
    Object? recordsTotal = freezed,
    Object? recordsFiltered = freezed,
    Object? data = freezed,
  }) {
    return _then(_$TopPerformingBtcModelImpl(
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
              as List<BtcData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopPerformingBtcModelImpl implements _TopPerformingBtcModel {
  const _$TopPerformingBtcModelImpl(
      {@JsonKey(name: 'draw') this.draw,
      @JsonKey(name: 'recordsTotal') this.recordsTotal,
      @JsonKey(name: 'recordsFiltered') this.recordsFiltered,
      @JsonKey(name: 'data') final List<BtcData>? data})
      : _data = data;

  factory _$TopPerformingBtcModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopPerformingBtcModelImplFromJson(json);

  @override
  @JsonKey(name: 'draw')
  final int? draw;
  @override
  @JsonKey(name: 'recordsTotal')
  final int? recordsTotal;
  @override
  @JsonKey(name: 'recordsFiltered')
  final int? recordsFiltered;
  final List<BtcData>? _data;
  @override
  @JsonKey(name: 'data')
  List<BtcData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TopPerformingBtcModel(draw: $draw, recordsTotal: $recordsTotal, recordsFiltered: $recordsFiltered, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopPerformingBtcModelImpl &&
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

  /// Create a copy of TopPerformingBtcModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopPerformingBtcModelImplCopyWith<_$TopPerformingBtcModelImpl>
      get copyWith => __$$TopPerformingBtcModelImplCopyWithImpl<
          _$TopPerformingBtcModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopPerformingBtcModelImplToJson(
      this,
    );
  }
}

abstract class _TopPerformingBtcModel implements TopPerformingBtcModel {
  const factory _TopPerformingBtcModel(
          {@JsonKey(name: 'draw') final int? draw,
          @JsonKey(name: 'recordsTotal') final int? recordsTotal,
          @JsonKey(name: 'recordsFiltered') final int? recordsFiltered,
          @JsonKey(name: 'data') final List<BtcData>? data}) =
      _$TopPerformingBtcModelImpl;

  factory _TopPerformingBtcModel.fromJson(Map<String, dynamic> json) =
      _$TopPerformingBtcModelImpl.fromJson;

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
  List<BtcData>? get data;

  /// Create a copy of TopPerformingBtcModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopPerformingBtcModelImplCopyWith<_$TopPerformingBtcModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BtcData _$BtcDataFromJson(Map<String, dynamic> json) {
  return _BtcData.fromJson(json);
}

/// @nodoc
mixin _$BtcData {
  @JsonKey(name: 'slno')
  int? get slno => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'member_count')
  int? get memberCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'verified_member_count')
  String? get verifiedMemberCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'non_verified_member_count')
  String? get nonVerifiedMemberCount => throw _privateConstructorUsedError;

  /// Serializes this BtcData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BtcData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BtcDataCopyWith<BtcData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BtcDataCopyWith<$Res> {
  factory $BtcDataCopyWith(BtcData value, $Res Function(BtcData) then) =
      _$BtcDataCopyWithImpl<$Res, BtcData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'slno') int? slno,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'member_count') int? memberCount,
      @JsonKey(name: 'verified_member_count') String? verifiedMemberCount,
      @JsonKey(name: 'non_verified_member_count')
      String? nonVerifiedMemberCount});
}

/// @nodoc
class _$BtcDataCopyWithImpl<$Res, $Val extends BtcData>
    implements $BtcDataCopyWith<$Res> {
  _$BtcDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BtcData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slno = freezed,
    Object? name = freezed,
    Object? memberCount = freezed,
    Object? verifiedMemberCount = freezed,
    Object? nonVerifiedMemberCount = freezed,
  }) {
    return _then(_value.copyWith(
      slno: freezed == slno
          ? _value.slno
          : slno // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      memberCount: freezed == memberCount
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int?,
      verifiedMemberCount: freezed == verifiedMemberCount
          ? _value.verifiedMemberCount
          : verifiedMemberCount // ignore: cast_nullable_to_non_nullable
              as String?,
      nonVerifiedMemberCount: freezed == nonVerifiedMemberCount
          ? _value.nonVerifiedMemberCount
          : nonVerifiedMemberCount // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BtcDataImplCopyWith<$Res> implements $BtcDataCopyWith<$Res> {
  factory _$$BtcDataImplCopyWith(
          _$BtcDataImpl value, $Res Function(_$BtcDataImpl) then) =
      __$$BtcDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'slno') int? slno,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'member_count') int? memberCount,
      @JsonKey(name: 'verified_member_count') String? verifiedMemberCount,
      @JsonKey(name: 'non_verified_member_count')
      String? nonVerifiedMemberCount});
}

/// @nodoc
class __$$BtcDataImplCopyWithImpl<$Res>
    extends _$BtcDataCopyWithImpl<$Res, _$BtcDataImpl>
    implements _$$BtcDataImplCopyWith<$Res> {
  __$$BtcDataImplCopyWithImpl(
      _$BtcDataImpl _value, $Res Function(_$BtcDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BtcData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slno = freezed,
    Object? name = freezed,
    Object? memberCount = freezed,
    Object? verifiedMemberCount = freezed,
    Object? nonVerifiedMemberCount = freezed,
  }) {
    return _then(_$BtcDataImpl(
      slno: freezed == slno
          ? _value.slno
          : slno // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      memberCount: freezed == memberCount
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int?,
      verifiedMemberCount: freezed == verifiedMemberCount
          ? _value.verifiedMemberCount
          : verifiedMemberCount // ignore: cast_nullable_to_non_nullable
              as String?,
      nonVerifiedMemberCount: freezed == nonVerifiedMemberCount
          ? _value.nonVerifiedMemberCount
          : nonVerifiedMemberCount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BtcDataImpl implements _BtcData {
  const _$BtcDataImpl(
      {@JsonKey(name: 'slno') this.slno,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'member_count') this.memberCount,
      @JsonKey(name: 'verified_member_count') this.verifiedMemberCount,
      @JsonKey(name: 'non_verified_member_count') this.nonVerifiedMemberCount});

  factory _$BtcDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BtcDataImplFromJson(json);

  @override
  @JsonKey(name: 'slno')
  final int? slno;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'member_count')
  final int? memberCount;
  @override
  @JsonKey(name: 'verified_member_count')
  final String? verifiedMemberCount;
  @override
  @JsonKey(name: 'non_verified_member_count')
  final String? nonVerifiedMemberCount;

  @override
  String toString() {
    return 'BtcData(slno: $slno, name: $name, memberCount: $memberCount, verifiedMemberCount: $verifiedMemberCount, nonVerifiedMemberCount: $nonVerifiedMemberCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BtcDataImpl &&
            (identical(other.slno, slno) || other.slno == slno) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.memberCount, memberCount) ||
                other.memberCount == memberCount) &&
            (identical(other.verifiedMemberCount, verifiedMemberCount) ||
                other.verifiedMemberCount == verifiedMemberCount) &&
            (identical(other.nonVerifiedMemberCount, nonVerifiedMemberCount) ||
                other.nonVerifiedMemberCount == nonVerifiedMemberCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, slno, name, memberCount,
      verifiedMemberCount, nonVerifiedMemberCount);

  /// Create a copy of BtcData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BtcDataImplCopyWith<_$BtcDataImpl> get copyWith =>
      __$$BtcDataImplCopyWithImpl<_$BtcDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BtcDataImplToJson(
      this,
    );
  }
}

abstract class _BtcData implements BtcData {
  const factory _BtcData(
      {@JsonKey(name: 'slno') final int? slno,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'member_count') final int? memberCount,
      @JsonKey(name: 'verified_member_count') final String? verifiedMemberCount,
      @JsonKey(name: 'non_verified_member_count')
      final String? nonVerifiedMemberCount}) = _$BtcDataImpl;

  factory _BtcData.fromJson(Map<String, dynamic> json) = _$BtcDataImpl.fromJson;

  @override
  @JsonKey(name: 'slno')
  int? get slno;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'member_count')
  int? get memberCount;
  @override
  @JsonKey(name: 'verified_member_count')
  String? get verifiedMemberCount;
  @override
  @JsonKey(name: 'non_verified_member_count')
  String? get nonVerifiedMemberCount;

  /// Create a copy of BtcData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BtcDataImplCopyWith<_$BtcDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
