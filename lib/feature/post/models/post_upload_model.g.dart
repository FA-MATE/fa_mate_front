// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_upload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostUploadModelImpl _$$PostUploadModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostUploadModelImpl(
      title: json['title'] as String?,
      body: json['body'] as String?,
      categoryId: json['category_id'] as int?,
      subCategoryId: json['sub_category_id'] as int?,
      user: json['user'] as Map<String, dynamic>?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => TagsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => ConditionsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      postImages: (json['post_images'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$PostUploadModelImplToJson(
        _$PostUploadModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'category_id': instance.categoryId,
      'sub_category_id': instance.subCategoryId,
      'user': instance.user,
      'tags': instance.tags,
      'conditions': instance.conditions,
      'post_images': instance.postImages,
    };
