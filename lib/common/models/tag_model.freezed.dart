// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tag_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TagListModel _$TagListModelFromJson(Map<String, dynamic> json) {
  return _TagListModel.fromJson(json);
}

/// @nodoc
mixin _$TagListModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get orderNo => throw _privateConstructorUsedError;
  Map<String, dynamic> get tagGroup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagListModelCopyWith<TagListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagListModelCopyWith<$Res> {
  factory $TagListModelCopyWith(
          TagListModel value, $Res Function(TagListModel) then) =
      _$TagListModelCopyWithImpl<$Res, TagListModel>;
  @useResult
  $Res call({int id, String name, int orderNo, Map<String, dynamic> tagGroup});
}

/// @nodoc
class _$TagListModelCopyWithImpl<$Res, $Val extends TagListModel>
    implements $TagListModelCopyWith<$Res> {
  _$TagListModelCopyWithImpl(this._value, this._then);

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
    Object? tagGroup = null,
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
      tagGroup: null == tagGroup
          ? _value.tagGroup
          : tagGroup // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TagListModelImplCopyWith<$Res>
    implements $TagListModelCopyWith<$Res> {
  factory _$$TagListModelImplCopyWith(
          _$TagListModelImpl value, $Res Function(_$TagListModelImpl) then) =
      __$$TagListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int orderNo, Map<String, dynamic> tagGroup});
}

/// @nodoc
class __$$TagListModelImplCopyWithImpl<$Res>
    extends _$TagListModelCopyWithImpl<$Res, _$TagListModelImpl>
    implements _$$TagListModelImplCopyWith<$Res> {
  __$$TagListModelImplCopyWithImpl(
      _$TagListModelImpl _value, $Res Function(_$TagListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? orderNo = null,
    Object? tagGroup = null,
  }) {
    return _then(_$TagListModelImpl(
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
      tagGroup: null == tagGroup
          ? _value._tagGroup
          : tagGroup // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$TagListModelImpl implements _TagListModel {
  const _$TagListModelImpl(
      {required this.id,
      required this.name,
      required this.orderNo,
      required final Map<String, dynamic> tagGroup})
      : _tagGroup = tagGroup;

  factory _$TagListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagListModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int orderNo;
  final Map<String, dynamic> _tagGroup;
  @override
  Map<String, dynamic> get tagGroup {
    if (_tagGroup is EqualUnmodifiableMapView) return _tagGroup;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_tagGroup);
  }

  @override
  String toString() {
    return 'TagListModel(id: $id, name: $name, orderNo: $orderNo, tagGroup: $tagGroup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagListModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.orderNo, orderNo) || other.orderNo == orderNo) &&
            const DeepCollectionEquality().equals(other._tagGroup, _tagGroup));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, orderNo,
      const DeepCollectionEquality().hash(_tagGroup));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagListModelImplCopyWith<_$TagListModelImpl> get copyWith =>
      __$$TagListModelImplCopyWithImpl<_$TagListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagListModelImplToJson(
      this,
    );
  }
}

abstract class _TagListModel implements TagListModel {
  const factory _TagListModel(
      {required final int id,
      required final String name,
      required final int orderNo,
      required final Map<String, dynamic> tagGroup}) = _$TagListModelImpl;

  factory _TagListModel.fromJson(Map<String, dynamic> json) =
      _$TagListModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get orderNo;
  @override
  Map<String, dynamic> get tagGroup;
  @override
  @JsonKey(ignore: true)
  _$$TagListModelImplCopyWith<_$TagListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
