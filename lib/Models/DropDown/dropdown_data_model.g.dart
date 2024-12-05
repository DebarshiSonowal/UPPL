// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dropdown_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DropDownDataImpl _$$DropDownDataImplFromJson(Map<String, dynamic> json) =>
    _$DropDownDataImpl(
      religions:
          (json['religions'] as List<dynamic>).map((e) => e as String).toList(),
      categories: Map<String, String>.from(json['categories'] as Map),
      castes:
          (json['castes'] as List<dynamic>?)?.map((e) => e as String).toList(),
      professions: (json['professions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      educationLevels: (json['education_levels'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      relationships: Map<String, String>.from(json['relationship'] as Map),
      country: Map<String, String>.from(json['country'] as Map),
      motherTongue: (json['mother_tounge'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$DropDownDataImplToJson(_$DropDownDataImpl instance) =>
    <String, dynamic>{
      'religions': instance.religions,
      'categories': instance.categories,
      'castes': instance.castes,
      'professions': instance.professions,
      'education_levels': instance.educationLevels,
      'relationship': instance.relationships,
      'country': instance.country,
      'mother_tounge': instance.motherTongue,
    };

_$DropDownErrorImpl _$$DropDownErrorImplFromJson(Map<String, dynamic> json) =>
    _$DropDownErrorImpl(
      errors: (json['errors'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
    );

Map<String, dynamic> _$$DropDownErrorImplToJson(_$DropDownErrorImpl instance) =>
    <String, dynamic>{
      'errors': instance.errors,
    };
