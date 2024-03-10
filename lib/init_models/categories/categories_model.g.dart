// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoriesModelImpl _$$CategoriesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoriesModelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      orderNo: json['order_no'] as int,
    );

Map<String, dynamic> _$$CategoriesModelImplToJson(
        _$CategoriesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'order_no': instance.orderNo,
    };
