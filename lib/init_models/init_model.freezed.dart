// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'init_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InitModel _$InitModelFromJson(Map<String, dynamic> json) {
  return _InitModel.fromJson(json);
}

/// @nodoc
mixin _$InitModel {
  List<CategoriesModel> get categories => throw _privateConstructorUsedError;
  List<SubCategoriesModel> get subCategories =>
      throw _privateConstructorUsedError;
  List<ConditionGroupModel> get conditionGroups =>
      throw _privateConstructorUsedError;
  List<ConditionsModel> get conditions => throw _privateConstructorUsedError;
  List<TagGroupsModel> get tagGroups => throw _privateConstructorUsedError;
  List<TagsModel> get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitModelCopyWith<InitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitModelCopyWith<$Res> {
  factory $InitModelCopyWith(InitModel value, $Res Function(InitModel) then) =
      _$InitModelCopyWithImpl<$Res, InitModel>;
  @useResult
  $Res call(
      {List<CategoriesModel> categories,
      List<SubCategoriesModel> subCategories,
      List<ConditionGroupModel> conditionGroups,
      List<ConditionsModel> conditions,
      List<TagGroupsModel> tagGroups,
      List<TagsModel> tags});
}

/// @nodoc
class _$InitModelCopyWithImpl<$Res, $Val extends InitModel>
    implements $InitModelCopyWith<$Res> {
  _$InitModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? subCategories = null,
    Object? conditionGroups = null,
    Object? conditions = null,
    Object? tagGroups = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesModel>,
      subCategories: null == subCategories
          ? _value.subCategories
          : subCategories // ignore: cast_nullable_to_non_nullable
              as List<SubCategoriesModel>,
      conditionGroups: null == conditionGroups
          ? _value.conditionGroups
          : conditionGroups // ignore: cast_nullable_to_non_nullable
              as List<ConditionGroupModel>,
      conditions: null == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<ConditionsModel>,
      tagGroups: null == tagGroups
          ? _value.tagGroups
          : tagGroups // ignore: cast_nullable_to_non_nullable
              as List<TagGroupsModel>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitModelImplCopyWith<$Res>
    implements $InitModelCopyWith<$Res> {
  factory _$$InitModelImplCopyWith(
          _$InitModelImpl value, $Res Function(_$InitModelImpl) then) =
      __$$InitModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CategoriesModel> categories,
      List<SubCategoriesModel> subCategories,
      List<ConditionGroupModel> conditionGroups,
      List<ConditionsModel> conditions,
      List<TagGroupsModel> tagGroups,
      List<TagsModel> tags});
}

/// @nodoc
class __$$InitModelImplCopyWithImpl<$Res>
    extends _$InitModelCopyWithImpl<$Res, _$InitModelImpl>
    implements _$$InitModelImplCopyWith<$Res> {
  __$$InitModelImplCopyWithImpl(
      _$InitModelImpl _value, $Res Function(_$InitModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? subCategories = null,
    Object? conditionGroups = null,
    Object? conditions = null,
    Object? tagGroups = null,
    Object? tags = null,
  }) {
    return _then(_$InitModelImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesModel>,
      subCategories: null == subCategories
          ? _value._subCategories
          : subCategories // ignore: cast_nullable_to_non_nullable
              as List<SubCategoriesModel>,
      conditionGroups: null == conditionGroups
          ? _value._conditionGroups
          : conditionGroups // ignore: cast_nullable_to_non_nullable
              as List<ConditionGroupModel>,
      conditions: null == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<ConditionsModel>,
      tagGroups: null == tagGroups
          ? _value._tagGroups
          : tagGroups // ignore: cast_nullable_to_non_nullable
              as List<TagGroupsModel>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagsModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$InitModelImpl implements _InitModel {
  const _$InitModelImpl(
      {required final List<CategoriesModel> categories,
      required final List<SubCategoriesModel> subCategories,
      required final List<ConditionGroupModel> conditionGroups,
      required final List<ConditionsModel> conditions,
      required final List<TagGroupsModel> tagGroups,
      required final List<TagsModel> tags})
      : _categories = categories,
        _subCategories = subCategories,
        _conditionGroups = conditionGroups,
        _conditions = conditions,
        _tagGroups = tagGroups,
        _tags = tags;

  factory _$InitModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitModelImplFromJson(json);

  final List<CategoriesModel> _categories;
  @override
  List<CategoriesModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<SubCategoriesModel> _subCategories;
  @override
  List<SubCategoriesModel> get subCategories {
    if (_subCategories is EqualUnmodifiableListView) return _subCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subCategories);
  }

  final List<ConditionGroupModel> _conditionGroups;
  @override
  List<ConditionGroupModel> get conditionGroups {
    if (_conditionGroups is EqualUnmodifiableListView) return _conditionGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conditionGroups);
  }

  final List<ConditionsModel> _conditions;
  @override
  List<ConditionsModel> get conditions {
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conditions);
  }

  final List<TagGroupsModel> _tagGroups;
  @override
  List<TagGroupsModel> get tagGroups {
    if (_tagGroups is EqualUnmodifiableListView) return _tagGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tagGroups);
  }

  final List<TagsModel> _tags;
  @override
  List<TagsModel> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'InitModel(categories: $categories, subCategories: $subCategories, conditionGroups: $conditionGroups, conditions: $conditions, tagGroups: $tagGroups, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitModelImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._subCategories, _subCategories) &&
            const DeepCollectionEquality()
                .equals(other._conditionGroups, _conditionGroups) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions) &&
            const DeepCollectionEquality()
                .equals(other._tagGroups, _tagGroups) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_subCategories),
      const DeepCollectionEquality().hash(_conditionGroups),
      const DeepCollectionEquality().hash(_conditions),
      const DeepCollectionEquality().hash(_tagGroups),
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitModelImplCopyWith<_$InitModelImpl> get copyWith =>
      __$$InitModelImplCopyWithImpl<_$InitModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitModelImplToJson(
      this,
    );
  }
}

abstract class _InitModel implements InitModel {
  const factory _InitModel(
      {required final List<CategoriesModel> categories,
      required final List<SubCategoriesModel> subCategories,
      required final List<ConditionGroupModel> conditionGroups,
      required final List<ConditionsModel> conditions,
      required final List<TagGroupsModel> tagGroups,
      required final List<TagsModel> tags}) = _$InitModelImpl;

  factory _InitModel.fromJson(Map<String, dynamic> json) =
      _$InitModelImpl.fromJson;

  @override
  List<CategoriesModel> get categories;
  @override
  List<SubCategoriesModel> get subCategories;
  @override
  List<ConditionGroupModel> get conditionGroups;
  @override
  List<ConditionsModel> get conditions;
  @override
  List<TagGroupsModel> get tagGroups;
  @override
  List<TagsModel> get tags;
  @override
  @JsonKey(ignore: true)
  _$$InitModelImplCopyWith<_$InitModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
