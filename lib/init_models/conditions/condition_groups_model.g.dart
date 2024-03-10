// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition_groups_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConditionGroupModelImpl _$$ConditionGroupModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConditionGroupModelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      orderNo: json['order_no'] as int,
    );

Map<String, dynamic> _$$ConditionGroupModelImplToJson(
        _$ConditionGroupModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'order_no': instance.orderNo,
    };
