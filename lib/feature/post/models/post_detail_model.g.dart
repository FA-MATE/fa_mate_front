// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostDetailModelImpl _$$PostDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostDetailModelImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
      categoryId: json['category_id'] as int,
      subCategoryId: json['sub_category_id'] as int,
      user: json['user'] as Map<String, dynamic>,
      tags: (json['tags'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      conditions: (json['conditions'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      postImages: (json['post_images'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$PostDetailModelImplToJson(
        _$PostDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'category_id': instance.categoryId,
      'sub_category_id': instance.subCategoryId,
      'user': instance.user,
      'tags': instance.tags,
      'conditions': instance.conditions,
      'post_images': instance.postImages,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
