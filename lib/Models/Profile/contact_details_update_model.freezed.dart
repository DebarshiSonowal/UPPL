// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_details_update_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContactDetailsUpdateModel _$ContactDetailsUpdateModelFromJson(
    Map<String, dynamic> json) {
  return _ContactDetailsUpdateModel.fromJson(json);
}

/// @nodoc
mixin _$ContactDetailsUpdateModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ContactDetailsDataModel? get data => throw _privateConstructorUsedError;

  /// Serializes this ContactDetailsUpdateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactDetailsUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactDetailsUpdateModelCopyWith<ContactDetailsUpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactDetailsUpdateModelCopyWith<$Res> {
  factory $ContactDetailsUpdateModelCopyWith(ContactDetailsUpdateModel value,
          $Res Function(ContactDetailsUpdateModel) then) =
      _$ContactDetailsUpdateModelCopyWithImpl<$Res, ContactDetailsUpdateModel>;
  @useResult
  $Res call({int status, String message, ContactDetailsDataModel? data});

  $ContactDetailsDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$ContactDetailsUpdateModelCopyWithImpl<$Res,
        $Val extends ContactDetailsUpdateModel>
    implements $ContactDetailsUpdateModelCopyWith<$Res> {
  _$ContactDetailsUpdateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactDetailsUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
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
              as ContactDetailsDataModel?,
    ) as $Val);
  }

  /// Create a copy of ContactDetailsUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactDetailsDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ContactDetailsDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContactDetailsUpdateModelImplCopyWith<$Res>
    implements $ContactDetailsUpdateModelCopyWith<$Res> {
  factory _$$ContactDetailsUpdateModelImplCopyWith(
          _$ContactDetailsUpdateModelImpl value,
          $Res Function(_$ContactDetailsUpdateModelImpl) then) =
      __$$ContactDetailsUpdateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, ContactDetailsDataModel? data});

  @override
  $ContactDetailsDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ContactDetailsUpdateModelImplCopyWithImpl<$Res>
    extends _$ContactDetailsUpdateModelCopyWithImpl<$Res,
        _$ContactDetailsUpdateModelImpl>
    implements _$$ContactDetailsUpdateModelImplCopyWith<$Res> {
  __$$ContactDetailsUpdateModelImplCopyWithImpl(
      _$ContactDetailsUpdateModelImpl _value,
      $Res Function(_$ContactDetailsUpdateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactDetailsUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$ContactDetailsUpdateModelImpl(
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
              as ContactDetailsDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactDetailsUpdateModelImpl implements _ContactDetailsUpdateModel {
  const _$ContactDetailsUpdateModelImpl(
      {required this.status, required this.message, this.data});

  factory _$ContactDetailsUpdateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactDetailsUpdateModelImplFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final ContactDetailsDataModel? data;

  @override
  String toString() {
    return 'ContactDetailsUpdateModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactDetailsUpdateModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of ContactDetailsUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactDetailsUpdateModelImplCopyWith<_$ContactDetailsUpdateModelImpl>
      get copyWith => __$$ContactDetailsUpdateModelImplCopyWithImpl<
          _$ContactDetailsUpdateModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactDetailsUpdateModelImplToJson(
      this,
    );
  }
}

abstract class _ContactDetailsUpdateModel implements ContactDetailsUpdateModel {
  const factory _ContactDetailsUpdateModel(
      {required final int status,
      required final String message,
      final ContactDetailsDataModel? data}) = _$ContactDetailsUpdateModelImpl;

  factory _ContactDetailsUpdateModel.fromJson(Map<String, dynamic> json) =
      _$ContactDetailsUpdateModelImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  ContactDetailsDataModel? get data;

  /// Create a copy of ContactDetailsUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactDetailsUpdateModelImplCopyWith<_$ContactDetailsUpdateModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ContactDetailsDataModel _$ContactDetailsDataModelFromJson(
    Map<String, dynamic> json) {
  return _ContactDetailsDataModel.fromJson(json);
}

/// @nodoc
mixin _$ContactDetailsDataModel {
  Map<String, List<String>>? get errors => throw _privateConstructorUsedError;

  /// Serializes this ContactDetailsDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactDetailsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactDetailsDataModelCopyWith<ContactDetailsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactDetailsDataModelCopyWith<$Res> {
  factory $ContactDetailsDataModelCopyWith(ContactDetailsDataModel value,
          $Res Function(ContactDetailsDataModel) then) =
      _$ContactDetailsDataModelCopyWithImpl<$Res, ContactDetailsDataModel>;
  @useResult
  $Res call({Map<String, List<String>>? errors});
}

/// @nodoc
class _$ContactDetailsDataModelCopyWithImpl<$Res,
        $Val extends ContactDetailsDataModel>
    implements $ContactDetailsDataModelCopyWith<$Res> {
  _$ContactDetailsDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactDetailsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactDetailsDataModelImplCopyWith<$Res>
    implements $ContactDetailsDataModelCopyWith<$Res> {
  factory _$$ContactDetailsDataModelImplCopyWith(
          _$ContactDetailsDataModelImpl value,
          $Res Function(_$ContactDetailsDataModelImpl) then) =
      __$$ContactDetailsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, List<String>>? errors});
}

/// @nodoc
class __$$ContactDetailsDataModelImplCopyWithImpl<$Res>
    extends _$ContactDetailsDataModelCopyWithImpl<$Res,
        _$ContactDetailsDataModelImpl>
    implements _$$ContactDetailsDataModelImplCopyWith<$Res> {
  __$$ContactDetailsDataModelImplCopyWithImpl(
      _$ContactDetailsDataModelImpl _value,
      $Res Function(_$ContactDetailsDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactDetailsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(_$ContactDetailsDataModelImpl(
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactDetailsDataModelImpl implements _ContactDetailsDataModel {
  const _$ContactDetailsDataModelImpl({final Map<String, List<String>>? errors})
      : _errors = errors;

  factory _$ContactDetailsDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactDetailsDataModelImplFromJson(json);

  final Map<String, List<String>>? _errors;
  @override
  Map<String, List<String>>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ContactDetailsDataModel(errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactDetailsDataModelImpl &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_errors));

  /// Create a copy of ContactDetailsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactDetailsDataModelImplCopyWith<_$ContactDetailsDataModelImpl>
      get copyWith => __$$ContactDetailsDataModelImplCopyWithImpl<
          _$ContactDetailsDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactDetailsDataModelImplToJson(
      this,
    );
  }
}

abstract class _ContactDetailsDataModel implements ContactDetailsDataModel {
  const factory _ContactDetailsDataModel(
          {final Map<String, List<String>>? errors}) =
      _$ContactDetailsDataModelImpl;

  factory _ContactDetailsDataModel.fromJson(Map<String, dynamic> json) =
      _$ContactDetailsDataModelImpl.fromJson;

  @override
  Map<String, List<String>>? get errors;

  /// Create a copy of ContactDetailsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactDetailsDataModelImplCopyWith<_$ContactDetailsDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
