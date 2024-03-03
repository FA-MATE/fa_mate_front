// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_post_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getPostListHash() => r'0f332dc8ffe083899fc29594387835c2abb55ca6';

/// See also [GetPostList].
@ProviderFor(GetPostList)
final getPostListProvider = AutoDisposeAsyncNotifierProvider<GetPostList,
    List<HomePostListModel>>.internal(
  GetPostList.new,
  name: r'getPostListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getPostListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GetPostList = AutoDisposeAsyncNotifier<List<HomePostListModel>>;
String _$getPostCategoryListHash() =>
    r'523d27d3c2e1f848735f3afb54772fcb735bae6f';

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

abstract class _$GetPostCategoryList
    extends BuildlessAutoDisposeAsyncNotifier<List<HomePostListModel>> {
  late final int? categoryId;

  FutureOr<List<HomePostListModel>> build({
    int? categoryId,
  });
}

/// See also [GetPostCategoryList].
@ProviderFor(GetPostCategoryList)
const getPostCategoryListProvider = GetPostCategoryListFamily();

/// See also [GetPostCategoryList].
class GetPostCategoryListFamily
    extends Family<AsyncValue<List<HomePostListModel>>> {
  /// See also [GetPostCategoryList].
  const GetPostCategoryListFamily();

  /// See also [GetPostCategoryList].
  GetPostCategoryListProvider call({
    int? categoryId,
  }) {
    return GetPostCategoryListProvider(
      categoryId: categoryId,
    );
  }

  @override
  GetPostCategoryListProvider getProviderOverride(
    covariant GetPostCategoryListProvider provider,
  ) {
    return call(
      categoryId: provider.categoryId,
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
  String? get name => r'getPostCategoryListProvider';
}

/// See also [GetPostCategoryList].
class GetPostCategoryListProvider extends AutoDisposeAsyncNotifierProviderImpl<
    GetPostCategoryList, List<HomePostListModel>> {
  /// See also [GetPostCategoryList].
  GetPostCategoryListProvider({
    int? categoryId,
  }) : this._internal(
          () => GetPostCategoryList()..categoryId = categoryId,
          from: getPostCategoryListProvider,
          name: r'getPostCategoryListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getPostCategoryListHash,
          dependencies: GetPostCategoryListFamily._dependencies,
          allTransitiveDependencies:
              GetPostCategoryListFamily._allTransitiveDependencies,
          categoryId: categoryId,
        );

  GetPostCategoryListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categoryId,
  }) : super.internal();

  final int? categoryId;

  @override
  FutureOr<List<HomePostListModel>> runNotifierBuild(
    covariant GetPostCategoryList notifier,
  ) {
    return notifier.build(
      categoryId: categoryId,
    );
  }

  @override
  Override overrideWith(GetPostCategoryList Function() create) {
    return ProviderOverride(
      origin: this,
      override: GetPostCategoryListProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<GetPostCategoryList,
      List<HomePostListModel>> createElement() {
    return _GetPostCategoryListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPostCategoryListProvider &&
        other.categoryId == categoryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetPostCategoryListRef
    on AutoDisposeAsyncNotifierProviderRef<List<HomePostListModel>> {
  /// The parameter `categoryId` of this provider.
  int? get categoryId;
}

class _GetPostCategoryListProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GetPostCategoryList,
        List<HomePostListModel>> with GetPostCategoryListRef {
  _GetPostCategoryListProviderElement(super.provider);

  @override
  int? get categoryId => (origin as GetPostCategoryListProvider).categoryId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
