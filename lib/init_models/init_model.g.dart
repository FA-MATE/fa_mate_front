// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitModelImpl _$$InitModelImplFromJson(Map<String, dynamic> json) =>
    _$InitModelImpl(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => CategoriesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      subCategories: (json['sub_categories'] as List<dynamic>)
          .map((e) => SubCategoriesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      conditionGroups: (json['condition_groups'] as List<dynamic>)
          .map((e) => ConditionGroupModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      conditions: (json['conditions'] as List<dynamic>)
          .map((e) => ConditionsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      tagGroups: (json['tag_groups'] as List<dynamic>)
          .map((e) => TagGroupsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>)
          .map((e) => TagsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$InitModelImplToJson(_$InitModelImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'sub_categories': instance.subCategories,
      'condition_groups': instance.conditionGroups,
      'conditions': instance.conditions,
      'tag_groups': instance.tagGroups,
      'tags': instance.tags,
    };
