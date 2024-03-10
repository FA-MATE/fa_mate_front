// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conditions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConditionsModelImpl _$$ConditionsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConditionsModelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      orderNo: json['order_no'] as int,
      conditionGroup: ConditionGroupModel.fromJson(
          json['condition_group'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConditionsModelImplToJson(
        _$ConditionsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'order_no': instance.orderNo,
      'condition_group': instance.conditionGroup,
    };
