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
String _$postDetailDataHash() => r'627ec0e3802c85c4a8a1ade9384eb12997385e0c';

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
