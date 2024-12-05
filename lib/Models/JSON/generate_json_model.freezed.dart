// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_json_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JsonDataModel _$JsonDataModelFromJson(Map<String, dynamic> json) {
  return _JsonDataModel.fromJson(json);
}

/// @nodoc
mixin _$JsonDataModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  IntermediateData get intermediateData => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  /// Serializes this JsonDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JsonDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JsonDataModelCopyWith<JsonDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonDataModelCopyWith<$Res> {
  factory $JsonDataModelCopyWith(
          JsonDataModel value, $Res Function(JsonDataModel) then) =
      _$JsonDataModelCopyWithImpl<$Res, JsonDataModel>;
  @useResult
  $Res call(
      {int status,
      String message,
      @JsonKey(name: "data") IntermediateData intermediateData,
      int code});

  $IntermediateDataCopyWith<$Res> get intermediateData;
}

/// @nodoc
class _$JsonDataModelCopyWithImpl<$Res, $Val extends JsonDataModel>
    implements $JsonDataModelCopyWith<$Res> {
  _$JsonDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JsonDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? intermediateData = null,
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
      intermediateData: null == intermediateData
          ? _value.intermediateData
          : intermediateData // ignore: cast_nullable_to_non_nullable
              as IntermediateData,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of JsonDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntermediateDataCopyWith<$Res> get intermediateData {
    return $IntermediateDataCopyWith<$Res>(_value.intermediateData, (value) {
      return _then(_value.copyWith(intermediateData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JsonDataModelImplCopyWith<$Res>
    implements $JsonDataModelCopyWith<$Res> {
  factory _$$JsonDataModelImplCopyWith(
          _$JsonDataModelImpl value, $Res Function(_$JsonDataModelImpl) then) =
      __$$JsonDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String message,
      @JsonKey(name: "data") IntermediateData intermediateData,
      int code});

  @override
  $IntermediateDataCopyWith<$Res> get intermediateData;
}

/// @nodoc
class __$$JsonDataModelImplCopyWithImpl<$Res>
    extends _$JsonDataModelCopyWithImpl<$Res, _$JsonDataModelImpl>
    implements _$$JsonDataModelImplCopyWith<$Res> {
  __$$JsonDataModelImplCopyWithImpl(
      _$JsonDataModelImpl _value, $Res Function(_$JsonDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of JsonDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? intermediateData = null,
    Object? code = null,
  }) {
    return _then(_$JsonDataModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      intermediateData: null == intermediateData
          ? _value.intermediateData
          : intermediateData // ignore: cast_nullable_to_non_nullable
              as IntermediateData,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JsonDataModelImpl implements _JsonDataModel {
  const _$JsonDataModelImpl(
      {required this.status,
      required this.message,
      @JsonKey(name: "data") required this.intermediateData,
      required this.code});

  factory _$JsonDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JsonDataModelImplFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  @JsonKey(name: "data")
  final IntermediateData intermediateData;
  @override
  final int code;

  @override
  String toString() {
    return 'JsonDataModel(status: $status, message: $message, intermediateData: $intermediateData, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonDataModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.intermediateData, intermediateData) ||
                other.intermediateData == intermediateData) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, message, intermediateData, code);

  /// Create a copy of JsonDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JsonDataModelImplCopyWith<_$JsonDataModelImpl> get copyWith =>
      __$$JsonDataModelImplCopyWithImpl<_$JsonDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JsonDataModelImplToJson(
      this,
    );
  }
}

abstract class _JsonDataModel implements JsonDataModel {
  const factory _JsonDataModel(
      {required final int status,
      required final String message,
      @JsonKey(name: "data") required final IntermediateData intermediateData,
      required final int code}) = _$JsonDataModelImpl;

  factory _JsonDataModel.fromJson(Map<String, dynamic> json) =
      _$JsonDataModelImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  @JsonKey(name: "data")
  IntermediateData get intermediateData;
  @override
  int get code;

  /// Create a copy of JsonDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JsonDataModelImplCopyWith<_$JsonDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IntermediateData _$IntermediateDataFromJson(Map<String, dynamic> json) {
  return _IntermediateData.fromJson(json);
}

/// @nodoc
mixin _$IntermediateData {
  Data get data => throw _privateConstructorUsedError;
  @JsonKey(name: "additional_info")
  String? get additionalInfo => throw _privateConstructorUsedError;

  /// Serializes this IntermediateData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IntermediateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IntermediateDataCopyWith<IntermediateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntermediateDataCopyWith<$Res> {
  factory $IntermediateDataCopyWith(
          IntermediateData value, $Res Function(IntermediateData) then) =
      _$IntermediateDataCopyWithImpl<$Res, IntermediateData>;
  @useResult
  $Res call(
      {Data data, @JsonKey(name: "additional_info") String? additionalInfo});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$IntermediateDataCopyWithImpl<$Res, $Val extends IntermediateData>
    implements $IntermediateDataCopyWith<$Res> {
  _$IntermediateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IntermediateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? additionalInfo = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of IntermediateData
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
abstract class _$$IntermediateDataImplCopyWith<$Res>
    implements $IntermediateDataCopyWith<$Res> {
  factory _$$IntermediateDataImplCopyWith(_$IntermediateDataImpl value,
          $Res Function(_$IntermediateDataImpl) then) =
      __$$IntermediateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Data data, @JsonKey(name: "additional_info") String? additionalInfo});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$IntermediateDataImplCopyWithImpl<$Res>
    extends _$IntermediateDataCopyWithImpl<$Res, _$IntermediateDataImpl>
    implements _$$IntermediateDataImplCopyWith<$Res> {
  __$$IntermediateDataImplCopyWithImpl(_$IntermediateDataImpl _value,
      $Res Function(_$IntermediateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of IntermediateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? additionalInfo = freezed,
  }) {
    return _then(_$IntermediateDataImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IntermediateDataImpl implements _IntermediateData {
  const _$IntermediateDataImpl(
      {required this.data,
      @JsonKey(name: "additional_info") this.additionalInfo});

  factory _$IntermediateDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntermediateDataImplFromJson(json);

  @override
  final Data data;
  @override
  @JsonKey(name: "additional_info")
  final String? additionalInfo;

  @override
  String toString() {
    return 'IntermediateData(data: $data, additionalInfo: $additionalInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntermediateDataImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.additionalInfo, additionalInfo) ||
                other.additionalInfo == additionalInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, additionalInfo);

  /// Create a copy of IntermediateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IntermediateDataImplCopyWith<_$IntermediateDataImpl> get copyWith =>
      __$$IntermediateDataImplCopyWithImpl<_$IntermediateDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IntermediateDataImplToJson(
      this,
    );
  }
}

abstract class _IntermediateData implements IntermediateData {
  const factory _IntermediateData(
          {required final Data data,
          @JsonKey(name: "additional_info") final String? additionalInfo}) =
      _$IntermediateDataImpl;

  factory _IntermediateData.fromJson(Map<String, dynamic> json) =
      _$IntermediateDataImpl.fromJson;

  @override
  Data get data;
  @override
  @JsonKey(name: "additional_info")
  String? get additionalInfo;

  /// Create a copy of IntermediateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IntermediateDataImplCopyWith<_$IntermediateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "btc_assembly_constituencies")
  Map<String, List<Constituency>>? get btcAssemblyConstituencies =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "assembly_constituencies")
  List<AssemblyConstituency>? get assemblyConstituencies =>
      throw _privateConstructorUsedError;
  List<District>? get districts => throw _privateConstructorUsedError;
  @JsonKey(name: "party_district")
  List<PartyDistrict>? get partyDistricts => throw _privateConstructorUsedError;
  @JsonKey(name: "btc_primaries")
  Map<String, List<Primary>>? get btcPrimaries =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "btc_constituency")
  List<BTCConstituency>? get btcConstituency =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "village")
  List<Village>? get villages => throw _privateConstructorUsedError;
  @JsonKey(name: "booths")
  Map<String, List<Booth>>? get booths => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "btc_assembly_constituencies")
      Map<String, List<Constituency>>? btcAssemblyConstituencies,
      @JsonKey(name: "assembly_constituencies")
      List<AssemblyConstituency>? assemblyConstituencies,
      List<District>? districts,
      @JsonKey(name: "party_district") List<PartyDistrict>? partyDistricts,
      @JsonKey(name: "btc_primaries") Map<String, List<Primary>>? btcPrimaries,
      @JsonKey(name: "btc_constituency") List<BTCConstituency>? btcConstituency,
      @JsonKey(name: "village") List<Village>? villages,
      @JsonKey(name: "booths") Map<String, List<Booth>>? booths});
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
    Object? btcAssemblyConstituencies = freezed,
    Object? assemblyConstituencies = freezed,
    Object? districts = freezed,
    Object? partyDistricts = freezed,
    Object? btcPrimaries = freezed,
    Object? btcConstituency = freezed,
    Object? villages = freezed,
    Object? booths = freezed,
  }) {
    return _then(_value.copyWith(
      btcAssemblyConstituencies: freezed == btcAssemblyConstituencies
          ? _value.btcAssemblyConstituencies
          : btcAssemblyConstituencies // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Constituency>>?,
      assemblyConstituencies: freezed == assemblyConstituencies
          ? _value.assemblyConstituencies
          : assemblyConstituencies // ignore: cast_nullable_to_non_nullable
              as List<AssemblyConstituency>?,
      districts: freezed == districts
          ? _value.districts
          : districts // ignore: cast_nullable_to_non_nullable
              as List<District>?,
      partyDistricts: freezed == partyDistricts
          ? _value.partyDistricts
          : partyDistricts // ignore: cast_nullable_to_non_nullable
              as List<PartyDistrict>?,
      btcPrimaries: freezed == btcPrimaries
          ? _value.btcPrimaries
          : btcPrimaries // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Primary>>?,
      btcConstituency: freezed == btcConstituency
          ? _value.btcConstituency
          : btcConstituency // ignore: cast_nullable_to_non_nullable
              as List<BTCConstituency>?,
      villages: freezed == villages
          ? _value.villages
          : villages // ignore: cast_nullable_to_non_nullable
              as List<Village>?,
      booths: freezed == booths
          ? _value.booths
          : booths // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Booth>>?,
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
      {@JsonKey(name: "btc_assembly_constituencies")
      Map<String, List<Constituency>>? btcAssemblyConstituencies,
      @JsonKey(name: "assembly_constituencies")
      List<AssemblyConstituency>? assemblyConstituencies,
      List<District>? districts,
      @JsonKey(name: "party_district") List<PartyDistrict>? partyDistricts,
      @JsonKey(name: "btc_primaries") Map<String, List<Primary>>? btcPrimaries,
      @JsonKey(name: "btc_constituency") List<BTCConstituency>? btcConstituency,
      @JsonKey(name: "village") List<Village>? villages,
      @JsonKey(name: "booths") Map<String, List<Booth>>? booths});
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
    Object? btcAssemblyConstituencies = freezed,
    Object? assemblyConstituencies = freezed,
    Object? districts = freezed,
    Object? partyDistricts = freezed,
    Object? btcPrimaries = freezed,
    Object? btcConstituency = freezed,
    Object? villages = freezed,
    Object? booths = freezed,
  }) {
    return _then(_$DataImpl(
      btcAssemblyConstituencies: freezed == btcAssemblyConstituencies
          ? _value._btcAssemblyConstituencies
          : btcAssemblyConstituencies // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Constituency>>?,
      assemblyConstituencies: freezed == assemblyConstituencies
          ? _value._assemblyConstituencies
          : assemblyConstituencies // ignore: cast_nullable_to_non_nullable
              as List<AssemblyConstituency>?,
      districts: freezed == districts
          ? _value._districts
          : districts // ignore: cast_nullable_to_non_nullable
              as List<District>?,
      partyDistricts: freezed == partyDistricts
          ? _value._partyDistricts
          : partyDistricts // ignore: cast_nullable_to_non_nullable
              as List<PartyDistrict>?,
      btcPrimaries: freezed == btcPrimaries
          ? _value._btcPrimaries
          : btcPrimaries // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Primary>>?,
      btcConstituency: freezed == btcConstituency
          ? _value._btcConstituency
          : btcConstituency // ignore: cast_nullable_to_non_nullable
              as List<BTCConstituency>?,
      villages: freezed == villages
          ? _value._villages
          : villages // ignore: cast_nullable_to_non_nullable
              as List<Village>?,
      booths: freezed == booths
          ? _value._booths
          : booths // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Booth>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "btc_assembly_constituencies")
      final Map<String, List<Constituency>>? btcAssemblyConstituencies,
      @JsonKey(name: "assembly_constituencies")
      final List<AssemblyConstituency>? assemblyConstituencies,
      final List<District>? districts,
      @JsonKey(name: "party_district")
      final List<PartyDistrict>? partyDistricts,
      @JsonKey(name: "btc_primaries")
      final Map<String, List<Primary>>? btcPrimaries,
      @JsonKey(name: "btc_constituency")
      final List<BTCConstituency>? btcConstituency,
      @JsonKey(name: "village") final List<Village>? villages,
      @JsonKey(name: "booths") final Map<String, List<Booth>>? booths})
      : _btcAssemblyConstituencies = btcAssemblyConstituencies,
        _assemblyConstituencies = assemblyConstituencies,
        _districts = districts,
        _partyDistricts = partyDistricts,
        _btcPrimaries = btcPrimaries,
        _btcConstituency = btcConstituency,
        _villages = villages,
        _booths = booths;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final Map<String, List<Constituency>>? _btcAssemblyConstituencies;
  @override
  @JsonKey(name: "btc_assembly_constituencies")
  Map<String, List<Constituency>>? get btcAssemblyConstituencies {
    final value = _btcAssemblyConstituencies;
    if (value == null) return null;
    if (_btcAssemblyConstituencies is EqualUnmodifiableMapView)
      return _btcAssemblyConstituencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<AssemblyConstituency>? _assemblyConstituencies;
  @override
  @JsonKey(name: "assembly_constituencies")
  List<AssemblyConstituency>? get assemblyConstituencies {
    final value = _assemblyConstituencies;
    if (value == null) return null;
    if (_assemblyConstituencies is EqualUnmodifiableListView)
      return _assemblyConstituencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<District>? _districts;
  @override
  List<District>? get districts {
    final value = _districts;
    if (value == null) return null;
    if (_districts is EqualUnmodifiableListView) return _districts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PartyDistrict>? _partyDistricts;
  @override
  @JsonKey(name: "party_district")
  List<PartyDistrict>? get partyDistricts {
    final value = _partyDistricts;
    if (value == null) return null;
    if (_partyDistricts is EqualUnmodifiableListView) return _partyDistricts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, List<Primary>>? _btcPrimaries;
  @override
  @JsonKey(name: "btc_primaries")
  Map<String, List<Primary>>? get btcPrimaries {
    final value = _btcPrimaries;
    if (value == null) return null;
    if (_btcPrimaries is EqualUnmodifiableMapView) return _btcPrimaries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<BTCConstituency>? _btcConstituency;
  @override
  @JsonKey(name: "btc_constituency")
  List<BTCConstituency>? get btcConstituency {
    final value = _btcConstituency;
    if (value == null) return null;
    if (_btcConstituency is EqualUnmodifiableListView) return _btcConstituency;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Village>? _villages;
  @override
  @JsonKey(name: "village")
  List<Village>? get villages {
    final value = _villages;
    if (value == null) return null;
    if (_villages is EqualUnmodifiableListView) return _villages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, List<Booth>>? _booths;
  @override
  @JsonKey(name: "booths")
  Map<String, List<Booth>>? get booths {
    final value = _booths;
    if (value == null) return null;
    if (_booths is EqualUnmodifiableMapView) return _booths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Data(btcAssemblyConstituencies: $btcAssemblyConstituencies, assemblyConstituencies: $assemblyConstituencies, districts: $districts, partyDistricts: $partyDistricts, btcPrimaries: $btcPrimaries, btcConstituency: $btcConstituency, villages: $villages, booths: $booths)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality().equals(
                other._btcAssemblyConstituencies, _btcAssemblyConstituencies) &&
            const DeepCollectionEquality().equals(
                other._assemblyConstituencies, _assemblyConstituencies) &&
            const DeepCollectionEquality()
                .equals(other._districts, _districts) &&
            const DeepCollectionEquality()
                .equals(other._partyDistricts, _partyDistricts) &&
            const DeepCollectionEquality()
                .equals(other._btcPrimaries, _btcPrimaries) &&
            const DeepCollectionEquality()
                .equals(other._btcConstituency, _btcConstituency) &&
            const DeepCollectionEquality().equals(other._villages, _villages) &&
            const DeepCollectionEquality().equals(other._booths, _booths));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_btcAssemblyConstituencies),
      const DeepCollectionEquality().hash(_assemblyConstituencies),
      const DeepCollectionEquality().hash(_districts),
      const DeepCollectionEquality().hash(_partyDistricts),
      const DeepCollectionEquality().hash(_btcPrimaries),
      const DeepCollectionEquality().hash(_btcConstituency),
      const DeepCollectionEquality().hash(_villages),
      const DeepCollectionEquality().hash(_booths));

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
          {@JsonKey(name: "btc_assembly_constituencies")
          final Map<String, List<Constituency>>? btcAssemblyConstituencies,
          @JsonKey(name: "assembly_constituencies")
          final List<AssemblyConstituency>? assemblyConstituencies,
          final List<District>? districts,
          @JsonKey(name: "party_district")
          final List<PartyDistrict>? partyDistricts,
          @JsonKey(name: "btc_primaries")
          final Map<String, List<Primary>>? btcPrimaries,
          @JsonKey(name: "btc_constituency")
          final List<BTCConstituency>? btcConstituency,
          @JsonKey(name: "village") final List<Village>? villages,
          @JsonKey(name: "booths") final Map<String, List<Booth>>? booths}) =
      _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "btc_assembly_constituencies")
  Map<String, List<Constituency>>? get btcAssemblyConstituencies;
  @override
  @JsonKey(name: "assembly_constituencies")
  List<AssemblyConstituency>? get assemblyConstituencies;
  @override
  List<District>? get districts;
  @override
  @JsonKey(name: "party_district")
  List<PartyDistrict>? get partyDistricts;
  @override
  @JsonKey(name: "btc_primaries")
  Map<String, List<Primary>>? get btcPrimaries;
  @override
  @JsonKey(name: "btc_constituency")
  List<BTCConstituency>? get btcConstituency;
  @override
  @JsonKey(name: "village")
  List<Village>? get villages;
  @override
  @JsonKey(name: "booths")
  Map<String, List<Booth>>? get booths;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BTCConstituency _$BTCConstituencyFromJson(Map<String, dynamic> json) {
  return _BTCConstituency.fromJson(json);
}

/// @nodoc
mixin _$BTCConstituency {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "display_order")
  int? get displayOrder => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  int? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this BTCConstituency to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BTCConstituency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BTCConstituencyCopyWith<BTCConstituency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BTCConstituencyCopyWith<$Res> {
  factory $BTCConstituencyCopyWith(
          BTCConstituency value, $Res Function(BTCConstituency) then) =
      _$BTCConstituencyCopyWithImpl<$Res, BTCConstituency>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "display_order") int? displayOrder,
      String name,
      int status,
      @JsonKey(name: "created_by") int? createdBy,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class _$BTCConstituencyCopyWithImpl<$Res, $Val extends BTCConstituency>
    implements $BTCConstituencyCopyWith<$Res> {
  _$BTCConstituencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BTCConstituency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayOrder = freezed,
    Object? name = null,
    Object? status = null,
    Object? createdBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      displayOrder: freezed == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BTCConstituencyImplCopyWith<$Res>
    implements $BTCConstituencyCopyWith<$Res> {
  factory _$$BTCConstituencyImplCopyWith(_$BTCConstituencyImpl value,
          $Res Function(_$BTCConstituencyImpl) then) =
      __$$BTCConstituencyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "display_order") int? displayOrder,
      String name,
      int status,
      @JsonKey(name: "created_by") int? createdBy,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class __$$BTCConstituencyImplCopyWithImpl<$Res>
    extends _$BTCConstituencyCopyWithImpl<$Res, _$BTCConstituencyImpl>
    implements _$$BTCConstituencyImplCopyWith<$Res> {
  __$$BTCConstituencyImplCopyWithImpl(
      _$BTCConstituencyImpl _value, $Res Function(_$BTCConstituencyImpl) _then)
      : super(_value, _then);

  /// Create a copy of BTCConstituency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayOrder = freezed,
    Object? name = null,
    Object? status = null,
    Object? createdBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$BTCConstituencyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      displayOrder: freezed == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BTCConstituencyImpl implements _BTCConstituency {
  const _$BTCConstituencyImpl(
      {required this.id,
      @JsonKey(name: "display_order") this.displayOrder,
      required this.name,
      required this.status,
      @JsonKey(name: "created_by") this.createdBy,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$BTCConstituencyImpl.fromJson(Map<String, dynamic> json) =>
      _$$BTCConstituencyImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "display_order")
  final int? displayOrder;
  @override
  final String name;
  @override
  final int status;
  @override
  @JsonKey(name: "created_by")
  final int? createdBy;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString() {
    return 'BTCConstituency(id: $id, displayOrder: $displayOrder, name: $name, status: $status, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BTCConstituencyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.displayOrder, displayOrder) ||
                other.displayOrder == displayOrder) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, displayOrder, name, status,
      createdBy, createdAt, updatedAt);

  /// Create a copy of BTCConstituency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BTCConstituencyImplCopyWith<_$BTCConstituencyImpl> get copyWith =>
      __$$BTCConstituencyImplCopyWithImpl<_$BTCConstituencyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BTCConstituencyImplToJson(
      this,
    );
  }
}

abstract class _BTCConstituency implements BTCConstituency {
  const factory _BTCConstituency(
          {required final int id,
          @JsonKey(name: "display_order") final int? displayOrder,
          required final String name,
          required final int status,
          @JsonKey(name: "created_by") final int? createdBy,
          @JsonKey(name: "created_at") final String? createdAt,
          @JsonKey(name: "updated_at") final String? updatedAt}) =
      _$BTCConstituencyImpl;

  factory _BTCConstituency.fromJson(Map<String, dynamic> json) =
      _$BTCConstituencyImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "display_order")
  int? get displayOrder;
  @override
  String get name;
  @override
  int get status;
  @override
  @JsonKey(name: "created_by")
  int? get createdBy;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;

  /// Create a copy of BTCConstituency
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BTCConstituencyImplCopyWith<_$BTCConstituencyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Village _$VillageFromJson(Map<String, dynamic> json) {
  return _Village.fromJson(json);
}

/// @nodoc
mixin _$Village {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get vcdc => throw _privateConstructorUsedError;

  /// Serializes this Village to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Village
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VillageCopyWith<Village> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VillageCopyWith<$Res> {
  factory $VillageCopyWith(Village value, $Res Function(Village) then) =
      _$VillageCopyWithImpl<$Res, Village>;
  @useResult
  $Res call({int id, String name, String vcdc});
}

/// @nodoc
class _$VillageCopyWithImpl<$Res, $Val extends Village>
    implements $VillageCopyWith<$Res> {
  _$VillageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Village
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? vcdc = null,
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
      vcdc: null == vcdc
          ? _value.vcdc
          : vcdc // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VillageImplCopyWith<$Res> implements $VillageCopyWith<$Res> {
  factory _$$VillageImplCopyWith(
          _$VillageImpl value, $Res Function(_$VillageImpl) then) =
      __$$VillageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String vcdc});
}

/// @nodoc
class __$$VillageImplCopyWithImpl<$Res>
    extends _$VillageCopyWithImpl<$Res, _$VillageImpl>
    implements _$$VillageImplCopyWith<$Res> {
  __$$VillageImplCopyWithImpl(
      _$VillageImpl _value, $Res Function(_$VillageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Village
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? vcdc = null,
  }) {
    return _then(_$VillageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      vcdc: null == vcdc
          ? _value.vcdc
          : vcdc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VillageImpl implements _Village {
  const _$VillageImpl(
      {required this.id, required this.name, required this.vcdc});

  factory _$VillageImpl.fromJson(Map<String, dynamic> json) =>
      _$$VillageImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String vcdc;

  @override
  String toString() {
    return 'Village(id: $id, name: $name, vcdc: $vcdc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VillageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.vcdc, vcdc) || other.vcdc == vcdc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, vcdc);

  /// Create a copy of Village
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VillageImplCopyWith<_$VillageImpl> get copyWith =>
      __$$VillageImplCopyWithImpl<_$VillageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VillageImplToJson(
      this,
    );
  }
}

abstract class _Village implements Village {
  const factory _Village(
      {required final int id,
      required final String name,
      required final String vcdc}) = _$VillageImpl;

  factory _Village.fromJson(Map<String, dynamic> json) = _$VillageImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get vcdc;

  /// Create a copy of Village
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VillageImplCopyWith<_$VillageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Booth _$BoothFromJson(Map<String, dynamic> json) {
  return _Booth.fromJson(json);
}

/// @nodoc
mixin _$Booth {
  @JsonKey(name: "btc_primary_id")
  int get btcPrimaryId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Booth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Booth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BoothCopyWith<Booth> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoothCopyWith<$Res> {
  factory $BoothCopyWith(Booth value, $Res Function(Booth) then) =
      _$BoothCopyWithImpl<$Res, Booth>;
  @useResult
  $Res call(
      {@JsonKey(name: "btc_primary_id") int btcPrimaryId, int id, String name});
}

/// @nodoc
class _$BoothCopyWithImpl<$Res, $Val extends Booth>
    implements $BoothCopyWith<$Res> {
  _$BoothCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Booth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? btcPrimaryId = null,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      btcPrimaryId: null == btcPrimaryId
          ? _value.btcPrimaryId
          : btcPrimaryId // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$BoothImplCopyWith<$Res> implements $BoothCopyWith<$Res> {
  factory _$$BoothImplCopyWith(
          _$BoothImpl value, $Res Function(_$BoothImpl) then) =
      __$$BoothImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "btc_primary_id") int btcPrimaryId, int id, String name});
}

/// @nodoc
class __$$BoothImplCopyWithImpl<$Res>
    extends _$BoothCopyWithImpl<$Res, _$BoothImpl>
    implements _$$BoothImplCopyWith<$Res> {
  __$$BoothImplCopyWithImpl(
      _$BoothImpl _value, $Res Function(_$BoothImpl) _then)
      : super(_value, _then);

  /// Create a copy of Booth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? btcPrimaryId = null,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$BoothImpl(
      btcPrimaryId: null == btcPrimaryId
          ? _value.btcPrimaryId
          : btcPrimaryId // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$BoothImpl implements _Booth {
  const _$BoothImpl(
      {@JsonKey(name: "btc_primary_id") required this.btcPrimaryId,
      required this.id,
      required this.name});

  factory _$BoothImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoothImplFromJson(json);

  @override
  @JsonKey(name: "btc_primary_id")
  final int btcPrimaryId;
  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Booth(btcPrimaryId: $btcPrimaryId, id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoothImpl &&
            (identical(other.btcPrimaryId, btcPrimaryId) ||
                other.btcPrimaryId == btcPrimaryId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, btcPrimaryId, id, name);

  /// Create a copy of Booth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BoothImplCopyWith<_$BoothImpl> get copyWith =>
      __$$BoothImplCopyWithImpl<_$BoothImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoothImplToJson(
      this,
    );
  }
}

abstract class _Booth implements Booth {
  const factory _Booth(
      {@JsonKey(name: "btc_primary_id") required final int btcPrimaryId,
      required final int id,
      required final String name}) = _$BoothImpl;

  factory _Booth.fromJson(Map<String, dynamic> json) = _$BoothImpl.fromJson;

  @override
  @JsonKey(name: "btc_primary_id")
  int get btcPrimaryId;
  @override
  int get id;
  @override
  String get name;

  /// Create a copy of Booth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BoothImplCopyWith<_$BoothImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Constituency _$ConstituencyFromJson(Map<String, dynamic> json) {
  return _Constituency.fromJson(json);
}

/// @nodoc
mixin _$Constituency {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "constituency_type")
  String get constituencyType => throw _privateConstructorUsedError;
  @JsonKey(name: "assembly_constituency_id")
  int get assemblyConstituencyId => throw _privateConstructorUsedError;
  @JsonKey(name: "district_id")
  int get districtId => throw _privateConstructorUsedError;
  @JsonKey(name: "party_district_id")
  int get partyDistrictId => throw _privateConstructorUsedError;
  @JsonKey(name: "loksabha_constituency_id")
  int? get loksabhaConstituencyId => throw _privateConstructorUsedError;

  /// Serializes this Constituency to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Constituency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConstituencyCopyWith<Constituency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConstituencyCopyWith<$Res> {
  factory $ConstituencyCopyWith(
          Constituency value, $Res Function(Constituency) then) =
      _$ConstituencyCopyWithImpl<$Res, Constituency>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "constituency_type") String constituencyType,
      @JsonKey(name: "assembly_constituency_id") int assemblyConstituencyId,
      @JsonKey(name: "district_id") int districtId,
      @JsonKey(name: "party_district_id") int partyDistrictId,
      @JsonKey(name: "loksabha_constituency_id") int? loksabhaConstituencyId});
}

/// @nodoc
class _$ConstituencyCopyWithImpl<$Res, $Val extends Constituency>
    implements $ConstituencyCopyWith<$Res> {
  _$ConstituencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Constituency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? constituencyType = null,
    Object? assemblyConstituencyId = null,
    Object? districtId = null,
    Object? partyDistrictId = null,
    Object? loksabhaConstituencyId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      constituencyType: null == constituencyType
          ? _value.constituencyType
          : constituencyType // ignore: cast_nullable_to_non_nullable
              as String,
      assemblyConstituencyId: null == assemblyConstituencyId
          ? _value.assemblyConstituencyId
          : assemblyConstituencyId // ignore: cast_nullable_to_non_nullable
              as int,
      districtId: null == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int,
      partyDistrictId: null == partyDistrictId
          ? _value.partyDistrictId
          : partyDistrictId // ignore: cast_nullable_to_non_nullable
              as int,
      loksabhaConstituencyId: freezed == loksabhaConstituencyId
          ? _value.loksabhaConstituencyId
          : loksabhaConstituencyId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConstituencyImplCopyWith<$Res>
    implements $ConstituencyCopyWith<$Res> {
  factory _$$ConstituencyImplCopyWith(
          _$ConstituencyImpl value, $Res Function(_$ConstituencyImpl) then) =
      __$$ConstituencyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "constituency_type") String constituencyType,
      @JsonKey(name: "assembly_constituency_id") int assemblyConstituencyId,
      @JsonKey(name: "district_id") int districtId,
      @JsonKey(name: "party_district_id") int partyDistrictId,
      @JsonKey(name: "loksabha_constituency_id") int? loksabhaConstituencyId});
}

/// @nodoc
class __$$ConstituencyImplCopyWithImpl<$Res>
    extends _$ConstituencyCopyWithImpl<$Res, _$ConstituencyImpl>
    implements _$$ConstituencyImplCopyWith<$Res> {
  __$$ConstituencyImplCopyWithImpl(
      _$ConstituencyImpl _value, $Res Function(_$ConstituencyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Constituency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? constituencyType = null,
    Object? assemblyConstituencyId = null,
    Object? districtId = null,
    Object? partyDistrictId = null,
    Object? loksabhaConstituencyId = freezed,
  }) {
    return _then(_$ConstituencyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      constituencyType: null == constituencyType
          ? _value.constituencyType
          : constituencyType // ignore: cast_nullable_to_non_nullable
              as String,
      assemblyConstituencyId: null == assemblyConstituencyId
          ? _value.assemblyConstituencyId
          : assemblyConstituencyId // ignore: cast_nullable_to_non_nullable
              as int,
      districtId: null == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int,
      partyDistrictId: null == partyDistrictId
          ? _value.partyDistrictId
          : partyDistrictId // ignore: cast_nullable_to_non_nullable
              as int,
      loksabhaConstituencyId: freezed == loksabhaConstituencyId
          ? _value.loksabhaConstituencyId
          : loksabhaConstituencyId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConstituencyImpl implements _Constituency {
  const _$ConstituencyImpl(
      {required this.id,
      @JsonKey(name: "constituency_type") required this.constituencyType,
      @JsonKey(name: "assembly_constituency_id")
      required this.assemblyConstituencyId,
      @JsonKey(name: "district_id") required this.districtId,
      @JsonKey(name: "party_district_id") required this.partyDistrictId,
      @JsonKey(name: "loksabha_constituency_id") this.loksabhaConstituencyId});

  factory _$ConstituencyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConstituencyImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "constituency_type")
  final String constituencyType;
  @override
  @JsonKey(name: "assembly_constituency_id")
  final int assemblyConstituencyId;
  @override
  @JsonKey(name: "district_id")
  final int districtId;
  @override
  @JsonKey(name: "party_district_id")
  final int partyDistrictId;
  @override
  @JsonKey(name: "loksabha_constituency_id")
  final int? loksabhaConstituencyId;

  @override
  String toString() {
    return 'Constituency(id: $id, constituencyType: $constituencyType, assemblyConstituencyId: $assemblyConstituencyId, districtId: $districtId, partyDistrictId: $partyDistrictId, loksabhaConstituencyId: $loksabhaConstituencyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConstituencyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.constituencyType, constituencyType) ||
                other.constituencyType == constituencyType) &&
            (identical(other.assemblyConstituencyId, assemblyConstituencyId) ||
                other.assemblyConstituencyId == assemblyConstituencyId) &&
            (identical(other.districtId, districtId) ||
                other.districtId == districtId) &&
            (identical(other.partyDistrictId, partyDistrictId) ||
                other.partyDistrictId == partyDistrictId) &&
            (identical(other.loksabhaConstituencyId, loksabhaConstituencyId) ||
                other.loksabhaConstituencyId == loksabhaConstituencyId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      constituencyType,
      assemblyConstituencyId,
      districtId,
      partyDistrictId,
      loksabhaConstituencyId);

  /// Create a copy of Constituency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConstituencyImplCopyWith<_$ConstituencyImpl> get copyWith =>
      __$$ConstituencyImplCopyWithImpl<_$ConstituencyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConstituencyImplToJson(
      this,
    );
  }
}

abstract class _Constituency implements Constituency {
  const factory _Constituency(
      {required final int id,
      @JsonKey(name: "constituency_type")
      required final String constituencyType,
      @JsonKey(name: "assembly_constituency_id")
      required final int assemblyConstituencyId,
      @JsonKey(name: "district_id") required final int districtId,
      @JsonKey(name: "party_district_id") required final int partyDistrictId,
      @JsonKey(name: "loksabha_constituency_id")
      final int? loksabhaConstituencyId}) = _$ConstituencyImpl;

  factory _Constituency.fromJson(Map<String, dynamic> json) =
      _$ConstituencyImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "constituency_type")
  String get constituencyType;
  @override
  @JsonKey(name: "assembly_constituency_id")
  int get assemblyConstituencyId;
  @override
  @JsonKey(name: "district_id")
  int get districtId;
  @override
  @JsonKey(name: "party_district_id")
  int get partyDistrictId;
  @override
  @JsonKey(name: "loksabha_constituency_id")
  int? get loksabhaConstituencyId;

  /// Create a copy of Constituency
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConstituencyImplCopyWith<_$ConstituencyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AssemblyConstituency _$AssemblyConstituencyFromJson(Map<String, dynamic> json) {
  return _AssemblyConstituency.fromJson(json);
}

/// @nodoc
mixin _$AssemblyConstituency {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this AssemblyConstituency to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssemblyConstituency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssemblyConstituencyCopyWith<AssemblyConstituency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssemblyConstituencyCopyWith<$Res> {
  factory $AssemblyConstituencyCopyWith(AssemblyConstituency value,
          $Res Function(AssemblyConstituency) then) =
      _$AssemblyConstituencyCopyWithImpl<$Res, AssemblyConstituency>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$AssemblyConstituencyCopyWithImpl<$Res,
        $Val extends AssemblyConstituency>
    implements $AssemblyConstituencyCopyWith<$Res> {
  _$AssemblyConstituencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssemblyConstituency
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
abstract class _$$AssemblyConstituencyImplCopyWith<$Res>
    implements $AssemblyConstituencyCopyWith<$Res> {
  factory _$$AssemblyConstituencyImplCopyWith(_$AssemblyConstituencyImpl value,
          $Res Function(_$AssemblyConstituencyImpl) then) =
      __$$AssemblyConstituencyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$AssemblyConstituencyImplCopyWithImpl<$Res>
    extends _$AssemblyConstituencyCopyWithImpl<$Res, _$AssemblyConstituencyImpl>
    implements _$$AssemblyConstituencyImplCopyWith<$Res> {
  __$$AssemblyConstituencyImplCopyWithImpl(_$AssemblyConstituencyImpl _value,
      $Res Function(_$AssemblyConstituencyImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssemblyConstituency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$AssemblyConstituencyImpl(
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
class _$AssemblyConstituencyImpl implements _AssemblyConstituency {
  const _$AssemblyConstituencyImpl({required this.id, required this.name});

  factory _$AssemblyConstituencyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssemblyConstituencyImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'AssemblyConstituency(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssemblyConstituencyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of AssemblyConstituency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssemblyConstituencyImplCopyWith<_$AssemblyConstituencyImpl>
      get copyWith =>
          __$$AssemblyConstituencyImplCopyWithImpl<_$AssemblyConstituencyImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssemblyConstituencyImplToJson(
      this,
    );
  }
}

abstract class _AssemblyConstituency implements AssemblyConstituency {
  const factory _AssemblyConstituency(
      {required final int id,
      required final String name}) = _$AssemblyConstituencyImpl;

  factory _AssemblyConstituency.fromJson(Map<String, dynamic> json) =
      _$AssemblyConstituencyImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of AssemblyConstituency
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssemblyConstituencyImplCopyWith<_$AssemblyConstituencyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

District _$DistrictFromJson(Map<String, dynamic> json) {
  return _District.fromJson(json);
}

/// @nodoc
mixin _$District {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this District to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of District
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DistrictCopyWith<District> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrictCopyWith<$Res> {
  factory $DistrictCopyWith(District value, $Res Function(District) then) =
      _$DistrictCopyWithImpl<$Res, District>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$DistrictCopyWithImpl<$Res, $Val extends District>
    implements $DistrictCopyWith<$Res> {
  _$DistrictCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of District
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
abstract class _$$DistrictImplCopyWith<$Res>
    implements $DistrictCopyWith<$Res> {
  factory _$$DistrictImplCopyWith(
          _$DistrictImpl value, $Res Function(_$DistrictImpl) then) =
      __$$DistrictImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$DistrictImplCopyWithImpl<$Res>
    extends _$DistrictCopyWithImpl<$Res, _$DistrictImpl>
    implements _$$DistrictImplCopyWith<$Res> {
  __$$DistrictImplCopyWithImpl(
      _$DistrictImpl _value, $Res Function(_$DistrictImpl) _then)
      : super(_value, _then);

  /// Create a copy of District
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$DistrictImpl(
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
class _$DistrictImpl implements _District {
  const _$DistrictImpl({required this.id, required this.name});

  factory _$DistrictImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistrictImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'District(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistrictImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of District
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DistrictImplCopyWith<_$DistrictImpl> get copyWith =>
      __$$DistrictImplCopyWithImpl<_$DistrictImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistrictImplToJson(
      this,
    );
  }
}

abstract class _District implements District {
  const factory _District({required final int id, required final String name}) =
      _$DistrictImpl;

  factory _District.fromJson(Map<String, dynamic> json) =
      _$DistrictImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of District
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DistrictImplCopyWith<_$DistrictImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PartyDistrict _$PartyDistrictFromJson(Map<String, dynamic> json) {
  return _PartyDistrict.fromJson(json);
}

/// @nodoc
mixin _$PartyDistrict {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this PartyDistrict to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PartyDistrict
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PartyDistrictCopyWith<PartyDistrict> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartyDistrictCopyWith<$Res> {
  factory $PartyDistrictCopyWith(
          PartyDistrict value, $Res Function(PartyDistrict) then) =
      _$PartyDistrictCopyWithImpl<$Res, PartyDistrict>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$PartyDistrictCopyWithImpl<$Res, $Val extends PartyDistrict>
    implements $PartyDistrictCopyWith<$Res> {
  _$PartyDistrictCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartyDistrict
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
abstract class _$$PartyDistrictImplCopyWith<$Res>
    implements $PartyDistrictCopyWith<$Res> {
  factory _$$PartyDistrictImplCopyWith(
          _$PartyDistrictImpl value, $Res Function(_$PartyDistrictImpl) then) =
      __$$PartyDistrictImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$PartyDistrictImplCopyWithImpl<$Res>
    extends _$PartyDistrictCopyWithImpl<$Res, _$PartyDistrictImpl>
    implements _$$PartyDistrictImplCopyWith<$Res> {
  __$$PartyDistrictImplCopyWithImpl(
      _$PartyDistrictImpl _value, $Res Function(_$PartyDistrictImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartyDistrict
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$PartyDistrictImpl(
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
class _$PartyDistrictImpl implements _PartyDistrict {
  const _$PartyDistrictImpl({required this.id, required this.name});

  factory _$PartyDistrictImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartyDistrictImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'PartyDistrict(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartyDistrictImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of PartyDistrict
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartyDistrictImplCopyWith<_$PartyDistrictImpl> get copyWith =>
      __$$PartyDistrictImplCopyWithImpl<_$PartyDistrictImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartyDistrictImplToJson(
      this,
    );
  }
}

abstract class _PartyDistrict implements PartyDistrict {
  const factory _PartyDistrict(
      {required final int id,
      required final String name}) = _$PartyDistrictImpl;

  factory _PartyDistrict.fromJson(Map<String, dynamic> json) =
      _$PartyDistrictImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of PartyDistrict
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartyDistrictImplCopyWith<_$PartyDistrictImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Primary _$PrimaryFromJson(Map<String, dynamic> json) {
  return _Primary.fromJson(json);
}

/// @nodoc
mixin _$Primary {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "btc_assembly_constituency_id")
  int get btcAssemblyConstituencyId => throw _privateConstructorUsedError;

  /// Serializes this Primary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Primary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrimaryCopyWith<Primary> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrimaryCopyWith<$Res> {
  factory $PrimaryCopyWith(Primary value, $Res Function(Primary) then) =
      _$PrimaryCopyWithImpl<$Res, Primary>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: "btc_assembly_constituency_id")
      int btcAssemblyConstituencyId});
}

/// @nodoc
class _$PrimaryCopyWithImpl<$Res, $Val extends Primary>
    implements $PrimaryCopyWith<$Res> {
  _$PrimaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Primary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? btcAssemblyConstituencyId = null,
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
      btcAssemblyConstituencyId: null == btcAssemblyConstituencyId
          ? _value.btcAssemblyConstituencyId
          : btcAssemblyConstituencyId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrimaryImplCopyWith<$Res> implements $PrimaryCopyWith<$Res> {
  factory _$$PrimaryImplCopyWith(
          _$PrimaryImpl value, $Res Function(_$PrimaryImpl) then) =
      __$$PrimaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: "btc_assembly_constituency_id")
      int btcAssemblyConstituencyId});
}

/// @nodoc
class __$$PrimaryImplCopyWithImpl<$Res>
    extends _$PrimaryCopyWithImpl<$Res, _$PrimaryImpl>
    implements _$$PrimaryImplCopyWith<$Res> {
  __$$PrimaryImplCopyWithImpl(
      _$PrimaryImpl _value, $Res Function(_$PrimaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Primary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? btcAssemblyConstituencyId = null,
  }) {
    return _then(_$PrimaryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      btcAssemblyConstituencyId: null == btcAssemblyConstituencyId
          ? _value.btcAssemblyConstituencyId
          : btcAssemblyConstituencyId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrimaryImpl implements _Primary {
  const _$PrimaryImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: "btc_assembly_constituency_id")
      required this.btcAssemblyConstituencyId});

  factory _$PrimaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrimaryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: "btc_assembly_constituency_id")
  final int btcAssemblyConstituencyId;

  @override
  String toString() {
    return 'Primary(id: $id, name: $name, btcAssemblyConstituencyId: $btcAssemblyConstituencyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrimaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.btcAssemblyConstituencyId,
                    btcAssemblyConstituencyId) ||
                other.btcAssemblyConstituencyId == btcAssemblyConstituencyId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, btcAssemblyConstituencyId);

  /// Create a copy of Primary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrimaryImplCopyWith<_$PrimaryImpl> get copyWith =>
      __$$PrimaryImplCopyWithImpl<_$PrimaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrimaryImplToJson(
      this,
    );
  }
}

abstract class _Primary implements Primary {
  const factory _Primary(
      {required final int id,
      required final String name,
      @JsonKey(name: "btc_assembly_constituency_id")
      required final int btcAssemblyConstituencyId}) = _$PrimaryImpl;

  factory _Primary.fromJson(Map<String, dynamic> json) = _$PrimaryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: "btc_assembly_constituency_id")
  int get btcAssemblyConstituencyId;

  /// Create a copy of Primary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrimaryImplCopyWith<_$PrimaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
