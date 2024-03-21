// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubCategoriesModel _$SubCategoriesModelFromJson(Map<String, dynamic> json) {
  return _SubCategoriesModel.fromJson(json);
}

/// @nodoc
mixin _$SubCategoriesModel {
  int get id => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get orderNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubCategoriesModelCopyWith<SubCategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoriesModelCopyWith<$Res> {
  factory $SubCategoriesModelCopyWith(
          SubCategoriesModel value, $Res Function(SubCategoriesModel) then) =
      _$SubCategoriesModelCopyWithImpl<$Res, SubCategoriesModel>;
  @useResult
  $Res call({int id, int categoryId, String name, int orderNo});
}

/// @nodoc
class _$SubCategoriesModelCopyWithImpl<$Res, $Val extends SubCategoriesModel>
    implements $SubCategoriesModelCopyWith<$Res> {
  _$SubCategoriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? name = null,
    Object? orderNo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SubCategoriesModelImplCopyWith<$Res>
    implements $SubCategoriesModelCopyWith<$Res> {
  factory _$$SubCategoriesModelImplCopyWith(_$SubCategoriesModelImpl value,
          $Res Function(_$SubCategoriesModelImpl) then) =
      __$$SubCategoriesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int categoryId, String name, int orderNo});
}

/// @nodoc
class __$$SubCategoriesModelImplCopyWithImpl<$Res>
    extends _$SubCategoriesModelCopyWithImpl<$Res, _$SubCategoriesModelImpl>
    implements _$$SubCategoriesModelImplCopyWith<$Res> {
  __$$SubCategoriesModelImplCopyWithImpl(_$SubCategoriesModelImpl _value,
      $Res Function(_$SubCategoriesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? name = null,
    Object? orderNo = null,
  }) {
    return _then(_$SubCategoriesModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
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
class _$SubCategoriesModelImpl implements _SubCategoriesModel {
  const _$SubCategoriesModelImpl(
      {required this.id,
      required this.categoryId,
      required this.name,
      required this.orderNo});

  factory _$SubCategoriesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubCategoriesModelImplFromJson(json);

  @override
  final int id;
  @override
  final int categoryId;
  @override
  final String name;
  @override
  final int orderNo;

  @override
  String toString() {
    return 'SubCategoriesModel(id: $id, categoryId: $categoryId, name: $name, orderNo: $orderNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoriesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.orderNo, orderNo) || other.orderNo == orderNo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, categoryId, name, orderNo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubCategoriesModelImplCopyWith<_$SubCategoriesModelImpl> get copyWith =>
      __$$SubCategoriesModelImplCopyWithImpl<_$SubCategoriesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubCategoriesModelImplToJson(
      this,
    );
  }
}

abstract class _SubCategoriesModel implements SubCategoriesModel {
  const factory _SubCategoriesModel(
      {required final int id,
      required final int categoryId,
      required final String name,
      required final int orderNo}) = _$SubCategoriesModelImpl;

  factory _SubCategoriesModel.fromJson(Map<String, dynamic> json) =
      _$SubCategoriesModelImpl.fromJson;

  @override
  int get id;
  @override
  int get categoryId;
  @override
  String get name;
  @override
  int get orderNo;
  @override
  @JsonKey(ignore: true)
  _$$SubCategoriesModelImplCopyWith<_$SubCategoriesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
