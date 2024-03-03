// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_post_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomePostListModel _$HomePostListModelFromJson(Map<String, dynamic> json) {
  return _HomePostListModel.fromJson(json);
}

/// @nodoc
mixin _$HomePostListModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  int get subCategoryId => throw _privateConstructorUsedError;
  Map<String, dynamic> get user => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get tags => throw _privateConstructorUsedError;
  String? get postImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomePostListModelCopyWith<HomePostListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePostListModelCopyWith<$Res> {
  factory $HomePostListModelCopyWith(
          HomePostListModel value, $Res Function(HomePostListModel) then) =
      _$HomePostListModelCopyWithImpl<$Res, HomePostListModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      int categoryId,
      int subCategoryId,
      Map<String, dynamic> user,
      List<Map<String, dynamic>> tags,
      String? postImageUrl});
}

/// @nodoc
class _$HomePostListModelCopyWithImpl<$Res, $Val extends HomePostListModel>
    implements $HomePostListModelCopyWith<$Res> {
  _$HomePostListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? categoryId = null,
    Object? subCategoryId = null,
    Object? user = null,
    Object? tags = null,
    Object? postImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      subCategoryId: null == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      postImageUrl: freezed == postImageUrl
          ? _value.postImageUrl
          : postImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomePostListModelImplCopyWith<$Res>
    implements $HomePostListModelCopyWith<$Res> {
  factory _$$HomePostListModelImplCopyWith(_$HomePostListModelImpl value,
          $Res Function(_$HomePostListModelImpl) then) =
      __$$HomePostListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      int categoryId,
      int subCategoryId,
      Map<String, dynamic> user,
      List<Map<String, dynamic>> tags,
      String? postImageUrl});
}

/// @nodoc
class __$$HomePostListModelImplCopyWithImpl<$Res>
    extends _$HomePostListModelCopyWithImpl<$Res, _$HomePostListModelImpl>
    implements _$$HomePostListModelImplCopyWith<$Res> {
  __$$HomePostListModelImplCopyWithImpl(_$HomePostListModelImpl _value,
      $Res Function(_$HomePostListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? categoryId = null,
    Object? subCategoryId = null,
    Object? user = null,
    Object? tags = null,
    Object? postImageUrl = freezed,
  }) {
    return _then(_$HomePostListModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      subCategoryId: null == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      postImageUrl: freezed == postImageUrl
          ? _value.postImageUrl
          : postImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$HomePostListModelImpl implements _HomePostListModel {
  const _$HomePostListModelImpl(
      {required this.id,
      required this.title,
      required this.categoryId,
      required this.subCategoryId,
      required final Map<String, dynamic> user,
      required final List<Map<String, dynamic>> tags,
      this.postImageUrl = ""})
      : _user = user,
        _tags = tags;

  factory _$HomePostListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomePostListModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final int categoryId;
  @override
  final int subCategoryId;
  final Map<String, dynamic> _user;
  @override
  Map<String, dynamic> get user {
    if (_user is EqualUnmodifiableMapView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_user);
  }

  final List<Map<String, dynamic>> _tags;
  @override
  List<Map<String, dynamic>> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey()
  final String? postImageUrl;

  @override
  String toString() {
    return 'HomePostListModel(id: $id, title: $title, categoryId: $categoryId, subCategoryId: $subCategoryId, user: $user, tags: $tags, postImageUrl: $postImageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePostListModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.subCategoryId, subCategoryId) ||
                other.subCategoryId == subCategoryId) &&
            const DeepCollectionEquality().equals(other._user, _user) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.postImageUrl, postImageUrl) ||
                other.postImageUrl == postImageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      categoryId,
      subCategoryId,
      const DeepCollectionEquality().hash(_user),
      const DeepCollectionEquality().hash(_tags),
      postImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePostListModelImplCopyWith<_$HomePostListModelImpl> get copyWith =>
      __$$HomePostListModelImplCopyWithImpl<_$HomePostListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomePostListModelImplToJson(
      this,
    );
  }
}

abstract class _HomePostListModel implements HomePostListModel {
  const factory _HomePostListModel(
      {required final int id,
      required final String title,
      required final int categoryId,
      required final int subCategoryId,
      required final Map<String, dynamic> user,
      required final List<Map<String, dynamic>> tags,
      final String? postImageUrl}) = _$HomePostListModelImpl;

  factory _HomePostListModel.fromJson(Map<String, dynamic> json) =
      _$HomePostListModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  int get categoryId;
  @override
  int get subCategoryId;
  @override
  Map<String, dynamic> get user;
  @override
  List<Map<String, dynamic>> get tags;
  @override
  String? get postImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$HomePostListModelImplCopyWith<_$HomePostListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
