// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_upload_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostUploadModel _$PostUploadModelFromJson(Map<String, dynamic> json) {
  return _PostUploadModel.fromJson(json);
}

/// @nodoc
mixin _$PostUploadModel {
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  int? get subCategoryId => throw _privateConstructorUsedError;
  Map<String, dynamic>? get user => throw _privateConstructorUsedError;
  List<TagsModel>? get tags => throw _privateConstructorUsedError;
  List<ConditionsModel>? get conditions => throw _privateConstructorUsedError;
  List<Map<String, dynamic>>? get postImages =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostUploadModelCopyWith<PostUploadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostUploadModelCopyWith<$Res> {
  factory $PostUploadModelCopyWith(
          PostUploadModel value, $Res Function(PostUploadModel) then) =
      _$PostUploadModelCopyWithImpl<$Res, PostUploadModel>;
  @useResult
  $Res call(
      {String? title,
      String? body,
      int? categoryId,
      int? subCategoryId,
      Map<String, dynamic>? user,
      List<TagsModel>? tags,
      List<ConditionsModel>? conditions,
      List<Map<String, dynamic>>? postImages});
}

/// @nodoc
class _$PostUploadModelCopyWithImpl<$Res, $Val extends PostUploadModel>
    implements $PostUploadModelCopyWith<$Res> {
  _$PostUploadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? categoryId = freezed,
    Object? subCategoryId = freezed,
    Object? user = freezed,
    Object? tags = freezed,
    Object? conditions = freezed,
    Object? postImages = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      subCategoryId: freezed == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagsModel>?,
      conditions: freezed == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<ConditionsModel>?,
      postImages: freezed == postImages
          ? _value.postImages
          : postImages // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostUploadModelImplCopyWith<$Res>
    implements $PostUploadModelCopyWith<$Res> {
  factory _$$PostUploadModelImplCopyWith(_$PostUploadModelImpl value,
          $Res Function(_$PostUploadModelImpl) then) =
      __$$PostUploadModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? body,
      int? categoryId,
      int? subCategoryId,
      Map<String, dynamic>? user,
      List<TagsModel>? tags,
      List<ConditionsModel>? conditions,
      List<Map<String, dynamic>>? postImages});
}

/// @nodoc
class __$$PostUploadModelImplCopyWithImpl<$Res>
    extends _$PostUploadModelCopyWithImpl<$Res, _$PostUploadModelImpl>
    implements _$$PostUploadModelImplCopyWith<$Res> {
  __$$PostUploadModelImplCopyWithImpl(
      _$PostUploadModelImpl _value, $Res Function(_$PostUploadModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? categoryId = freezed,
    Object? subCategoryId = freezed,
    Object? user = freezed,
    Object? tags = freezed,
    Object? conditions = freezed,
    Object? postImages = freezed,
  }) {
    return _then(_$PostUploadModelImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      subCategoryId: freezed == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagsModel>?,
      conditions: freezed == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<ConditionsModel>?,
      postImages: freezed == postImages
          ? _value._postImages
          : postImages // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$PostUploadModelImpl implements _PostUploadModel {
  const _$PostUploadModelImpl(
      {this.title,
      this.body,
      this.categoryId,
      this.subCategoryId,
      final Map<String, dynamic>? user,
      final List<TagsModel>? tags,
      final List<ConditionsModel>? conditions,
      final List<Map<String, dynamic>>? postImages})
      : _user = user,
        _tags = tags,
        _conditions = conditions,
        _postImages = postImages;

  factory _$PostUploadModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostUploadModelImplFromJson(json);

  @override
  final String? title;
  @override
  final String? body;
  @override
  final int? categoryId;
  @override
  final int? subCategoryId;
  final Map<String, dynamic>? _user;
  @override
  Map<String, dynamic>? get user {
    final value = _user;
    if (value == null) return null;
    if (_user is EqualUnmodifiableMapView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<TagsModel>? _tags;
  @override
  List<TagsModel>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ConditionsModel>? _conditions;
  @override
  List<ConditionsModel>? get conditions {
    final value = _conditions;
    if (value == null) return null;
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Map<String, dynamic>>? _postImages;
  @override
  List<Map<String, dynamic>>? get postImages {
    final value = _postImages;
    if (value == null) return null;
    if (_postImages is EqualUnmodifiableListView) return _postImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostUploadModel(title: $title, body: $body, categoryId: $categoryId, subCategoryId: $subCategoryId, user: $user, tags: $tags, conditions: $conditions, postImages: $postImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostUploadModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.subCategoryId, subCategoryId) ||
                other.subCategoryId == subCategoryId) &&
            const DeepCollectionEquality().equals(other._user, _user) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions) &&
            const DeepCollectionEquality()
                .equals(other._postImages, _postImages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      body,
      categoryId,
      subCategoryId,
      const DeepCollectionEquality().hash(_user),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_conditions),
      const DeepCollectionEquality().hash(_postImages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostUploadModelImplCopyWith<_$PostUploadModelImpl> get copyWith =>
      __$$PostUploadModelImplCopyWithImpl<_$PostUploadModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostUploadModelImplToJson(
      this,
    );
  }
}

abstract class _PostUploadModel implements PostUploadModel {
  const factory _PostUploadModel(
      {final String? title,
      final String? body,
      final int? categoryId,
      final int? subCategoryId,
      final Map<String, dynamic>? user,
      final List<TagsModel>? tags,
      final List<ConditionsModel>? conditions,
      final List<Map<String, dynamic>>? postImages}) = _$PostUploadModelImpl;

  factory _PostUploadModel.fromJson(Map<String, dynamic> json) =
      _$PostUploadModelImpl.fromJson;

  @override
  String? get title;
  @override
  String? get body;
  @override
  int? get categoryId;
  @override
  int? get subCategoryId;
  @override
  Map<String, dynamic>? get user;
  @override
  List<TagsModel>? get tags;
  @override
  List<ConditionsModel>? get conditions;
  @override
  List<Map<String, dynamic>>? get postImages;
  @override
  @JsonKey(ignore: true)
  _$$PostUploadModelImplCopyWith<_$PostUploadModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
