// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'condition_groups_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConditionGroupModel _$ConditionGroupModelFromJson(Map<String, dynamic> json) {
  return _ConditionGroupModel.fromJson(json);
}

/// @nodoc
mixin _$ConditionGroupModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get orderNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConditionGroupModelCopyWith<ConditionGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionGroupModelCopyWith<$Res> {
  factory $ConditionGroupModelCopyWith(
          ConditionGroupModel value, $Res Function(ConditionGroupModel) then) =
      _$ConditionGroupModelCopyWithImpl<$Res, ConditionGroupModel>;
  @useResult
  $Res call({int id, String name, int orderNo});
}

/// @nodoc
class _$ConditionGroupModelCopyWithImpl<$Res, $Val extends ConditionGroupModel>
    implements $ConditionGroupModelCopyWith<$Res> {
  _$ConditionGroupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? orderNo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConditionGroupModelImplCopyWith<$Res>
    implements $ConditionGroupModelCopyWith<$Res> {
  factory _$$ConditionGroupModelImplCopyWith(_$ConditionGroupModelImpl value,
          $Res Function(_$ConditionGroupModelImpl) then) =
      __$$ConditionGroupModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int orderNo});
}

/// @nodoc
class __$$ConditionGroupModelImplCopyWithImpl<$Res>
    extends _$ConditionGroupModelCopyWithImpl<$Res, _$ConditionGroupModelImpl>
    implements _$$ConditionGroupModelImplCopyWith<$Res> {
  __$$ConditionGroupModelImplCopyWithImpl(_$ConditionGroupModelImpl _value,
      $Res Function(_$ConditionGroupModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? orderNo = null,
  }) {
    return _then(_$ConditionGroupModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ConditionGroupModelImpl implements _ConditionGroupModel {
  const _$ConditionGroupModelImpl(
      {required this.id, required this.name, required this.orderNo});

  factory _$ConditionGroupModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionGroupModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int orderNo;

  @override
  String toString() {
    return 'ConditionGroupModel(id: $id, name: $name, orderNo: $orderNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionGroupModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.orderNo, orderNo) || other.orderNo == orderNo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, orderNo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionGroupModelImplCopyWith<_$ConditionGroupModelImpl> get copyWith =>
      __$$ConditionGroupModelImplCopyWithImpl<_$ConditionGroupModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionGroupModelImplToJson(
      this,
    );
  }
}

abstract class _ConditionGroupModel implements ConditionGroupModel {
  const factory _ConditionGroupModel(
      {required final int id,
      required final String name,
      required final int orderNo}) = _$ConditionGroupModelImpl;

  factory _ConditionGroupModel.fromJson(Map<String, dynamic> json) =
      _$ConditionGroupModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get orderNo;
  @override
  @JsonKey(ignore: true)
  _$$ConditionGroupModelImplCopyWith<_$ConditionGroupModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
