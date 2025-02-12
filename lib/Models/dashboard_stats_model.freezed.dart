// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_stats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DashboardStats _$DashboardStatsFromJson(Map<String, dynamic> json) {
  return _DashboardStats.fromJson(json);
}

/// @nodoc
mixin _$DashboardStats {
  int? get totalMembers => throw _privateConstructorUsedError;
  double? get percentageAchieved => throw _privateConstructorUsedError;
  int? get totalMembersToday => throw _privateConstructorUsedError;
  @JsonKey(name: "male_percentage")
  String? get malePercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "female_percentage")
  String? get femalePercentage => throw _privateConstructorUsedError;
  Map<String, int>? get weeklyPerformance => throw _privateConstructorUsedError;
  List<ConstituencyStats>? get topConstituencies =>
      throw _privateConstructorUsedError;
  List<TopPerformer>? get topPerformers => throw _privateConstructorUsedError;
  List<TopPerformingPrimary>? get topPerformingPrimary =>
      throw _privateConstructorUsedError;
  List<TopPerformingBooth>? get topPerformingBooth =>
      throw _privateConstructorUsedError;
  List<TopPerformingPartyDistrict>? get topPerformingPartyDistrict =>
      throw _privateConstructorUsedError;
  List<TopPerformingPrimary>? get worstPerformingPrimary =>
      throw _privateConstructorUsedError;
  List<TopPerformingBooth>? get worstPerformingBooth =>
      throw _privateConstructorUsedError;
  List<TopPerformingPartyDistrict>? get worstPerformingPartyDistrict =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "topPerformingBtcConstituency")
  List<TopPerformingBtcConstituency>? get topPerformingBtcConstituency =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "worstPerformingBtcConstituency")
  List<TopPerformingBtcConstituency>? get worstPerformingBtcConstituency =>
      throw _privateConstructorUsedError;
  int? get totalMemberCount => throw _privateConstructorUsedError;
  int? get verifiedMemberCount => throw _privateConstructorUsedError;
  int? get nonVerifiedMemberCount => throw _privateConstructorUsedError;

  /// Serializes this DashboardStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardStatsCopyWith<DashboardStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStatsCopyWith<$Res> {
  factory $DashboardStatsCopyWith(
          DashboardStats value, $Res Function(DashboardStats) then) =
      _$DashboardStatsCopyWithImpl<$Res, DashboardStats>;
  @useResult
  $Res call(
      {int? totalMembers,
      double? percentageAchieved,
      int? totalMembersToday,
      @JsonKey(name: "male_percentage") String? malePercentage,
      @JsonKey(name: "female_percentage") String? femalePercentage,
      Map<String, int>? weeklyPerformance,
      List<ConstituencyStats>? topConstituencies,
      List<TopPerformer>? topPerformers,
      List<TopPerformingPrimary>? topPerformingPrimary,
      List<TopPerformingBooth>? topPerformingBooth,
      List<TopPerformingPartyDistrict>? topPerformingPartyDistrict,
      List<TopPerformingPrimary>? worstPerformingPrimary,
      List<TopPerformingBooth>? worstPerformingBooth,
      List<TopPerformingPartyDistrict>? worstPerformingPartyDistrict,
      @JsonKey(name: "topPerformingBtcConstituency")
      List<TopPerformingBtcConstituency>? topPerformingBtcConstituency,
      @JsonKey(name: "worstPerformingBtcConstituency")
      List<TopPerformingBtcConstituency>? worstPerformingBtcConstituency,
      int? totalMemberCount,
      int? verifiedMemberCount,
      int? nonVerifiedMemberCount});
}

/// @nodoc
class _$DashboardStatsCopyWithImpl<$Res, $Val extends DashboardStats>
    implements $DashboardStatsCopyWith<$Res> {
  _$DashboardStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalMembers = freezed,
    Object? percentageAchieved = freezed,
    Object? totalMembersToday = freezed,
    Object? malePercentage = freezed,
    Object? femalePercentage = freezed,
    Object? weeklyPerformance = freezed,
    Object? topConstituencies = freezed,
    Object? topPerformers = freezed,
    Object? topPerformingPrimary = freezed,
    Object? topPerformingBooth = freezed,
    Object? topPerformingPartyDistrict = freezed,
    Object? worstPerformingPrimary = freezed,
    Object? worstPerformingBooth = freezed,
    Object? worstPerformingPartyDistrict = freezed,
    Object? topPerformingBtcConstituency = freezed,
    Object? worstPerformingBtcConstituency = freezed,
    Object? totalMemberCount = freezed,
    Object? verifiedMemberCount = freezed,
    Object? nonVerifiedMemberCount = freezed,
  }) {
    return _then(_value.copyWith(
      totalMembers: freezed == totalMembers
          ? _value.totalMembers
          : totalMembers // ignore: cast_nullable_to_non_nullable
              as int?,
      percentageAchieved: freezed == percentageAchieved
          ? _value.percentageAchieved
          : percentageAchieved // ignore: cast_nullable_to_non_nullable
              as double?,
      totalMembersToday: freezed == totalMembersToday
          ? _value.totalMembersToday
          : totalMembersToday // ignore: cast_nullable_to_non_nullable
              as int?,
      malePercentage: freezed == malePercentage
          ? _value.malePercentage
          : malePercentage // ignore: cast_nullable_to_non_nullable
              as String?,
      femalePercentage: freezed == femalePercentage
          ? _value.femalePercentage
          : femalePercentage // ignore: cast_nullable_to_non_nullable
              as String?,
      weeklyPerformance: freezed == weeklyPerformance
          ? _value.weeklyPerformance
          : weeklyPerformance // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      topConstituencies: freezed == topConstituencies
          ? _value.topConstituencies
          : topConstituencies // ignore: cast_nullable_to_non_nullable
              as List<ConstituencyStats>?,
      topPerformers: freezed == topPerformers
          ? _value.topPerformers
          : topPerformers // ignore: cast_nullable_to_non_nullable
              as List<TopPerformer>?,
      topPerformingPrimary: freezed == topPerformingPrimary
          ? _value.topPerformingPrimary
          : topPerformingPrimary // ignore: cast_nullable_to_non_nullable
              as List<TopPerformingPrimary>?,
      topPerformingBooth: freezed == topPerformingBooth
          ? _value.topPerformingBooth
          : topPerformingBooth // ignore: cast_nullable_to_non_nullable
              as List<TopPerformingBooth>?,
      topPerformingPartyDistrict: freezed == topPerformingPartyDistrict
          ? _value.topPerformingPartyDistrict
          : topPerformingPartyDistrict // ignore: cast_nullable_to_non_nullable
              as List<TopPerformingPartyDistrict>?,
      worstPerformingPrimary: freezed == worstPerformingPrimary
          ? _value.worstPerformingPrimary
          : worstPerformingPrimary // ignore: cast_nullable_to_non_nullable
              as List<TopPerformingPrimary>?,
      worstPerformingBooth: freezed == worstPerformingBooth
          ? _value.worstPerformingBooth
          : worstPerformingBooth // ignore: cast_nullable_to_non_nullable
              as List<TopPerformingBooth>?,
      worstPerformingPartyDistrict: freezed == worstPerformingPartyDistrict
          ? _value.worstPerformingPartyDistrict
          : worstPerformingPartyDistrict // ignore: cast_nullable_to_non_nullable
              as List<TopPerformingPartyDistrict>?,
      topPerformingBtcConstituency: freezed == topPerformingBtcConstituency
          ? _value.topPerformingBtcConstituency
          : topPerformingBtcConstituency // ignore: cast_nullable_to_non_nullable
              as List<TopPerformingBtcConstituency>?,
      worstPerformingBtcConstituency: freezed == worstPerformingBtcConstituency
          ? _value.worstPerformingBtcConstituency
          : worstPerformingBtcConstituency // ignore: cast_nullable_to_non_nullable
              as List<TopPerformingBtcConstituency>?,
      totalMemberCount: freezed == totalMemberCount
          ? _value.totalMemberCount
          : totalMemberCount // ignore: cast_nullable_to_non_nullable
              as int?,
      verifiedMemberCount: freezed == verifiedMemberCount
          ? _value.verifiedMemberCount
          : verifiedMemberCount // ignore: cast_nullable_to_non_nullable
              as int?,
      nonVerifiedMemberCount: freezed == nonVerifiedMemberCount
          ? _value.nonVerifiedMemberCount
          : nonVerifiedMemberCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardStatsImplCopyWith<$Res>
    implements $DashboardStatsCopyWith<$Res> {
  factory _$$DashboardStatsImplCopyWith(_$DashboardStatsImpl value,
          $Res Function(_$DashboardStatsImpl) then) =
      __$$DashboardStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? totalMembers,
      double? percentageAchieved,
      int? totalMembersToday,
      @JsonKey(name: "male_percentage") String? malePercentage,
      @JsonKey(name: "female_percentage") String? femalePercentage,
      Map<String, int>? weeklyPerformance,
      List<ConstituencyStats>? topConstituencies,
      List<TopPerformer>? topPerformers,
      List<TopPerformingPrimary>? topPerformingPrimary,
      List<TopPerformingBooth>? topPerformingBooth,
      List<TopPerformingPartyDistrict>? topPerformingPartyDistrict,
      List<TopPerformingPrimary>? worstPerformingPrimary,
      List<TopPerformingBooth>? worstPerformingBooth,
      List<TopPerformingPartyDistrict>? worstPerformingPartyDistrict,
      @JsonKey(name: "topPerformingBtcConstituency")
      List<TopPerformingBtcConstituency>? topPerformingBtcConstituency,
      @JsonKey(name: "worstPerformingBtcConstituency")
      List<TopPerformingBtcConstituency>? worstPerformingBtcConstituency,
      int? totalMemberCount,
      int? verifiedMemberCount,
      int? nonVerifiedMemberCount});
}

/// @nodoc
class __$$DashboardStatsImplCopyWithImpl<$Res>
    extends _$DashboardStatsCopyWithImpl<$Res, _$DashboardStatsImpl>
    implements _$$DashboardStatsImplCopyWith<$Res> {
  __$$DashboardStatsImplCopyWithImpl(
      _$DashboardStatsImpl _value, $Res Function(_$DashboardStatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalMembers = freezed,
    Object? percentageAchieved = freezed,
    Object? totalMembersToday = freezed,
    Object? malePercentage = freezed,
    Object? femalePercentage = freezed,
    Object? weeklyPerformance = freezed,
    Object? topConstituencies = freezed,
    Object? topPerformers = freezed,
    Object? topPerformingPrimary = freezed,
    Object? topPerformingBooth = freezed,
    Object? topPerformingPartyDistrict = freezed,
    Object? worstPerformingPrimary = freezed,
    Object? worstPerformingBooth = freezed,
    Object? worstPerformingPartyDistrict = freezed,
    Object? topPerformingBtcConstituency = freezed,
    Object? worstPerformingBtcConstituency = freezed,
    Object? totalMemberCount = freezed,
    Object? verifiedMemberCount = freezed,
    Object? nonVerifiedMemberCount = freezed,
  }) {
    return _then(_$DashboardStatsImpl(
      totalMembers: freezed == totalMembers
          ? _value.totalMembers
          : totalMembers // ignore: cast_nullable_to_non_nullable
              as int?,
      percentageAchieved: freezed == percentageAchieved
          ? _value.percentageAchieved
          : percentageAchieved // ignore: cast_nullable_to_non_nullable
              as double?,
      totalMembersToday: freezed == totalMembersToday
          ? _value.totalMembersToday
          : totalMembersToday // ignore: cast_nullable_to_non_nullable
              as int?,
      malePercentage: freezed == malePercentage
          ? _value.malePercentage
          : malePercentage // ignore: cast_nullable_to_non_nullable
              as String?,
      femalePercentage: freezed == femalePercentage
          ? _value.femalePercentage
          : femalePercentage // ignore: cast_nullable_to_non_nullable
              as String?,
      weeklyPerformance: freezed == weeklyPerformance
          ? _value._weeklyPerformance
          : weeklyPerformance // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      topConstituencies: freezed == topConstituencies
          ? _value._topConstituencies
          : topConstituencies // ignore: cast_nullable_to_non_nullable
              as List<ConstituencyStats>?,
      topPerformers: freezed == topPerformers
          ? _value._topPerformers
          : topPerformers // ignore: cast_nullable_to_non_nullable
              as List<TopPerformer>?,
      topPerformingPrimary: freezed == topPerformingPrimary
          ? _value._topPerformingPrimary
          : topPerformingPrimary // ignore: cast_nullable_to_non_nullable
              as List<TopPerformingPrimary>?,
      topPerformingBooth: freezed == topPerformingBooth
          ? _value._topPerformingBooth
          : topPerformingBooth // ignore: cast_nullable_to_non_nullable
              as List<TopPerformingBooth>?,
      topPerformingPartyDistrict: freezed == topPerformingPartyDistrict
          ? _value._topPerformingPartyDistrict
          : topPerformingPartyDistrict // ignore: cast_nullable_to_non_nullable
              as List<TopPerformingPartyDistrict>?,
      worstPerformingPrimary: freezed == worstPerformingPrimary
          ? _value._worstPerformingPrimary
          : worstPerformingPrimary // ignore: cast_nullable_to_non_nullable
              as List<TopPerformingPrimary>?,
      worstPerformingBooth: freezed == worstPerformingBooth
          ? _value._worstPerformingBooth
          : worstPerformingBooth // ignore: cast_nullable_to_non_nullable
              as List<TopPerformingBooth>?,
      worstPerformingPartyDistrict: freezed == worstPerformingPartyDistrict
          ? _value._worstPerformingPartyDistrict
          : worstPerformingPartyDistrict // ignore: cast_nullable_to_non_nullable
              as List<TopPerformingPartyDistrict>?,
      topPerformingBtcConstituency: freezed == topPerformingBtcConstituency
          ? _value._topPerformingBtcConstituency
          : topPerformingBtcConstituency // ignore: cast_nullable_to_non_nullable
              as List<TopPerformingBtcConstituency>?,
      worstPerformingBtcConstituency: freezed == worstPerformingBtcConstituency
          ? _value._worstPerformingBtcConstituency
          : worstPerformingBtcConstituency // ignore: cast_nullable_to_non_nullable
              as List<TopPerformingBtcConstituency>?,
      totalMemberCount: freezed == totalMemberCount
          ? _value.totalMemberCount
          : totalMemberCount // ignore: cast_nullable_to_non_nullable
              as int?,
      verifiedMemberCount: freezed == verifiedMemberCount
          ? _value.verifiedMemberCount
          : verifiedMemberCount // ignore: cast_nullable_to_non_nullable
              as int?,
      nonVerifiedMemberCount: freezed == nonVerifiedMemberCount
          ? _value.nonVerifiedMemberCount
          : nonVerifiedMemberCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardStatsImpl implements _DashboardStats {
  const _$DashboardStatsImpl(
      {this.totalMembers,
      this.percentageAchieved,
      this.totalMembersToday,
      @JsonKey(name: "male_percentage") this.malePercentage,
      @JsonKey(name: "female_percentage") this.femalePercentage,
      final Map<String, int>? weeklyPerformance,
      final List<ConstituencyStats>? topConstituencies,
      final List<TopPerformer>? topPerformers,
      final List<TopPerformingPrimary>? topPerformingPrimary,
      final List<TopPerformingBooth>? topPerformingBooth,
      final List<TopPerformingPartyDistrict>? topPerformingPartyDistrict,
      final List<TopPerformingPrimary>? worstPerformingPrimary,
      final List<TopPerformingBooth>? worstPerformingBooth,
      final List<TopPerformingPartyDistrict>? worstPerformingPartyDistrict,
      @JsonKey(name: "topPerformingBtcConstituency")
      final List<TopPerformingBtcConstituency>? topPerformingBtcConstituency,
      @JsonKey(name: "worstPerformingBtcConstituency")
      final List<TopPerformingBtcConstituency>? worstPerformingBtcConstituency,
      this.totalMemberCount,
      this.verifiedMemberCount,
      this.nonVerifiedMemberCount})
      : _weeklyPerformance = weeklyPerformance,
        _topConstituencies = topConstituencies,
        _topPerformers = topPerformers,
        _topPerformingPrimary = topPerformingPrimary,
        _topPerformingBooth = topPerformingBooth,
        _topPerformingPartyDistrict = topPerformingPartyDistrict,
        _worstPerformingPrimary = worstPerformingPrimary,
        _worstPerformingBooth = worstPerformingBooth,
        _worstPerformingPartyDistrict = worstPerformingPartyDistrict,
        _topPerformingBtcConstituency = topPerformingBtcConstituency,
        _worstPerformingBtcConstituency = worstPerformingBtcConstituency;

  factory _$DashboardStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardStatsImplFromJson(json);

  @override
  final int? totalMembers;
  @override
  final double? percentageAchieved;
  @override
  final int? totalMembersToday;
  @override
  @JsonKey(name: "male_percentage")
  final String? malePercentage;
  @override
  @JsonKey(name: "female_percentage")
  final String? femalePercentage;
  final Map<String, int>? _weeklyPerformance;
  @override
  Map<String, int>? get weeklyPerformance {
    final value = _weeklyPerformance;
    if (value == null) return null;
    if (_weeklyPerformance is EqualUnmodifiableMapView)
      return _weeklyPerformance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<ConstituencyStats>? _topConstituencies;
  @override
  List<ConstituencyStats>? get topConstituencies {
    final value = _topConstituencies;
    if (value == null) return null;
    if (_topConstituencies is EqualUnmodifiableListView)
      return _topConstituencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TopPerformer>? _topPerformers;
  @override
  List<TopPerformer>? get topPerformers {
    final value = _topPerformers;
    if (value == null) return null;
    if (_topPerformers is EqualUnmodifiableListView) return _topPerformers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TopPerformingPrimary>? _topPerformingPrimary;
  @override
  List<TopPerformingPrimary>? get topPerformingPrimary {
    final value = _topPerformingPrimary;
    if (value == null) return null;
    if (_topPerformingPrimary is EqualUnmodifiableListView)
      return _topPerformingPrimary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TopPerformingBooth>? _topPerformingBooth;
  @override
  List<TopPerformingBooth>? get topPerformingBooth {
    final value = _topPerformingBooth;
    if (value == null) return null;
    if (_topPerformingBooth is EqualUnmodifiableListView)
      return _topPerformingBooth;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TopPerformingPartyDistrict>? _topPerformingPartyDistrict;
  @override
  List<TopPerformingPartyDistrict>? get topPerformingPartyDistrict {
    final value = _topPerformingPartyDistrict;
    if (value == null) return null;
    if (_topPerformingPartyDistrict is EqualUnmodifiableListView)
      return _topPerformingPartyDistrict;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TopPerformingPrimary>? _worstPerformingPrimary;
  @override
  List<TopPerformingPrimary>? get worstPerformingPrimary {
    final value = _worstPerformingPrimary;
    if (value == null) return null;
    if (_worstPerformingPrimary is EqualUnmodifiableListView)
      return _worstPerformingPrimary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TopPerformingBooth>? _worstPerformingBooth;
  @override
  List<TopPerformingBooth>? get worstPerformingBooth {
    final value = _worstPerformingBooth;
    if (value == null) return null;
    if (_worstPerformingBooth is EqualUnmodifiableListView)
      return _worstPerformingBooth;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TopPerformingPartyDistrict>? _worstPerformingPartyDistrict;
  @override
  List<TopPerformingPartyDistrict>? get worstPerformingPartyDistrict {
    final value = _worstPerformingPartyDistrict;
    if (value == null) return null;
    if (_worstPerformingPartyDistrict is EqualUnmodifiableListView)
      return _worstPerformingPartyDistrict;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TopPerformingBtcConstituency>? _topPerformingBtcConstituency;
  @override
  @JsonKey(name: "topPerformingBtcConstituency")
  List<TopPerformingBtcConstituency>? get topPerformingBtcConstituency {
    final value = _topPerformingBtcConstituency;
    if (value == null) return null;
    if (_topPerformingBtcConstituency is EqualUnmodifiableListView)
      return _topPerformingBtcConstituency;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TopPerformingBtcConstituency>? _worstPerformingBtcConstituency;
  @override
  @JsonKey(name: "worstPerformingBtcConstituency")
  List<TopPerformingBtcConstituency>? get worstPerformingBtcConstituency {
    final value = _worstPerformingBtcConstituency;
    if (value == null) return null;
    if (_worstPerformingBtcConstituency is EqualUnmodifiableListView)
      return _worstPerformingBtcConstituency;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? totalMemberCount;
  @override
  final int? verifiedMemberCount;
  @override
  final int? nonVerifiedMemberCount;

  @override
  String toString() {
    return 'DashboardStats(totalMembers: $totalMembers, percentageAchieved: $percentageAchieved, totalMembersToday: $totalMembersToday, malePercentage: $malePercentage, femalePercentage: $femalePercentage, weeklyPerformance: $weeklyPerformance, topConstituencies: $topConstituencies, topPerformers: $topPerformers, topPerformingPrimary: $topPerformingPrimary, topPerformingBooth: $topPerformingBooth, topPerformingPartyDistrict: $topPerformingPartyDistrict, worstPerformingPrimary: $worstPerformingPrimary, worstPerformingBooth: $worstPerformingBooth, worstPerformingPartyDistrict: $worstPerformingPartyDistrict, topPerformingBtcConstituency: $topPerformingBtcConstituency, worstPerformingBtcConstituency: $worstPerformingBtcConstituency, totalMemberCount: $totalMemberCount, verifiedMemberCount: $verifiedMemberCount, nonVerifiedMemberCount: $nonVerifiedMemberCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardStatsImpl &&
            (identical(other.totalMembers, totalMembers) ||
                other.totalMembers == totalMembers) &&
            (identical(other.percentageAchieved, percentageAchieved) ||
                other.percentageAchieved == percentageAchieved) &&
            (identical(other.totalMembersToday, totalMembersToday) ||
                other.totalMembersToday == totalMembersToday) &&
            (identical(other.malePercentage, malePercentage) ||
                other.malePercentage == malePercentage) &&
            (identical(other.femalePercentage, femalePercentage) ||
                other.femalePercentage == femalePercentage) &&
            const DeepCollectionEquality()
                .equals(other._weeklyPerformance, _weeklyPerformance) &&
            const DeepCollectionEquality()
                .equals(other._topConstituencies, _topConstituencies) &&
            const DeepCollectionEquality()
                .equals(other._topPerformers, _topPerformers) &&
            const DeepCollectionEquality()
                .equals(other._topPerformingPrimary, _topPerformingPrimary) &&
            const DeepCollectionEquality()
                .equals(other._topPerformingBooth, _topPerformingBooth) &&
            const DeepCollectionEquality().equals(
                other._topPerformingPartyDistrict,
                _topPerformingPartyDistrict) &&
            const DeepCollectionEquality().equals(
                other._worstPerformingPrimary, _worstPerformingPrimary) &&
            const DeepCollectionEquality()
                .equals(other._worstPerformingBooth, _worstPerformingBooth) &&
            const DeepCollectionEquality().equals(
                other._worstPerformingPartyDistrict,
                _worstPerformingPartyDistrict) &&
            const DeepCollectionEquality().equals(
                other._topPerformingBtcConstituency,
                _topPerformingBtcConstituency) &&
            const DeepCollectionEquality().equals(
                other._worstPerformingBtcConstituency,
                _worstPerformingBtcConstituency) &&
            (identical(other.totalMemberCount, totalMemberCount) ||
                other.totalMemberCount == totalMemberCount) &&
            (identical(other.verifiedMemberCount, verifiedMemberCount) ||
                other.verifiedMemberCount == verifiedMemberCount) &&
            (identical(other.nonVerifiedMemberCount, nonVerifiedMemberCount) ||
                other.nonVerifiedMemberCount == nonVerifiedMemberCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        totalMembers,
        percentageAchieved,
        totalMembersToday,
        malePercentage,
        femalePercentage,
        const DeepCollectionEquality().hash(_weeklyPerformance),
        const DeepCollectionEquality().hash(_topConstituencies),
        const DeepCollectionEquality().hash(_topPerformers),
        const DeepCollectionEquality().hash(_topPerformingPrimary),
        const DeepCollectionEquality().hash(_topPerformingBooth),
        const DeepCollectionEquality().hash(_topPerformingPartyDistrict),
        const DeepCollectionEquality().hash(_worstPerformingPrimary),
        const DeepCollectionEquality().hash(_worstPerformingBooth),
        const DeepCollectionEquality().hash(_worstPerformingPartyDistrict),
        const DeepCollectionEquality().hash(_topPerformingBtcConstituency),
        const DeepCollectionEquality().hash(_worstPerformingBtcConstituency),
        totalMemberCount,
        verifiedMemberCount,
        nonVerifiedMemberCount
      ]);

  /// Create a copy of DashboardStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardStatsImplCopyWith<_$DashboardStatsImpl> get copyWith =>
      __$$DashboardStatsImplCopyWithImpl<_$DashboardStatsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardStatsImplToJson(
      this,
    );
  }
}

abstract class _DashboardStats implements DashboardStats {
  const factory _DashboardStats(
      {final int? totalMembers,
      final double? percentageAchieved,
      final int? totalMembersToday,
      @JsonKey(name: "male_percentage") final String? malePercentage,
      @JsonKey(name: "female_percentage") final String? femalePercentage,
      final Map<String, int>? weeklyPerformance,
      final List<ConstituencyStats>? topConstituencies,
      final List<TopPerformer>? topPerformers,
      final List<TopPerformingPrimary>? topPerformingPrimary,
      final List<TopPerformingBooth>? topPerformingBooth,
      final List<TopPerformingPartyDistrict>? topPerformingPartyDistrict,
      final List<TopPerformingPrimary>? worstPerformingPrimary,
      final List<TopPerformingBooth>? worstPerformingBooth,
      final List<TopPerformingPartyDistrict>? worstPerformingPartyDistrict,
      @JsonKey(name: "topPerformingBtcConstituency")
      final List<TopPerformingBtcConstituency>? topPerformingBtcConstituency,
      @JsonKey(name: "worstPerformingBtcConstituency")
      final List<TopPerformingBtcConstituency>? worstPerformingBtcConstituency,
      final int? totalMemberCount,
      final int? verifiedMemberCount,
      final int? nonVerifiedMemberCount}) = _$DashboardStatsImpl;

  factory _DashboardStats.fromJson(Map<String, dynamic> json) =
      _$DashboardStatsImpl.fromJson;

  @override
  int? get totalMembers;
  @override
  double? get percentageAchieved;
  @override
  int? get totalMembersToday;
  @override
  @JsonKey(name: "male_percentage")
  String? get malePercentage;
  @override
  @JsonKey(name: "female_percentage")
  String? get femalePercentage;
  @override
  Map<String, int>? get weeklyPerformance;
  @override
  List<ConstituencyStats>? get topConstituencies;
  @override
  List<TopPerformer>? get topPerformers;
  @override
  List<TopPerformingPrimary>? get topPerformingPrimary;
  @override
  List<TopPerformingBooth>? get topPerformingBooth;
  @override
  List<TopPerformingPartyDistrict>? get topPerformingPartyDistrict;
  @override
  List<TopPerformingPrimary>? get worstPerformingPrimary;
  @override
  List<TopPerformingBooth>? get worstPerformingBooth;
  @override
  List<TopPerformingPartyDistrict>? get worstPerformingPartyDistrict;
  @override
  @JsonKey(name: "topPerformingBtcConstituency")
  List<TopPerformingBtcConstituency>? get topPerformingBtcConstituency;
  @override
  @JsonKey(name: "worstPerformingBtcConstituency")
  List<TopPerformingBtcConstituency>? get worstPerformingBtcConstituency;
  @override
  int? get totalMemberCount;
  @override
  int? get verifiedMemberCount;
  @override
  int? get nonVerifiedMemberCount;

  /// Create a copy of DashboardStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardStatsImplCopyWith<_$DashboardStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConstituencyStats _$ConstituencyStatsFromJson(Map<String, dynamic> json) {
  return _ConstituencyStats.fromJson(json);
}

/// @nodoc
mixin _$ConstituencyStats {
  @JsonKey(name: "btc_constituency_name")
  String? get btcConstituencyName => throw _privateConstructorUsedError;
  @JsonKey(name: "member_count")
  int? get memberCount => throw _privateConstructorUsedError;
  @JsonKey(name: "verified_member_count")
  String? get verifiedMemberCount => throw _privateConstructorUsedError;
  @JsonKey(name: "non_verified_member_count")
  String? get nonVerifiedMemberCount => throw _privateConstructorUsedError;

  /// Serializes this ConstituencyStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConstituencyStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConstituencyStatsCopyWith<ConstituencyStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConstituencyStatsCopyWith<$Res> {
  factory $ConstituencyStatsCopyWith(
          ConstituencyStats value, $Res Function(ConstituencyStats) then) =
      _$ConstituencyStatsCopyWithImpl<$Res, ConstituencyStats>;
  @useResult
  $Res call(
      {@JsonKey(name: "btc_constituency_name") String? btcConstituencyName,
      @JsonKey(name: "member_count") int? memberCount,
      @JsonKey(name: "verified_member_count") String? verifiedMemberCount,
      @JsonKey(name: "non_verified_member_count")
      String? nonVerifiedMemberCount});
}

/// @nodoc
class _$ConstituencyStatsCopyWithImpl<$Res, $Val extends ConstituencyStats>
    implements $ConstituencyStatsCopyWith<$Res> {
  _$ConstituencyStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConstituencyStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? btcConstituencyName = freezed,
    Object? memberCount = freezed,
    Object? verifiedMemberCount = freezed,
    Object? nonVerifiedMemberCount = freezed,
  }) {
    return _then(_value.copyWith(
      btcConstituencyName: freezed == btcConstituencyName
          ? _value.btcConstituencyName
          : btcConstituencyName // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ConstituencyStatsImplCopyWith<$Res>
    implements $ConstituencyStatsCopyWith<$Res> {
  factory _$$ConstituencyStatsImplCopyWith(_$ConstituencyStatsImpl value,
          $Res Function(_$ConstituencyStatsImpl) then) =
      __$$ConstituencyStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "btc_constituency_name") String? btcConstituencyName,
      @JsonKey(name: "member_count") int? memberCount,
      @JsonKey(name: "verified_member_count") String? verifiedMemberCount,
      @JsonKey(name: "non_verified_member_count")
      String? nonVerifiedMemberCount});
}

/// @nodoc
class __$$ConstituencyStatsImplCopyWithImpl<$Res>
    extends _$ConstituencyStatsCopyWithImpl<$Res, _$ConstituencyStatsImpl>
    implements _$$ConstituencyStatsImplCopyWith<$Res> {
  __$$ConstituencyStatsImplCopyWithImpl(_$ConstituencyStatsImpl _value,
      $Res Function(_$ConstituencyStatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConstituencyStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? btcConstituencyName = freezed,
    Object? memberCount = freezed,
    Object? verifiedMemberCount = freezed,
    Object? nonVerifiedMemberCount = freezed,
  }) {
    return _then(_$ConstituencyStatsImpl(
      btcConstituencyName: freezed == btcConstituencyName
          ? _value.btcConstituencyName
          : btcConstituencyName // ignore: cast_nullable_to_non_nullable
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
class _$ConstituencyStatsImpl implements _ConstituencyStats {
  const _$ConstituencyStatsImpl(
      {@JsonKey(name: "btc_constituency_name") this.btcConstituencyName,
      @JsonKey(name: "member_count") this.memberCount,
      @JsonKey(name: "verified_member_count") this.verifiedMemberCount,
      @JsonKey(name: "non_verified_member_count") this.nonVerifiedMemberCount});

  factory _$ConstituencyStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConstituencyStatsImplFromJson(json);

  @override
  @JsonKey(name: "btc_constituency_name")
  final String? btcConstituencyName;
  @override
  @JsonKey(name: "member_count")
  final int? memberCount;
  @override
  @JsonKey(name: "verified_member_count")
  final String? verifiedMemberCount;
  @override
  @JsonKey(name: "non_verified_member_count")
  final String? nonVerifiedMemberCount;

  @override
  String toString() {
    return 'ConstituencyStats(btcConstituencyName: $btcConstituencyName, memberCount: $memberCount, verifiedMemberCount: $verifiedMemberCount, nonVerifiedMemberCount: $nonVerifiedMemberCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConstituencyStatsImpl &&
            (identical(other.btcConstituencyName, btcConstituencyName) ||
                other.btcConstituencyName == btcConstituencyName) &&
            (identical(other.memberCount, memberCount) ||
                other.memberCount == memberCount) &&
            (identical(other.verifiedMemberCount, verifiedMemberCount) ||
                other.verifiedMemberCount == verifiedMemberCount) &&
            (identical(other.nonVerifiedMemberCount, nonVerifiedMemberCount) ||
                other.nonVerifiedMemberCount == nonVerifiedMemberCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, btcConstituencyName, memberCount,
      verifiedMemberCount, nonVerifiedMemberCount);

  /// Create a copy of ConstituencyStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConstituencyStatsImplCopyWith<_$ConstituencyStatsImpl> get copyWith =>
      __$$ConstituencyStatsImplCopyWithImpl<_$ConstituencyStatsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConstituencyStatsImplToJson(
      this,
    );
  }
}

abstract class _ConstituencyStats implements ConstituencyStats {
  const factory _ConstituencyStats(
      {@JsonKey(name: "btc_constituency_name")
      final String? btcConstituencyName,
      @JsonKey(name: "member_count") final int? memberCount,
      @JsonKey(name: "verified_member_count") final String? verifiedMemberCount,
      @JsonKey(name: "non_verified_member_count")
      final String? nonVerifiedMemberCount}) = _$ConstituencyStatsImpl;

  factory _ConstituencyStats.fromJson(Map<String, dynamic> json) =
      _$ConstituencyStatsImpl.fromJson;

  @override
  @JsonKey(name: "btc_constituency_name")
  String? get btcConstituencyName;
  @override
  @JsonKey(name: "member_count")
  int? get memberCount;
  @override
  @JsonKey(name: "verified_member_count")
  String? get verifiedMemberCount;
  @override
  @JsonKey(name: "non_verified_member_count")
  String? get nonVerifiedMemberCount;

  /// Create a copy of ConstituencyStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConstituencyStatsImplCopyWith<_$ConstituencyStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopPerformer _$TopPerformerFromJson(Map<String, dynamic> json) {
  return _TopPerformer.fromJson(json);
}

/// @nodoc
mixin _$TopPerformer {
  @JsonKey(name: "ref_count")
  int? get refCount => throw _privateConstructorUsedError;
  @JsonKey(name: "verified_member_count")
  String? get verifiedMemberCount => throw _privateConstructorUsedError;
  @JsonKey(name: "non_verified_member_count")
  String? get nonVerifiedMemberCount => throw _privateConstructorUsedError;
  @JsonKey(name: "btc_constituency_name")
  String? get btcConstituencyName => throw _privateConstructorUsedError;
  @JsonKey(name: "member_name")
  String? get memberName => throw _privateConstructorUsedError;

  /// Serializes this TopPerformer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopPerformer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopPerformerCopyWith<TopPerformer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopPerformerCopyWith<$Res> {
  factory $TopPerformerCopyWith(
          TopPerformer value, $Res Function(TopPerformer) then) =
      _$TopPerformerCopyWithImpl<$Res, TopPerformer>;
  @useResult
  $Res call(
      {@JsonKey(name: "ref_count") int? refCount,
      @JsonKey(name: "verified_member_count") String? verifiedMemberCount,
      @JsonKey(name: "non_verified_member_count")
      String? nonVerifiedMemberCount,
      @JsonKey(name: "btc_constituency_name") String? btcConstituencyName,
      @JsonKey(name: "member_name") String? memberName});
}

/// @nodoc
class _$TopPerformerCopyWithImpl<$Res, $Val extends TopPerformer>
    implements $TopPerformerCopyWith<$Res> {
  _$TopPerformerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopPerformer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refCount = freezed,
    Object? verifiedMemberCount = freezed,
    Object? nonVerifiedMemberCount = freezed,
    Object? btcConstituencyName = freezed,
    Object? memberName = freezed,
  }) {
    return _then(_value.copyWith(
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
      btcConstituencyName: freezed == btcConstituencyName
          ? _value.btcConstituencyName
          : btcConstituencyName // ignore: cast_nullable_to_non_nullable
              as String?,
      memberName: freezed == memberName
          ? _value.memberName
          : memberName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopPerformerImplCopyWith<$Res>
    implements $TopPerformerCopyWith<$Res> {
  factory _$$TopPerformerImplCopyWith(
          _$TopPerformerImpl value, $Res Function(_$TopPerformerImpl) then) =
      __$$TopPerformerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ref_count") int? refCount,
      @JsonKey(name: "verified_member_count") String? verifiedMemberCount,
      @JsonKey(name: "non_verified_member_count")
      String? nonVerifiedMemberCount,
      @JsonKey(name: "btc_constituency_name") String? btcConstituencyName,
      @JsonKey(name: "member_name") String? memberName});
}

/// @nodoc
class __$$TopPerformerImplCopyWithImpl<$Res>
    extends _$TopPerformerCopyWithImpl<$Res, _$TopPerformerImpl>
    implements _$$TopPerformerImplCopyWith<$Res> {
  __$$TopPerformerImplCopyWithImpl(
      _$TopPerformerImpl _value, $Res Function(_$TopPerformerImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopPerformer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refCount = freezed,
    Object? verifiedMemberCount = freezed,
    Object? nonVerifiedMemberCount = freezed,
    Object? btcConstituencyName = freezed,
    Object? memberName = freezed,
  }) {
    return _then(_$TopPerformerImpl(
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
      btcConstituencyName: freezed == btcConstituencyName
          ? _value.btcConstituencyName
          : btcConstituencyName // ignore: cast_nullable_to_non_nullable
              as String?,
      memberName: freezed == memberName
          ? _value.memberName
          : memberName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopPerformerImpl implements _TopPerformer {
  const _$TopPerformerImpl(
      {@JsonKey(name: "ref_count") this.refCount,
      @JsonKey(name: "verified_member_count") this.verifiedMemberCount,
      @JsonKey(name: "non_verified_member_count") this.nonVerifiedMemberCount,
      @JsonKey(name: "btc_constituency_name") this.btcConstituencyName,
      @JsonKey(name: "member_name") this.memberName});

  factory _$TopPerformerImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopPerformerImplFromJson(json);

  @override
  @JsonKey(name: "ref_count")
  final int? refCount;
  @override
  @JsonKey(name: "verified_member_count")
  final String? verifiedMemberCount;
  @override
  @JsonKey(name: "non_verified_member_count")
  final String? nonVerifiedMemberCount;
  @override
  @JsonKey(name: "btc_constituency_name")
  final String? btcConstituencyName;
  @override
  @JsonKey(name: "member_name")
  final String? memberName;

  @override
  String toString() {
    return 'TopPerformer(refCount: $refCount, verifiedMemberCount: $verifiedMemberCount, nonVerifiedMemberCount: $nonVerifiedMemberCount, btcConstituencyName: $btcConstituencyName, memberName: $memberName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopPerformerImpl &&
            (identical(other.refCount, refCount) ||
                other.refCount == refCount) &&
            (identical(other.verifiedMemberCount, verifiedMemberCount) ||
                other.verifiedMemberCount == verifiedMemberCount) &&
            (identical(other.nonVerifiedMemberCount, nonVerifiedMemberCount) ||
                other.nonVerifiedMemberCount == nonVerifiedMemberCount) &&
            (identical(other.btcConstituencyName, btcConstituencyName) ||
                other.btcConstituencyName == btcConstituencyName) &&
            (identical(other.memberName, memberName) ||
                other.memberName == memberName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refCount, verifiedMemberCount,
      nonVerifiedMemberCount, btcConstituencyName, memberName);

  /// Create a copy of TopPerformer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopPerformerImplCopyWith<_$TopPerformerImpl> get copyWith =>
      __$$TopPerformerImplCopyWithImpl<_$TopPerformerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopPerformerImplToJson(
      this,
    );
  }
}

abstract class _TopPerformer implements TopPerformer {
  const factory _TopPerformer(
      {@JsonKey(name: "ref_count") final int? refCount,
      @JsonKey(name: "verified_member_count") final String? verifiedMemberCount,
      @JsonKey(name: "non_verified_member_count")
      final String? nonVerifiedMemberCount,
      @JsonKey(name: "btc_constituency_name") final String? btcConstituencyName,
      @JsonKey(name: "member_name")
      final String? memberName}) = _$TopPerformerImpl;

  factory _TopPerformer.fromJson(Map<String, dynamic> json) =
      _$TopPerformerImpl.fromJson;

  @override
  @JsonKey(name: "ref_count")
  int? get refCount;
  @override
  @JsonKey(name: "verified_member_count")
  String? get verifiedMemberCount;
  @override
  @JsonKey(name: "non_verified_member_count")
  String? get nonVerifiedMemberCount;
  @override
  @JsonKey(name: "btc_constituency_name")
  String? get btcConstituencyName;
  @override
  @JsonKey(name: "member_name")
  String? get memberName;

  /// Create a copy of TopPerformer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopPerformerImplCopyWith<_$TopPerformerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopPerformingPrimary _$TopPerformingPrimaryFromJson(Map<String, dynamic> json) {
  return _TopPerformingPrimary.fromJson(json);
}

/// @nodoc
mixin _$TopPerformingPrimary {
  @JsonKey(name: "btc_constituency")
  int? get btcConstituency => throw _privateConstructorUsedError;
  @JsonKey(name: "primary_name")
  String? get primaryName => throw _privateConstructorUsedError;
  @JsonKey(name: "btc_constituency_name")
  String? get btcConstituencyName => throw _privateConstructorUsedError;
  @JsonKey(name: "member_count")
  int? get memberCount => throw _privateConstructorUsedError;
  @JsonKey(name: "verified_member_count")
  String? get verifiedMemberCount => throw _privateConstructorUsedError;
  @JsonKey(name: "non_verified_member_count")
  String? get nonVerifiedMemberCount => throw _privateConstructorUsedError;

  /// Serializes this TopPerformingPrimary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopPerformingPrimary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopPerformingPrimaryCopyWith<TopPerformingPrimary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopPerformingPrimaryCopyWith<$Res> {
  factory $TopPerformingPrimaryCopyWith(TopPerformingPrimary value,
          $Res Function(TopPerformingPrimary) then) =
      _$TopPerformingPrimaryCopyWithImpl<$Res, TopPerformingPrimary>;
  @useResult
  $Res call(
      {@JsonKey(name: "btc_constituency") int? btcConstituency,
      @JsonKey(name: "primary_name") String? primaryName,
      @JsonKey(name: "btc_constituency_name") String? btcConstituencyName,
      @JsonKey(name: "member_count") int? memberCount,
      @JsonKey(name: "verified_member_count") String? verifiedMemberCount,
      @JsonKey(name: "non_verified_member_count")
      String? nonVerifiedMemberCount});
}

/// @nodoc
class _$TopPerformingPrimaryCopyWithImpl<$Res,
        $Val extends TopPerformingPrimary>
    implements $TopPerformingPrimaryCopyWith<$Res> {
  _$TopPerformingPrimaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopPerformingPrimary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? btcConstituency = freezed,
    Object? primaryName = freezed,
    Object? btcConstituencyName = freezed,
    Object? memberCount = freezed,
    Object? verifiedMemberCount = freezed,
    Object? nonVerifiedMemberCount = freezed,
  }) {
    return _then(_value.copyWith(
      btcConstituency: freezed == btcConstituency
          ? _value.btcConstituency
          : btcConstituency // ignore: cast_nullable_to_non_nullable
              as int?,
      primaryName: freezed == primaryName
          ? _value.primaryName
          : primaryName // ignore: cast_nullable_to_non_nullable
              as String?,
      btcConstituencyName: freezed == btcConstituencyName
          ? _value.btcConstituencyName
          : btcConstituencyName // ignore: cast_nullable_to_non_nullable
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
abstract class _$$TopPerformingPrimaryImplCopyWith<$Res>
    implements $TopPerformingPrimaryCopyWith<$Res> {
  factory _$$TopPerformingPrimaryImplCopyWith(_$TopPerformingPrimaryImpl value,
          $Res Function(_$TopPerformingPrimaryImpl) then) =
      __$$TopPerformingPrimaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "btc_constituency") int? btcConstituency,
      @JsonKey(name: "primary_name") String? primaryName,
      @JsonKey(name: "btc_constituency_name") String? btcConstituencyName,
      @JsonKey(name: "member_count") int? memberCount,
      @JsonKey(name: "verified_member_count") String? verifiedMemberCount,
      @JsonKey(name: "non_verified_member_count")
      String? nonVerifiedMemberCount});
}

/// @nodoc
class __$$TopPerformingPrimaryImplCopyWithImpl<$Res>
    extends _$TopPerformingPrimaryCopyWithImpl<$Res, _$TopPerformingPrimaryImpl>
    implements _$$TopPerformingPrimaryImplCopyWith<$Res> {
  __$$TopPerformingPrimaryImplCopyWithImpl(_$TopPerformingPrimaryImpl _value,
      $Res Function(_$TopPerformingPrimaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopPerformingPrimary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? btcConstituency = freezed,
    Object? primaryName = freezed,
    Object? btcConstituencyName = freezed,
    Object? memberCount = freezed,
    Object? verifiedMemberCount = freezed,
    Object? nonVerifiedMemberCount = freezed,
  }) {
    return _then(_$TopPerformingPrimaryImpl(
      btcConstituency: freezed == btcConstituency
          ? _value.btcConstituency
          : btcConstituency // ignore: cast_nullable_to_non_nullable
              as int?,
      primaryName: freezed == primaryName
          ? _value.primaryName
          : primaryName // ignore: cast_nullable_to_non_nullable
              as String?,
      btcConstituencyName: freezed == btcConstituencyName
          ? _value.btcConstituencyName
          : btcConstituencyName // ignore: cast_nullable_to_non_nullable
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
class _$TopPerformingPrimaryImpl implements _TopPerformingPrimary {
  const _$TopPerformingPrimaryImpl(
      {@JsonKey(name: "btc_constituency") this.btcConstituency,
      @JsonKey(name: "primary_name") this.primaryName,
      @JsonKey(name: "btc_constituency_name") this.btcConstituencyName,
      @JsonKey(name: "member_count") this.memberCount,
      @JsonKey(name: "verified_member_count") this.verifiedMemberCount,
      @JsonKey(name: "non_verified_member_count") this.nonVerifiedMemberCount});

  factory _$TopPerformingPrimaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopPerformingPrimaryImplFromJson(json);

  @override
  @JsonKey(name: "btc_constituency")
  final int? btcConstituency;
  @override
  @JsonKey(name: "primary_name")
  final String? primaryName;
  @override
  @JsonKey(name: "btc_constituency_name")
  final String? btcConstituencyName;
  @override
  @JsonKey(name: "member_count")
  final int? memberCount;
  @override
  @JsonKey(name: "verified_member_count")
  final String? verifiedMemberCount;
  @override
  @JsonKey(name: "non_verified_member_count")
  final String? nonVerifiedMemberCount;

  @override
  String toString() {
    return 'TopPerformingPrimary(btcConstituency: $btcConstituency, primaryName: $primaryName, btcConstituencyName: $btcConstituencyName, memberCount: $memberCount, verifiedMemberCount: $verifiedMemberCount, nonVerifiedMemberCount: $nonVerifiedMemberCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopPerformingPrimaryImpl &&
            (identical(other.btcConstituency, btcConstituency) ||
                other.btcConstituency == btcConstituency) &&
            (identical(other.primaryName, primaryName) ||
                other.primaryName == primaryName) &&
            (identical(other.btcConstituencyName, btcConstituencyName) ||
                other.btcConstituencyName == btcConstituencyName) &&
            (identical(other.memberCount, memberCount) ||
                other.memberCount == memberCount) &&
            (identical(other.verifiedMemberCount, verifiedMemberCount) ||
                other.verifiedMemberCount == verifiedMemberCount) &&
            (identical(other.nonVerifiedMemberCount, nonVerifiedMemberCount) ||
                other.nonVerifiedMemberCount == nonVerifiedMemberCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      btcConstituency,
      primaryName,
      btcConstituencyName,
      memberCount,
      verifiedMemberCount,
      nonVerifiedMemberCount);

  /// Create a copy of TopPerformingPrimary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopPerformingPrimaryImplCopyWith<_$TopPerformingPrimaryImpl>
      get copyWith =>
          __$$TopPerformingPrimaryImplCopyWithImpl<_$TopPerformingPrimaryImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopPerformingPrimaryImplToJson(
      this,
    );
  }
}

abstract class _TopPerformingPrimary implements TopPerformingPrimary {
  const factory _TopPerformingPrimary(
      {@JsonKey(name: "btc_constituency") final int? btcConstituency,
      @JsonKey(name: "primary_name") final String? primaryName,
      @JsonKey(name: "btc_constituency_name") final String? btcConstituencyName,
      @JsonKey(name: "member_count") final int? memberCount,
      @JsonKey(name: "verified_member_count") final String? verifiedMemberCount,
      @JsonKey(name: "non_verified_member_count")
      final String? nonVerifiedMemberCount}) = _$TopPerformingPrimaryImpl;

  factory _TopPerformingPrimary.fromJson(Map<String, dynamic> json) =
      _$TopPerformingPrimaryImpl.fromJson;

  @override
  @JsonKey(name: "btc_constituency")
  int? get btcConstituency;
  @override
  @JsonKey(name: "primary_name")
  String? get primaryName;
  @override
  @JsonKey(name: "btc_constituency_name")
  String? get btcConstituencyName;
  @override
  @JsonKey(name: "member_count")
  int? get memberCount;
  @override
  @JsonKey(name: "verified_member_count")
  String? get verifiedMemberCount;
  @override
  @JsonKey(name: "non_verified_member_count")
  String? get nonVerifiedMemberCount;

  /// Create a copy of TopPerformingPrimary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopPerformingPrimaryImplCopyWith<_$TopPerformingPrimaryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TopPerformingBooth _$TopPerformingBoothFromJson(Map<String, dynamic> json) {
  return _TopPerformingBooth.fromJson(json);
}

/// @nodoc
mixin _$TopPerformingBooth {
  @JsonKey(name: "booth_id")
  int? get boothId => throw _privateConstructorUsedError;
  @JsonKey(name: "member_count")
  int? get memberCount => throw _privateConstructorUsedError;
  @JsonKey(name: "verified_member_count")
  String? get verifiedMemberCount => throw _privateConstructorUsedError;
  @JsonKey(name: "non_verified_member_count")
  String? get nonVerifiedMemberCount => throw _privateConstructorUsedError;
  @JsonKey(name: "booth_name")
  String? get boothName => throw _privateConstructorUsedError;

  /// Serializes this TopPerformingBooth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopPerformingBooth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopPerformingBoothCopyWith<TopPerformingBooth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopPerformingBoothCopyWith<$Res> {
  factory $TopPerformingBoothCopyWith(
          TopPerformingBooth value, $Res Function(TopPerformingBooth) then) =
      _$TopPerformingBoothCopyWithImpl<$Res, TopPerformingBooth>;
  @useResult
  $Res call(
      {@JsonKey(name: "booth_id") int? boothId,
      @JsonKey(name: "member_count") int? memberCount,
      @JsonKey(name: "verified_member_count") String? verifiedMemberCount,
      @JsonKey(name: "non_verified_member_count")
      String? nonVerifiedMemberCount,
      @JsonKey(name: "booth_name") String? boothName});
}

/// @nodoc
class _$TopPerformingBoothCopyWithImpl<$Res, $Val extends TopPerformingBooth>
    implements $TopPerformingBoothCopyWith<$Res> {
  _$TopPerformingBoothCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopPerformingBooth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boothId = freezed,
    Object? memberCount = freezed,
    Object? verifiedMemberCount = freezed,
    Object? nonVerifiedMemberCount = freezed,
    Object? boothName = freezed,
  }) {
    return _then(_value.copyWith(
      boothId: freezed == boothId
          ? _value.boothId
          : boothId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      boothName: freezed == boothName
          ? _value.boothName
          : boothName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopPerformingBoothImplCopyWith<$Res>
    implements $TopPerformingBoothCopyWith<$Res> {
  factory _$$TopPerformingBoothImplCopyWith(_$TopPerformingBoothImpl value,
          $Res Function(_$TopPerformingBoothImpl) then) =
      __$$TopPerformingBoothImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "booth_id") int? boothId,
      @JsonKey(name: "member_count") int? memberCount,
      @JsonKey(name: "verified_member_count") String? verifiedMemberCount,
      @JsonKey(name: "non_verified_member_count")
      String? nonVerifiedMemberCount,
      @JsonKey(name: "booth_name") String? boothName});
}

/// @nodoc
class __$$TopPerformingBoothImplCopyWithImpl<$Res>
    extends _$TopPerformingBoothCopyWithImpl<$Res, _$TopPerformingBoothImpl>
    implements _$$TopPerformingBoothImplCopyWith<$Res> {
  __$$TopPerformingBoothImplCopyWithImpl(_$TopPerformingBoothImpl _value,
      $Res Function(_$TopPerformingBoothImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopPerformingBooth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boothId = freezed,
    Object? memberCount = freezed,
    Object? verifiedMemberCount = freezed,
    Object? nonVerifiedMemberCount = freezed,
    Object? boothName = freezed,
  }) {
    return _then(_$TopPerformingBoothImpl(
      boothId: freezed == boothId
          ? _value.boothId
          : boothId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      boothName: freezed == boothName
          ? _value.boothName
          : boothName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopPerformingBoothImpl implements _TopPerformingBooth {
  const _$TopPerformingBoothImpl(
      {@JsonKey(name: "booth_id") this.boothId,
      @JsonKey(name: "member_count") this.memberCount,
      @JsonKey(name: "verified_member_count") this.verifiedMemberCount,
      @JsonKey(name: "non_verified_member_count") this.nonVerifiedMemberCount,
      @JsonKey(name: "booth_name") this.boothName});

  factory _$TopPerformingBoothImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopPerformingBoothImplFromJson(json);

  @override
  @JsonKey(name: "booth_id")
  final int? boothId;
  @override
  @JsonKey(name: "member_count")
  final int? memberCount;
  @override
  @JsonKey(name: "verified_member_count")
  final String? verifiedMemberCount;
  @override
  @JsonKey(name: "non_verified_member_count")
  final String? nonVerifiedMemberCount;
  @override
  @JsonKey(name: "booth_name")
  final String? boothName;

  @override
  String toString() {
    return 'TopPerformingBooth(boothId: $boothId, memberCount: $memberCount, verifiedMemberCount: $verifiedMemberCount, nonVerifiedMemberCount: $nonVerifiedMemberCount, boothName: $boothName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopPerformingBoothImpl &&
            (identical(other.boothId, boothId) || other.boothId == boothId) &&
            (identical(other.memberCount, memberCount) ||
                other.memberCount == memberCount) &&
            (identical(other.verifiedMemberCount, verifiedMemberCount) ||
                other.verifiedMemberCount == verifiedMemberCount) &&
            (identical(other.nonVerifiedMemberCount, nonVerifiedMemberCount) ||
                other.nonVerifiedMemberCount == nonVerifiedMemberCount) &&
            (identical(other.boothName, boothName) ||
                other.boothName == boothName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, boothId, memberCount,
      verifiedMemberCount, nonVerifiedMemberCount, boothName);

  /// Create a copy of TopPerformingBooth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopPerformingBoothImplCopyWith<_$TopPerformingBoothImpl> get copyWith =>
      __$$TopPerformingBoothImplCopyWithImpl<_$TopPerformingBoothImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopPerformingBoothImplToJson(
      this,
    );
  }
}

abstract class _TopPerformingBooth implements TopPerformingBooth {
  const factory _TopPerformingBooth(
      {@JsonKey(name: "booth_id") final int? boothId,
      @JsonKey(name: "member_count") final int? memberCount,
      @JsonKey(name: "verified_member_count") final String? verifiedMemberCount,
      @JsonKey(name: "non_verified_member_count")
      final String? nonVerifiedMemberCount,
      @JsonKey(name: "booth_name")
      final String? boothName}) = _$TopPerformingBoothImpl;

  factory _TopPerformingBooth.fromJson(Map<String, dynamic> json) =
      _$TopPerformingBoothImpl.fromJson;

  @override
  @JsonKey(name: "booth_id")
  int? get boothId;
  @override
  @JsonKey(name: "member_count")
  int? get memberCount;
  @override
  @JsonKey(name: "verified_member_count")
  String? get verifiedMemberCount;
  @override
  @JsonKey(name: "non_verified_member_count")
  String? get nonVerifiedMemberCount;
  @override
  @JsonKey(name: "booth_name")
  String? get boothName;

  /// Create a copy of TopPerformingBooth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopPerformingBoothImplCopyWith<_$TopPerformingBoothImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopPerformingPartyDistrict _$TopPerformingPartyDistrictFromJson(
    Map<String, dynamic> json) {
  return _TopPerformingPartyDistrict.fromJson(json);
}

/// @nodoc
mixin _$TopPerformingPartyDistrict {
  @JsonKey(name: "party_district")
  int? get partyDistrict => throw _privateConstructorUsedError;
  @JsonKey(name: "member_count")
  int? get memberCount => throw _privateConstructorUsedError;
  @JsonKey(name: "verified_member_count")
  String? get verifiedMemberCount => throw _privateConstructorUsedError;
  @JsonKey(name: "non_verified_member_count")
  String? get nonVerifiedMemberCount => throw _privateConstructorUsedError;
  @JsonKey(name: "party_district_name")
  String? get partyDistrictName => throw _privateConstructorUsedError;

  /// Serializes this TopPerformingPartyDistrict to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopPerformingPartyDistrict
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopPerformingPartyDistrictCopyWith<TopPerformingPartyDistrict>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopPerformingPartyDistrictCopyWith<$Res> {
  factory $TopPerformingPartyDistrictCopyWith(TopPerformingPartyDistrict value,
          $Res Function(TopPerformingPartyDistrict) then) =
      _$TopPerformingPartyDistrictCopyWithImpl<$Res,
          TopPerformingPartyDistrict>;
  @useResult
  $Res call(
      {@JsonKey(name: "party_district") int? partyDistrict,
      @JsonKey(name: "member_count") int? memberCount,
      @JsonKey(name: "verified_member_count") String? verifiedMemberCount,
      @JsonKey(name: "non_verified_member_count")
      String? nonVerifiedMemberCount,
      @JsonKey(name: "party_district_name") String? partyDistrictName});
}

/// @nodoc
class _$TopPerformingPartyDistrictCopyWithImpl<$Res,
        $Val extends TopPerformingPartyDistrict>
    implements $TopPerformingPartyDistrictCopyWith<$Res> {
  _$TopPerformingPartyDistrictCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopPerformingPartyDistrict
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partyDistrict = freezed,
    Object? memberCount = freezed,
    Object? verifiedMemberCount = freezed,
    Object? nonVerifiedMemberCount = freezed,
    Object? partyDistrictName = freezed,
  }) {
    return _then(_value.copyWith(
      partyDistrict: freezed == partyDistrict
          ? _value.partyDistrict
          : partyDistrict // ignore: cast_nullable_to_non_nullable
              as int?,
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
      partyDistrictName: freezed == partyDistrictName
          ? _value.partyDistrictName
          : partyDistrictName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopPerformingPartyDistrictImplCopyWith<$Res>
    implements $TopPerformingPartyDistrictCopyWith<$Res> {
  factory _$$TopPerformingPartyDistrictImplCopyWith(
          _$TopPerformingPartyDistrictImpl value,
          $Res Function(_$TopPerformingPartyDistrictImpl) then) =
      __$$TopPerformingPartyDistrictImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "party_district") int? partyDistrict,
      @JsonKey(name: "member_count") int? memberCount,
      @JsonKey(name: "verified_member_count") String? verifiedMemberCount,
      @JsonKey(name: "non_verified_member_count")
      String? nonVerifiedMemberCount,
      @JsonKey(name: "party_district_name") String? partyDistrictName});
}

/// @nodoc
class __$$TopPerformingPartyDistrictImplCopyWithImpl<$Res>
    extends _$TopPerformingPartyDistrictCopyWithImpl<$Res,
        _$TopPerformingPartyDistrictImpl>
    implements _$$TopPerformingPartyDistrictImplCopyWith<$Res> {
  __$$TopPerformingPartyDistrictImplCopyWithImpl(
      _$TopPerformingPartyDistrictImpl _value,
      $Res Function(_$TopPerformingPartyDistrictImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopPerformingPartyDistrict
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partyDistrict = freezed,
    Object? memberCount = freezed,
    Object? verifiedMemberCount = freezed,
    Object? nonVerifiedMemberCount = freezed,
    Object? partyDistrictName = freezed,
  }) {
    return _then(_$TopPerformingPartyDistrictImpl(
      partyDistrict: freezed == partyDistrict
          ? _value.partyDistrict
          : partyDistrict // ignore: cast_nullable_to_non_nullable
              as int?,
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
      partyDistrictName: freezed == partyDistrictName
          ? _value.partyDistrictName
          : partyDistrictName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopPerformingPartyDistrictImpl implements _TopPerformingPartyDistrict {
  const _$TopPerformingPartyDistrictImpl(
      {@JsonKey(name: "party_district") this.partyDistrict,
      @JsonKey(name: "member_count") this.memberCount,
      @JsonKey(name: "verified_member_count") this.verifiedMemberCount,
      @JsonKey(name: "non_verified_member_count") this.nonVerifiedMemberCount,
      @JsonKey(name: "party_district_name") this.partyDistrictName});

  factory _$TopPerformingPartyDistrictImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TopPerformingPartyDistrictImplFromJson(json);

  @override
  @JsonKey(name: "party_district")
  final int? partyDistrict;
  @override
  @JsonKey(name: "member_count")
  final int? memberCount;
  @override
  @JsonKey(name: "verified_member_count")
  final String? verifiedMemberCount;
  @override
  @JsonKey(name: "non_verified_member_count")
  final String? nonVerifiedMemberCount;
  @override
  @JsonKey(name: "party_district_name")
  final String? partyDistrictName;

  @override
  String toString() {
    return 'TopPerformingPartyDistrict(partyDistrict: $partyDistrict, memberCount: $memberCount, verifiedMemberCount: $verifiedMemberCount, nonVerifiedMemberCount: $nonVerifiedMemberCount, partyDistrictName: $partyDistrictName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopPerformingPartyDistrictImpl &&
            (identical(other.partyDistrict, partyDistrict) ||
                other.partyDistrict == partyDistrict) &&
            (identical(other.memberCount, memberCount) ||
                other.memberCount == memberCount) &&
            (identical(other.verifiedMemberCount, verifiedMemberCount) ||
                other.verifiedMemberCount == verifiedMemberCount) &&
            (identical(other.nonVerifiedMemberCount, nonVerifiedMemberCount) ||
                other.nonVerifiedMemberCount == nonVerifiedMemberCount) &&
            (identical(other.partyDistrictName, partyDistrictName) ||
                other.partyDistrictName == partyDistrictName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, partyDistrict, memberCount,
      verifiedMemberCount, nonVerifiedMemberCount, partyDistrictName);

  /// Create a copy of TopPerformingPartyDistrict
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopPerformingPartyDistrictImplCopyWith<_$TopPerformingPartyDistrictImpl>
      get copyWith => __$$TopPerformingPartyDistrictImplCopyWithImpl<
          _$TopPerformingPartyDistrictImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopPerformingPartyDistrictImplToJson(
      this,
    );
  }
}

abstract class _TopPerformingPartyDistrict
    implements TopPerformingPartyDistrict {
  const factory _TopPerformingPartyDistrict(
      {@JsonKey(name: "party_district") final int? partyDistrict,
      @JsonKey(name: "member_count") final int? memberCount,
      @JsonKey(name: "verified_member_count") final String? verifiedMemberCount,
      @JsonKey(name: "non_verified_member_count")
      final String? nonVerifiedMemberCount,
      @JsonKey(name: "party_district_name")
      final String? partyDistrictName}) = _$TopPerformingPartyDistrictImpl;

  factory _TopPerformingPartyDistrict.fromJson(Map<String, dynamic> json) =
      _$TopPerformingPartyDistrictImpl.fromJson;

  @override
  @JsonKey(name: "party_district")
  int? get partyDistrict;
  @override
  @JsonKey(name: "member_count")
  int? get memberCount;
  @override
  @JsonKey(name: "verified_member_count")
  String? get verifiedMemberCount;
  @override
  @JsonKey(name: "non_verified_member_count")
  String? get nonVerifiedMemberCount;
  @override
  @JsonKey(name: "party_district_name")
  String? get partyDistrictName;

  /// Create a copy of TopPerformingPartyDistrict
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopPerformingPartyDistrictImplCopyWith<_$TopPerformingPartyDistrictImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TopPerformingBtcConstituency _$TopPerformingBtcConstituencyFromJson(
    Map<String, dynamic> json) {
  return _TopPerformingBtcConstituency.fromJson(json);
}

/// @nodoc
mixin _$TopPerformingBtcConstituency {
  @JsonKey(name: "btc_constituency")
  int? get btcConstituency => throw _privateConstructorUsedError;
  @JsonKey(name: "member_count")
  int? get memberCount => throw _privateConstructorUsedError;
  @JsonKey(name: "verified_member_count")
  String? get verifiedMemberCount => throw _privateConstructorUsedError;
  @JsonKey(name: "non_verified_member_count")
  String? get nonVerifiedMemberCount => throw _privateConstructorUsedError;
  @JsonKey(name: "btc_constituency_name")
  String? get btcConstituencyName => throw _privateConstructorUsedError;

  /// Serializes this TopPerformingBtcConstituency to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopPerformingBtcConstituency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopPerformingBtcConstituencyCopyWith<TopPerformingBtcConstituency>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopPerformingBtcConstituencyCopyWith<$Res> {
  factory $TopPerformingBtcConstituencyCopyWith(
          TopPerformingBtcConstituency value,
          $Res Function(TopPerformingBtcConstituency) then) =
      _$TopPerformingBtcConstituencyCopyWithImpl<$Res,
          TopPerformingBtcConstituency>;
  @useResult
  $Res call(
      {@JsonKey(name: "btc_constituency") int? btcConstituency,
      @JsonKey(name: "member_count") int? memberCount,
      @JsonKey(name: "verified_member_count") String? verifiedMemberCount,
      @JsonKey(name: "non_verified_member_count")
      String? nonVerifiedMemberCount,
      @JsonKey(name: "btc_constituency_name") String? btcConstituencyName});
}

/// @nodoc
class _$TopPerformingBtcConstituencyCopyWithImpl<$Res,
        $Val extends TopPerformingBtcConstituency>
    implements $TopPerformingBtcConstituencyCopyWith<$Res> {
  _$TopPerformingBtcConstituencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopPerformingBtcConstituency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? btcConstituency = freezed,
    Object? memberCount = freezed,
    Object? verifiedMemberCount = freezed,
    Object? nonVerifiedMemberCount = freezed,
    Object? btcConstituencyName = freezed,
  }) {
    return _then(_value.copyWith(
      btcConstituency: freezed == btcConstituency
          ? _value.btcConstituency
          : btcConstituency // ignore: cast_nullable_to_non_nullable
              as int?,
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
      btcConstituencyName: freezed == btcConstituencyName
          ? _value.btcConstituencyName
          : btcConstituencyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopPerformingBtcConstituencyImplCopyWith<$Res>
    implements $TopPerformingBtcConstituencyCopyWith<$Res> {
  factory _$$TopPerformingBtcConstituencyImplCopyWith(
          _$TopPerformingBtcConstituencyImpl value,
          $Res Function(_$TopPerformingBtcConstituencyImpl) then) =
      __$$TopPerformingBtcConstituencyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "btc_constituency") int? btcConstituency,
      @JsonKey(name: "member_count") int? memberCount,
      @JsonKey(name: "verified_member_count") String? verifiedMemberCount,
      @JsonKey(name: "non_verified_member_count")
      String? nonVerifiedMemberCount,
      @JsonKey(name: "btc_constituency_name") String? btcConstituencyName});
}

/// @nodoc
class __$$TopPerformingBtcConstituencyImplCopyWithImpl<$Res>
    extends _$TopPerformingBtcConstituencyCopyWithImpl<$Res,
        _$TopPerformingBtcConstituencyImpl>
    implements _$$TopPerformingBtcConstituencyImplCopyWith<$Res> {
  __$$TopPerformingBtcConstituencyImplCopyWithImpl(
      _$TopPerformingBtcConstituencyImpl _value,
      $Res Function(_$TopPerformingBtcConstituencyImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopPerformingBtcConstituency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? btcConstituency = freezed,
    Object? memberCount = freezed,
    Object? verifiedMemberCount = freezed,
    Object? nonVerifiedMemberCount = freezed,
    Object? btcConstituencyName = freezed,
  }) {
    return _then(_$TopPerformingBtcConstituencyImpl(
      btcConstituency: freezed == btcConstituency
          ? _value.btcConstituency
          : btcConstituency // ignore: cast_nullable_to_non_nullable
              as int?,
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
      btcConstituencyName: freezed == btcConstituencyName
          ? _value.btcConstituencyName
          : btcConstituencyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopPerformingBtcConstituencyImpl
    implements _TopPerformingBtcConstituency {
  const _$TopPerformingBtcConstituencyImpl(
      {@JsonKey(name: "btc_constituency") this.btcConstituency,
      @JsonKey(name: "member_count") this.memberCount,
      @JsonKey(name: "verified_member_count") this.verifiedMemberCount,
      @JsonKey(name: "non_verified_member_count") this.nonVerifiedMemberCount,
      @JsonKey(name: "btc_constituency_name") this.btcConstituencyName});

  factory _$TopPerformingBtcConstituencyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TopPerformingBtcConstituencyImplFromJson(json);

  @override
  @JsonKey(name: "btc_constituency")
  final int? btcConstituency;
  @override
  @JsonKey(name: "member_count")
  final int? memberCount;
  @override
  @JsonKey(name: "verified_member_count")
  final String? verifiedMemberCount;
  @override
  @JsonKey(name: "non_verified_member_count")
  final String? nonVerifiedMemberCount;
  @override
  @JsonKey(name: "btc_constituency_name")
  final String? btcConstituencyName;

  @override
  String toString() {
    return 'TopPerformingBtcConstituency(btcConstituency: $btcConstituency, memberCount: $memberCount, verifiedMemberCount: $verifiedMemberCount, nonVerifiedMemberCount: $nonVerifiedMemberCount, btcConstituencyName: $btcConstituencyName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopPerformingBtcConstituencyImpl &&
            (identical(other.btcConstituency, btcConstituency) ||
                other.btcConstituency == btcConstituency) &&
            (identical(other.memberCount, memberCount) ||
                other.memberCount == memberCount) &&
            (identical(other.verifiedMemberCount, verifiedMemberCount) ||
                other.verifiedMemberCount == verifiedMemberCount) &&
            (identical(other.nonVerifiedMemberCount, nonVerifiedMemberCount) ||
                other.nonVerifiedMemberCount == nonVerifiedMemberCount) &&
            (identical(other.btcConstituencyName, btcConstituencyName) ||
                other.btcConstituencyName == btcConstituencyName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, btcConstituency, memberCount,
      verifiedMemberCount, nonVerifiedMemberCount, btcConstituencyName);

  /// Create a copy of TopPerformingBtcConstituency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopPerformingBtcConstituencyImplCopyWith<
          _$TopPerformingBtcConstituencyImpl>
      get copyWith => __$$TopPerformingBtcConstituencyImplCopyWithImpl<
          _$TopPerformingBtcConstituencyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopPerformingBtcConstituencyImplToJson(
      this,
    );
  }
}

abstract class _TopPerformingBtcConstituency
    implements TopPerformingBtcConstituency {
  const factory _TopPerformingBtcConstituency(
      {@JsonKey(name: "btc_constituency") final int? btcConstituency,
      @JsonKey(name: "member_count") final int? memberCount,
      @JsonKey(name: "verified_member_count") final String? verifiedMemberCount,
      @JsonKey(name: "non_verified_member_count")
      final String? nonVerifiedMemberCount,
      @JsonKey(name: "btc_constituency_name")
      final String? btcConstituencyName}) = _$TopPerformingBtcConstituencyImpl;

  factory _TopPerformingBtcConstituency.fromJson(Map<String, dynamic> json) =
      _$TopPerformingBtcConstituencyImpl.fromJson;

  @override
  @JsonKey(name: "btc_constituency")
  int? get btcConstituency;
  @override
  @JsonKey(name: "member_count")
  int? get memberCount;
  @override
  @JsonKey(name: "verified_member_count")
  String? get verifiedMemberCount;
  @override
  @JsonKey(name: "non_verified_member_count")
  String? get nonVerifiedMemberCount;
  @override
  @JsonKey(name: "btc_constituency_name")
  String? get btcConstituencyName;

  /// Create a copy of TopPerformingBtcConstituency
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopPerformingBtcConstituencyImplCopyWith<
          _$TopPerformingBtcConstituencyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
