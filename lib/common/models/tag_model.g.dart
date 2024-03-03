// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TagListModelImpl _$$TagListModelImplFromJson(Map<String, dynamic> json) =>
    _$TagListModelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      orderNo: json['order_no'] as int,
      tagGroup: json['tag_group'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$TagListModelImplToJson(_$TagListModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'order_no': instance.orderNo,
      'tag_group': instance.tagGroup,
    };
