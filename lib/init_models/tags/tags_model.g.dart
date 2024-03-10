// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tags_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TagsModelImpl _$$TagsModelImplFromJson(Map<String, dynamic> json) =>
    _$TagsModelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      orderNo: json['order_no'] as int,
      tagGroup:
          TagGroupsModel.fromJson(json['tag_group'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TagsModelImplToJson(_$TagsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'order_no': instance.orderNo,
      'tag_group': instance.tagGroup,
    };
