// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conditions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConditionsModel _$ConditionsModelFromJson(Map<String, dynamic> json) {
  return _ConditionsModel.fromJson(json);
}

/// @nodoc
mixin _$ConditionsModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get orderNo => throw _privateConstructorUsedError;
  ConditionGroupModel get conditionGroup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConditionsModelCopyWith<ConditionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionsModelCopyWith<$Res> {
  factory $ConditionsModelCopyWith(
          ConditionsModel value, $Res Function(ConditionsModel) then) =
      _$ConditionsModelCopyWithImpl<$Res, ConditionsModel>;
  @useResult
  $Res call(
      {int id, String name, int orderNo, ConditionGroupModel conditionGroup});

  $ConditionGroupModelCopyWith<$Res> get conditionGroup;
}

/// @nodoc
class _$ConditionsModelCopyWithImpl<$Res, $Val extends ConditionsModel>
    implements $ConditionsModelCopyWith<$Res> {
  _$ConditionsModelCopyWithImpl(this._value, this._then);

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
    Object? conditionGroup = null,
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
      conditionGroup: null == conditionGroup
          ? _value.conditionGroup
          : conditionGroup // ignore: cast_nullable_to_non_nullable
              as ConditionGroupModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConditionGroupModelCopyWith<$Res> get conditionGroup {
    return $ConditionGroupModelCopyWith<$Res>(_value.conditionGroup, (value) {
      return _then(_value.copyWith(conditionGroup: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConditionsModelImplCopyWith<$Res>
    implements $ConditionsModelCopyWith<$Res> {
  factory _$$ConditionsModelImplCopyWith(_$ConditionsModelImpl value,
          $Res Function(_$ConditionsModelImpl) then) =
      __$$ConditionsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, int orderNo, ConditionGroupModel conditionGroup});

  @override
  $ConditionGroupModelCopyWith<$Res> get conditionGroup;
}

/// @nodoc
class __$$ConditionsModelImplCopyWithImpl<$Res>
    extends _$ConditionsModelCopyWithImpl<$Res, _$ConditionsModelImpl>
    implements _$$ConditionsModelImplCopyWith<$Res> {
  __$$ConditionsModelImplCopyWithImpl(
      _$ConditionsModelImpl _value, $Res Function(_$ConditionsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? orderNo = null,
    Object? conditionGroup = null,
  }) {
    return _then(_$ConditionsModelImpl(
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
      conditionGroup: null == conditionGroup
          ? _value.conditionGroup
          : conditionGroup // ignore: cast_nullable_to_non_nullable
              as ConditionGroupModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ConditionsModelImpl implements _ConditionsModel {
  const _$ConditionsModelImpl(
      {required this.id,
      required this.name,
      required this.orderNo,
      required this.conditionGroup});

  factory _$ConditionsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionsModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int orderNo;
  @override
  final ConditionGroupModel conditionGroup;

  @override
  String toString() {
    return 'ConditionsModel(id: $id, name: $name, orderNo: $orderNo, conditionGroup: $conditionGroup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.orderNo, orderNo) || other.orderNo == orderNo) &&
            (identical(other.conditionGroup, conditionGroup) ||
                other.conditionGroup == conditionGroup));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, orderNo, conditionGroup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionsModelImplCopyWith<_$ConditionsModelImpl> get copyWith =>
      __$$ConditionsModelImplCopyWithImpl<_$ConditionsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionsModelImplToJson(
      this,
    );
  }
}

abstract class _ConditionsModel implements ConditionsModel {
  const factory _ConditionsModel(
          {required final int id,
          required final String name,
          required final int orderNo,
          required final ConditionGroupModel conditionGroup}) =
      _$ConditionsModelImpl;

  factory _ConditionsModel.fromJson(Map<String, dynamic> json) =
      _$ConditionsModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get orderNo;
  @override
  ConditionGroupModel get conditionGroup;
  @override
  @JsonKey(ignore: true)
  _$$ConditionsModelImplCopyWith<_$ConditionsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
