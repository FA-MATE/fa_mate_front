// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postDetailIdHash() => r'e5b574825d85e856ea925b637e8020214783a4eb';

/// See also [PostDetailId].
@ProviderFor(PostDetailId)
final postDetailIdProvider =
    AutoDisposeNotifierProvider<PostDetailId, int>.internal(
  PostDetailId.new,
  name: r'postDetailIdProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$postDetailIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PostDetailId = AutoDisposeNotifier<int>;
String _$postDetailDataHash() => r'bc8b818aca3406cc4aec98d9794f4ed2cd7c2a03';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$PostDetailData
    extends BuildlessAutoDisposeAsyncNotifier<PostDetailModel> {
  late final int postId;

  FutureOr<PostDetailModel> build(
    int postId,
  );
}

/// See also [PostDetailData].
@ProviderFor(PostDetailData)
const postDetailDataProvider = PostDetailDataFamily();

/// See also [PostDetailData].
class PostDetailDataFamily extends Family<AsyncValue<PostDetailModel>> {
  /// See also [PostDetailData].
  const PostDetailDataFamily();

  /// See also [PostDetailData].
  PostDetailDataProvider call(
    int postId,
  ) {
    return PostDetailDataProvider(
      postId,
    );
  }

  @override
  PostDetailDataProvider getProviderOverride(
    covariant PostDetailDataProvider provider,
  ) {
    return call(
      provider.postId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'postDetailDataProvider';
}

/// See also [PostDetailData].
class PostDetailDataProvider extends AutoDisposeAsyncNotifierProviderImpl<
    PostDetailData, PostDetailModel> {
  /// See also [PostDetailData].
  PostDetailDataProvider(
    int postId,
  ) : this._internal(
          () => PostDetailData()..postId = postId,
          from: postDetailDataProvider,
          name: r'postDetailDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postDetailDataHash,
          dependencies: PostDetailDataFamily._dependencies,
          allTransitiveDependencies:
              PostDetailDataFamily._allTransitiveDependencies,
          postId: postId,
        );

  PostDetailDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.postId,
  }) : super.internal();

  final int postId;

  @override
  FutureOr<PostDetailModel> runNotifierBuild(
    covariant PostDetailData notifier,
  ) {
    return notifier.build(
      postId,
    );
  }

  @override
  Override overrideWith(PostDetailData Function() create) {
    return ProviderOverride(
      origin: this,
      override: PostDetailDataProvider._internal(
        () => create()..postId = postId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        postId: postId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PostDetailData, PostDetailModel>
      createElement() {
    return _PostDetailDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostDetailDataProvider && other.postId == postId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PostDetailDataRef
    on AutoDisposeAsyncNotifierProviderRef<PostDetailModel> {
  /// The parameter `postId` of this provider.
  int get postId;
}

class _PostDetailDataProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PostDetailData,
        PostDetailModel> with PostDetailDataRef {
  _PostDetailDataProviderElement(super.provider);

  @override
  int get postId => (origin as PostDetailDataProvider).postId;
}

String _$isLoadingHash() => r'e646ebf9b71ed761e75a13966606a54165449177';

/// See also [IsLoading].
@ProviderFor(IsLoading)
final isLoadingProvider = AutoDisposeNotifierProvider<IsLoading, bool>.internal(
  IsLoading.new,
  name: r'isLoadingProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$isLoadingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$IsLoading = AutoDisposeNotifier<bool>;
String _$getCategoryItemHash() => r'd3ec5b8187f50e40d87afbef86158f58db7bbc10';

abstract class _$GetCategoryItem
    extends BuildlessAutoDisposeNotifier<CategoriesModel> {
  late final int categoryId;

  CategoriesModel build(
    int categoryId,
  );
}

/// See also [GetCategoryItem].
@ProviderFor(GetCategoryItem)
const getCategoryItemProvider = GetCategoryItemFamily();

/// See also [GetCategoryItem].
class GetCategoryItemFamily extends Family<CategoriesModel> {
  /// See also [GetCategoryItem].
  const GetCategoryItemFamily();

  /// See also [GetCategoryItem].
  GetCategoryItemProvider call(
    int categoryId,
  ) {
    return GetCategoryItemProvider(
      categoryId,
    );
  }

  @override
  GetCategoryItemProvider getProviderOverride(
    covariant GetCategoryItemProvider provider,
  ) {
    return call(
      provider.categoryId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getCategoryItemProvider';
}

/// See also [GetCategoryItem].
class GetCategoryItemProvider
    extends AutoDisposeNotifierProviderImpl<GetCategoryItem, CategoriesModel> {
  /// See also [GetCategoryItem].
  GetCategoryItemProvider(
    int categoryId,
  ) : this._internal(
          () => GetCategoryItem()..categoryId = categoryId,
          from: getCategoryItemProvider,
          name: r'getCategoryItemProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCategoryItemHash,
          dependencies: GetCategoryItemFamily._dependencies,
          allTransitiveDependencies:
              GetCategoryItemFamily._allTransitiveDependencies,
          categoryId: categoryId,
        );

  GetCategoryItemProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categoryId,
  }) : super.internal();

  final int categoryId;

  @override
  CategoriesModel runNotifierBuild(
    covariant GetCategoryItem notifier,
  ) {
    return notifier.build(
      categoryId,
    );
  }

  @override
  Override overrideWith(GetCategoryItem Function() create) {
    return ProviderOverride(
      origin: this,
      override: GetCategoryItemProvider._internal(
        () => create()..categoryId = categoryId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        categoryId: categoryId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<GetCategoryItem, CategoriesModel>
      createElement() {
    return _GetCategoryItemProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCategoryItemProvider && other.categoryId == categoryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetCategoryItemRef on AutoDisposeNotifierProviderRef<CategoriesModel> {
  /// The parameter `categoryId` of this provider.
  int get categoryId;
}

class _GetCategoryItemProviderElement
    extends AutoDisposeNotifierProviderElement<GetCategoryItem, CategoriesModel>
    with GetCategoryItemRef {
  _GetCategoryItemProviderElement(super.provider);

  @override
  int get categoryId => (origin as GetCategoryItemProvider).categoryId;
}

String _$getSelectTagListHash() => r'743c8d1771263b1924f7f440365cf4bc9cd441a1';

abstract class _$GetSelectTagList
    extends BuildlessAutoDisposeNotifier<dynamic> {
  late final int tagGroupId;

  dynamic build(
    int tagGroupId,
  );
}

/// See also [GetSelectTagList].
@ProviderFor(GetSelectTagList)
const getSelectTagListProvider = GetSelectTagListFamily();

/// See also [GetSelectTagList].
class GetSelectTagListFamily extends Family<dynamic> {
  /// See also [GetSelectTagList].
  const GetSelectTagListFamily();

  /// See also [GetSelectTagList].
  GetSelectTagListProvider call(
    int tagGroupId,
  ) {
    return GetSelectTagListProvider(
      tagGroupId,
    );
  }

  @override
  GetSelectTagListProvider getProviderOverride(
    covariant GetSelectTagListProvider provider,
  ) {
    return call(
      provider.tagGroupId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getSelectTagListProvider';
}

/// See also [GetSelectTagList].
class GetSelectTagListProvider
    extends AutoDisposeNotifierProviderImpl<GetSelectTagList, dynamic> {
  /// See also [GetSelectTagList].
  GetSelectTagListProvider(
    int tagGroupId,
  ) : this._internal(
          () => GetSelectTagList()..tagGroupId = tagGroupId,
          from: getSelectTagListProvider,
          name: r'getSelectTagListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSelectTagListHash,
          dependencies: GetSelectTagListFamily._dependencies,
          allTransitiveDependencies:
              GetSelectTagListFamily._allTransitiveDependencies,
          tagGroupId: tagGroupId,
        );

  GetSelectTagListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tagGroupId,
  }) : super.internal();

  final int tagGroupId;

  @override
  dynamic runNotifierBuild(
    covariant GetSelectTagList notifier,
  ) {
    return notifier.build(
      tagGroupId,
    );
  }

  @override
  Override overrideWith(GetSelectTagList Function() create) {
    return ProviderOverride(
      origin: this,
      override: GetSelectTagListProvider._internal(
        () => create()..tagGroupId = tagGroupId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tagGroupId: tagGroupId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<GetSelectTagList, dynamic>
      createElement() {
    return _GetSelectTagListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSelectTagListProvider && other.tagGroupId == tagGroupId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tagGroupId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetSelectTagListRef on AutoDisposeNotifierProviderRef<dynamic> {
  /// The parameter `tagGroupId` of this provider.
  int get tagGroupId;
}

class _GetSelectTagListProviderElement
    extends AutoDisposeNotifierProviderElement<GetSelectTagList, dynamic>
    with GetSelectTagListRef {
  _GetSelectTagListProviderElement(super.provider);

  @override
  int get tagGroupId => (origin as GetSelectTagListProvider).tagGroupId;
}

String _$getSelectCondisionListHash() =>
    r'4b034a0eba2c43611c8d348f6abb7b271c1231f9';

abstract class _$GetSelectCondisionList
    extends BuildlessAutoDisposeNotifier<dynamic> {
  late final int conditionGroupId;

  dynamic build(
    int conditionGroupId,
  );
}

/// See also [GetSelectCondisionList].
@ProviderFor(GetSelectCondisionList)
const getSelectCondisionListProvider = GetSelectCondisionListFamily();

/// See also [GetSelectCondisionList].
class GetSelectCondisionListFamily extends Family<dynamic> {
  /// See also [GetSelectCondisionList].
  const GetSelectCondisionListFamily();

  /// See also [GetSelectCondisionList].
  GetSelectCondisionListProvider call(
    int conditionGroupId,
  ) {
    return GetSelectCondisionListProvider(
      conditionGroupId,
    );
  }

  @override
  GetSelectCondisionListProvider getProviderOverride(
    covariant GetSelectCondisionListProvider provider,
  ) {
    return call(
      provider.conditionGroupId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getSelectCondisionListProvider';
}

/// See also [GetSelectCondisionList].
class GetSelectCondisionListProvider
    extends AutoDisposeNotifierProviderImpl<GetSelectCondisionList, dynamic> {
  /// See also [GetSelectCondisionList].
  GetSelectCondisionListProvider(
    int conditionGroupId,
  ) : this._internal(
          () => GetSelectCondisionList()..conditionGroupId = conditionGroupId,
          from: getSelectCondisionListProvider,
          name: r'getSelectCondisionListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSelectCondisionListHash,
          dependencies: GetSelectCondisionListFamily._dependencies,
          allTransitiveDependencies:
              GetSelectCondisionListFamily._allTransitiveDependencies,
          conditionGroupId: conditionGroupId,
        );

  GetSelectCondisionListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.conditionGroupId,
  }) : super.internal();

  final int conditionGroupId;

  @override
  dynamic runNotifierBuild(
    covariant GetSelectCondisionList notifier,
  ) {
    return notifier.build(
      conditionGroupId,
    );
  }

  @override
  Override overrideWith(GetSelectCondisionList Function() create) {
    return ProviderOverride(
      origin: this,
      override: GetSelectCondisionListProvider._internal(
        () => create()..conditionGroupId = conditionGroupId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        conditionGroupId: conditionGroupId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<GetSelectCondisionList, dynamic>
      createElement() {
    return _GetSelectCondisionListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSelectCondisionListProvider &&
        other.conditionGroupId == conditionGroupId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, conditionGroupId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetSelectCondisionListRef on AutoDisposeNotifierProviderRef<dynamic> {
  /// The parameter `conditionGroupId` of this provider.
  int get conditionGroupId;
}

class _GetSelectCondisionListProviderElement
    extends AutoDisposeNotifierProviderElement<GetSelectCondisionList, dynamic>
    with GetSelectCondisionListRef {
  _GetSelectCondisionListProviderElement(super.provider);

  @override
  int get conditionGroupId =>
      (origin as GetSelectCondisionListProvider).conditionGroupId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
