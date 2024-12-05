// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dropdown_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DropDownDataModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int status, String message, DropDownData data, int code)
        success,
    required TResult Function(
            int status, String message, DropDownError error, int code)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int status, String message, DropDownData data, int code)?
        success,
    TResult? Function(
            int status, String message, DropDownError error, int code)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int status, String message, DropDownData data, int code)?
        success,
    TResult Function(int status, String message, DropDownError error, int code)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessResponse value) success,
    required TResult Function(ErrorResponse value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessResponse value)? success,
    TResult? Function(ErrorResponse value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessResponse value)? success,
    TResult Function(ErrorResponse value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of DropDownDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DropDownDataModelCopyWith<DropDownDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropDownDataModelCopyWith<$Res> {
  factory $DropDownDataModelCopyWith(
          DropDownDataModel value, $Res Function(DropDownDataModel) then) =
      _$DropDownDataModelCopyWithImpl<$Res, DropDownDataModel>;
  @useResult
  $Res call({int status, String message, int code});
}

/// @nodoc
class _$DropDownDataModelCopyWithImpl<$Res, $Val extends DropDownDataModel>
    implements $DropDownDataModelCopyWith<$Res> {
  _$DropDownDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DropDownDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
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
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuccessResponseImplCopyWith<$Res>
    implements $DropDownDataModelCopyWith<$Res> {
  factory _$$SuccessResponseImplCopyWith(_$SuccessResponseImpl value,
          $Res Function(_$SuccessResponseImpl) then) =
      __$$SuccessResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, DropDownData data, int code});

  $DropDownDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SuccessResponseImplCopyWithImpl<$Res>
    extends _$DropDownDataModelCopyWithImpl<$Res, _$SuccessResponseImpl>
    implements _$$SuccessResponseImplCopyWith<$Res> {
  __$$SuccessResponseImplCopyWithImpl(
      _$SuccessResponseImpl _value, $Res Function(_$SuccessResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DropDownDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
    Object? code = null,
  }) {
    return _then(_$SuccessResponseImpl(
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
              as DropDownData,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of DropDownDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DropDownDataCopyWith<$Res> get data {
    return $DropDownDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$SuccessResponseImpl implements SuccessResponse {
  const _$SuccessResponseImpl(
      {required this.status,
      required this.message,
      required this.data,
      required this.code});

  @override
  final int status;
  @override
  final String message;
  @override
  final DropDownData data;
  @override
  final int code;

  @override
  String toString() {
    return 'DropDownDataModel.success(status: $status, message: $message, data: $data, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message, data, code);

  /// Create a copy of DropDownDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessResponseImplCopyWith<_$SuccessResponseImpl> get copyWith =>
      __$$SuccessResponseImplCopyWithImpl<_$SuccessResponseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int status, String message, DropDownData data, int code)
        success,
    required TResult Function(
            int status, String message, DropDownError error, int code)
        error,
  }) {
    return success(status, message, data, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int status, String message, DropDownData data, int code)?
        success,
    TResult? Function(
            int status, String message, DropDownError error, int code)?
        error,
  }) {
    return success?.call(status, message, data, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int status, String message, DropDownData data, int code)?
        success,
    TResult Function(int status, String message, DropDownError error, int code)?
        error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(status, message, data, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessResponse value) success,
    required TResult Function(ErrorResponse value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessResponse value)? success,
    TResult? Function(ErrorResponse value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessResponse value)? success,
    TResult Function(ErrorResponse value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessResponse implements DropDownDataModel {
  const factory SuccessResponse(
      {required final int status,
      required final String message,
      required final DropDownData data,
      required final int code}) = _$SuccessResponseImpl;

  @override
  int get status;
  @override
  String get message;
  DropDownData get data;
  @override
  int get code;

  /// Create a copy of DropDownDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessResponseImplCopyWith<_$SuccessResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorResponseImplCopyWith<$Res>
    implements $DropDownDataModelCopyWith<$Res> {
  factory _$$ErrorResponseImplCopyWith(
          _$ErrorResponseImpl value, $Res Function(_$ErrorResponseImpl) then) =
      __$$ErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, DropDownError error, int code});

  $DropDownErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$ErrorResponseImplCopyWithImpl<$Res>
    extends _$DropDownDataModelCopyWithImpl<$Res, _$ErrorResponseImpl>
    implements _$$ErrorResponseImplCopyWith<$Res> {
  __$$ErrorResponseImplCopyWithImpl(
      _$ErrorResponseImpl _value, $Res Function(_$ErrorResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DropDownDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? error = null,
    Object? code = null,
  }) {
    return _then(_$ErrorResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DropDownError,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of DropDownDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DropDownErrorCopyWith<$Res> get error {
    return $DropDownErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$ErrorResponseImpl implements ErrorResponse {
  const _$ErrorResponseImpl(
      {required this.status,
      required this.message,
      required this.error,
      required this.code});

  @override
  final int status;
  @override
  final String message;
  @override
  final DropDownError error;
  @override
  final int code;

  @override
  String toString() {
    return 'DropDownDataModel.error(status: $status, message: $message, error: $error, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message, error, code);

  /// Create a copy of DropDownDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorResponseImplCopyWith<_$ErrorResponseImpl> get copyWith =>
      __$$ErrorResponseImplCopyWithImpl<_$ErrorResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int status, String message, DropDownData data, int code)
        success,
    required TResult Function(
            int status, String message, DropDownError error, int code)
        error,
  }) {
    return error(status, message, this.error, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int status, String message, DropDownData data, int code)?
        success,
    TResult? Function(
            int status, String message, DropDownError error, int code)?
        error,
  }) {
    return error?.call(status, message, this.error, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int status, String message, DropDownData data, int code)?
        success,
    TResult Function(int status, String message, DropDownError error, int code)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(status, message, this.error, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessResponse value) success,
    required TResult Function(ErrorResponse value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessResponse value)? success,
    TResult? Function(ErrorResponse value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessResponse value)? success,
    TResult Function(ErrorResponse value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorResponse implements DropDownDataModel {
  const factory ErrorResponse(
      {required final int status,
      required final String message,
      required final DropDownError error,
      required final int code}) = _$ErrorResponseImpl;

  @override
  int get status;
  @override
  String get message;
  DropDownError get error;
  @override
  int get code;

  /// Create a copy of DropDownDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorResponseImplCopyWith<_$ErrorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DropDownData _$DropDownDataFromJson(Map<String, dynamic> json) {
  return _DropDownData.fromJson(json);
}

/// @nodoc
mixin _$DropDownData {
  List<String> get religions => throw _privateConstructorUsedError;
  Map<String, String> get categories => throw _privateConstructorUsedError;
  List<String>? get castes => throw _privateConstructorUsedError;
  List<String> get professions => throw _privateConstructorUsedError;
  @JsonKey(name: 'education_levels')
  List<String> get educationLevels => throw _privateConstructorUsedError;
  @JsonKey(name: 'relationship')
  Map<String, String> get relationships => throw _privateConstructorUsedError;
  Map<String, String> get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'mother_tounge')
  List<String> get motherTongue => throw _privateConstructorUsedError;

  /// Serializes this DropDownData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DropDownData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DropDownDataCopyWith<DropDownData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropDownDataCopyWith<$Res> {
  factory $DropDownDataCopyWith(
          DropDownData value, $Res Function(DropDownData) then) =
      _$DropDownDataCopyWithImpl<$Res, DropDownData>;
  @useResult
  $Res call(
      {List<String> religions,
      Map<String, String> categories,
      List<String>? castes,
      List<String> professions,
      @JsonKey(name: 'education_levels') List<String> educationLevels,
      @JsonKey(name: 'relationship') Map<String, String> relationships,
      Map<String, String> country,
      @JsonKey(name: 'mother_tounge') List<String> motherTongue});
}

/// @nodoc
class _$DropDownDataCopyWithImpl<$Res, $Val extends DropDownData>
    implements $DropDownDataCopyWith<$Res> {
  _$DropDownDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DropDownData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? religions = null,
    Object? categories = null,
    Object? castes = freezed,
    Object? professions = null,
    Object? educationLevels = null,
    Object? relationships = null,
    Object? country = null,
    Object? motherTongue = null,
  }) {
    return _then(_value.copyWith(
      religions: null == religions
          ? _value.religions
          : religions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      castes: freezed == castes
          ? _value.castes
          : castes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      professions: null == professions
          ? _value.professions
          : professions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      educationLevels: null == educationLevels
          ? _value.educationLevels
          : educationLevels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relationships: null == relationships
          ? _value.relationships
          : relationships // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      motherTongue: null == motherTongue
          ? _value.motherTongue
          : motherTongue // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DropDownDataImplCopyWith<$Res>
    implements $DropDownDataCopyWith<$Res> {
  factory _$$DropDownDataImplCopyWith(
          _$DropDownDataImpl value, $Res Function(_$DropDownDataImpl) then) =
      __$$DropDownDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> religions,
      Map<String, String> categories,
      List<String>? castes,
      List<String> professions,
      @JsonKey(name: 'education_levels') List<String> educationLevels,
      @JsonKey(name: 'relationship') Map<String, String> relationships,
      Map<String, String> country,
      @JsonKey(name: 'mother_tounge') List<String> motherTongue});
}

/// @nodoc
class __$$DropDownDataImplCopyWithImpl<$Res>
    extends _$DropDownDataCopyWithImpl<$Res, _$DropDownDataImpl>
    implements _$$DropDownDataImplCopyWith<$Res> {
  __$$DropDownDataImplCopyWithImpl(
      _$DropDownDataImpl _value, $Res Function(_$DropDownDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DropDownData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? religions = null,
    Object? categories = null,
    Object? castes = freezed,
    Object? professions = null,
    Object? educationLevels = null,
    Object? relationships = null,
    Object? country = null,
    Object? motherTongue = null,
  }) {
    return _then(_$DropDownDataImpl(
      religions: null == religions
          ? _value._religions
          : religions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      castes: freezed == castes
          ? _value._castes
          : castes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      professions: null == professions
          ? _value._professions
          : professions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      educationLevels: null == educationLevels
          ? _value._educationLevels
          : educationLevels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relationships: null == relationships
          ? _value._relationships
          : relationships // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      country: null == country
          ? _value._country
          : country // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      motherTongue: null == motherTongue
          ? _value._motherTongue
          : motherTongue // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DropDownDataImpl implements _DropDownData {
  const _$DropDownDataImpl(
      {required final List<String> religions,
      required final Map<String, String> categories,
      final List<String>? castes,
      required final List<String> professions,
      @JsonKey(name: 'education_levels')
      required final List<String> educationLevels,
      @JsonKey(name: 'relationship')
      required final Map<String, String> relationships,
      required final Map<String, String> country,
      @JsonKey(name: 'mother_tounge') required final List<String> motherTongue})
      : _religions = religions,
        _categories = categories,
        _castes = castes,
        _professions = professions,
        _educationLevels = educationLevels,
        _relationships = relationships,
        _country = country,
        _motherTongue = motherTongue;

  factory _$DropDownDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DropDownDataImplFromJson(json);

  final List<String> _religions;
  @override
  List<String> get religions {
    if (_religions is EqualUnmodifiableListView) return _religions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_religions);
  }

  final Map<String, String> _categories;
  @override
  Map<String, String> get categories {
    if (_categories is EqualUnmodifiableMapView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_categories);
  }

  final List<String>? _castes;
  @override
  List<String>? get castes {
    final value = _castes;
    if (value == null) return null;
    if (_castes is EqualUnmodifiableListView) return _castes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String> _professions;
  @override
  List<String> get professions {
    if (_professions is EqualUnmodifiableListView) return _professions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_professions);
  }

  final List<String> _educationLevels;
  @override
  @JsonKey(name: 'education_levels')
  List<String> get educationLevels {
    if (_educationLevels is EqualUnmodifiableListView) return _educationLevels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_educationLevels);
  }

  final Map<String, String> _relationships;
  @override
  @JsonKey(name: 'relationship')
  Map<String, String> get relationships {
    if (_relationships is EqualUnmodifiableMapView) return _relationships;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_relationships);
  }

  final Map<String, String> _country;
  @override
  Map<String, String> get country {
    if (_country is EqualUnmodifiableMapView) return _country;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_country);
  }

  final List<String> _motherTongue;
  @override
  @JsonKey(name: 'mother_tounge')
  List<String> get motherTongue {
    if (_motherTongue is EqualUnmodifiableListView) return _motherTongue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_motherTongue);
  }

  @override
  String toString() {
    return 'DropDownData(religions: $religions, categories: $categories, castes: $castes, professions: $professions, educationLevels: $educationLevels, relationships: $relationships, country: $country, motherTongue: $motherTongue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DropDownDataImpl &&
            const DeepCollectionEquality()
                .equals(other._religions, _religions) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._castes, _castes) &&
            const DeepCollectionEquality()
                .equals(other._professions, _professions) &&
            const DeepCollectionEquality()
                .equals(other._educationLevels, _educationLevels) &&
            const DeepCollectionEquality()
                .equals(other._relationships, _relationships) &&
            const DeepCollectionEquality().equals(other._country, _country) &&
            const DeepCollectionEquality()
                .equals(other._motherTongue, _motherTongue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_religions),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_castes),
      const DeepCollectionEquality().hash(_professions),
      const DeepCollectionEquality().hash(_educationLevels),
      const DeepCollectionEquality().hash(_relationships),
      const DeepCollectionEquality().hash(_country),
      const DeepCollectionEquality().hash(_motherTongue));

  /// Create a copy of DropDownData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DropDownDataImplCopyWith<_$DropDownDataImpl> get copyWith =>
      __$$DropDownDataImplCopyWithImpl<_$DropDownDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DropDownDataImplToJson(
      this,
    );
  }
}

abstract class _DropDownData implements DropDownData {
  const factory _DropDownData(
      {required final List<String> religions,
      required final Map<String, String> categories,
      final List<String>? castes,
      required final List<String> professions,
      @JsonKey(name: 'education_levels')
      required final List<String> educationLevels,
      @JsonKey(name: 'relationship')
      required final Map<String, String> relationships,
      required final Map<String, String> country,
      @JsonKey(name: 'mother_tounge')
      required final List<String> motherTongue}) = _$DropDownDataImpl;

  factory _DropDownData.fromJson(Map<String, dynamic> json) =
      _$DropDownDataImpl.fromJson;

  @override
  List<String> get religions;
  @override
  Map<String, String> get categories;
  @override
  List<String>? get castes;
  @override
  List<String> get professions;
  @override
  @JsonKey(name: 'education_levels')
  List<String> get educationLevels;
  @override
  @JsonKey(name: 'relationship')
  Map<String, String> get relationships;
  @override
  Map<String, String> get country;
  @override
  @JsonKey(name: 'mother_tounge')
  List<String> get motherTongue;

  /// Create a copy of DropDownData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DropDownDataImplCopyWith<_$DropDownDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DropDownError _$DropDownErrorFromJson(Map<String, dynamic> json) {
  return _DropDownError.fromJson(json);
}

/// @nodoc
mixin _$DropDownError {
  Map<String, List<String>> get errors => throw _privateConstructorUsedError;

  /// Serializes this DropDownError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DropDownError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DropDownErrorCopyWith<DropDownError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropDownErrorCopyWith<$Res> {
  factory $DropDownErrorCopyWith(
          DropDownError value, $Res Function(DropDownError) then) =
      _$DropDownErrorCopyWithImpl<$Res, DropDownError>;
  @useResult
  $Res call({Map<String, List<String>> errors});
}

/// @nodoc
class _$DropDownErrorCopyWithImpl<$Res, $Val extends DropDownError>
    implements $DropDownErrorCopyWith<$Res> {
  _$DropDownErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DropDownError
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
abstract class _$$DropDownErrorImplCopyWith<$Res>
    implements $DropDownErrorCopyWith<$Res> {
  factory _$$DropDownErrorImplCopyWith(
          _$DropDownErrorImpl value, $Res Function(_$DropDownErrorImpl) then) =
      __$$DropDownErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, List<String>> errors});
}

/// @nodoc
class __$$DropDownErrorImplCopyWithImpl<$Res>
    extends _$DropDownErrorCopyWithImpl<$Res, _$DropDownErrorImpl>
    implements _$$DropDownErrorImplCopyWith<$Res> {
  __$$DropDownErrorImplCopyWithImpl(
      _$DropDownErrorImpl _value, $Res Function(_$DropDownErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DropDownError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = null,
  }) {
    return _then(_$DropDownErrorImpl(
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DropDownErrorImpl implements _DropDownError {
  const _$DropDownErrorImpl({required final Map<String, List<String>> errors})
      : _errors = errors;

  factory _$DropDownErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$DropDownErrorImplFromJson(json);

  final Map<String, List<String>> _errors;
  @override
  Map<String, List<String>> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @override
  String toString() {
    return 'DropDownError(errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DropDownErrorImpl &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_errors));

  /// Create a copy of DropDownError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DropDownErrorImplCopyWith<_$DropDownErrorImpl> get copyWith =>
      __$$DropDownErrorImplCopyWithImpl<_$DropDownErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DropDownErrorImplToJson(
      this,
    );
  }
}

abstract class _DropDownError implements DropDownError {
  const factory _DropDownError(
      {required final Map<String, List<String>> errors}) = _$DropDownErrorImpl;

  factory _DropDownError.fromJson(Map<String, dynamic> json) =
      _$DropDownErrorImpl.fromJson;

  @override
  Map<String, List<String>> get errors;

  /// Create a copy of DropDownError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DropDownErrorImplCopyWith<_$DropDownErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
