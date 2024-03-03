// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_post_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomePostListModelImpl _$$HomePostListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HomePostListModelImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      categoryId: json['category_id'] as int,
      subCategoryId: json['sub_category_id'] as int,
      user: json['user'] as Map<String, dynamic>,
      tags: (json['tags'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      postImageUrl: json['post_image_url'] as String? ?? "",
    );

Map<String, dynamic> _$$HomePostListModelImplToJson(
        _$HomePostListModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'category_id': instance.categoryId,
      'sub_category_id': instance.subCategoryId,
      'user': instance.user,
      'tags': instance.tags,
      'post_image_url': instance.postImageUrl,
    };
