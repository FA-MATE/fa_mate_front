// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TagModelImpl _$$TagModelImplFromJson(Map<String, dynamic> json) =>
    _$TagModelImpl(
      id: json['id'] as int,
      tagGroupId: json['tag_group_id'] as int,
      name: json['name'] as String,
      orderNo: json['order_no'] as int,
      createdAt: json['created_at'] as String? ?? "",
      updatedAt: json['updated_at'] as String? ?? "",
    );

Map<String, dynamic> _$$TagModelImplToJson(_$TagModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tag_group_id': instance.tagGroupId,
      'name': instance.name,
      'order_no': instance.orderNo,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
