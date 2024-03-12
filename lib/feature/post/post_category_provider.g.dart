// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_category_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postUploadCategoryIndexHash() =>
    r'a754786ab6f83354156016ff294b41eea66694ea';

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

abstract class _$PostUploadCategoryIndex extends BuildlessNotifier<int> {
  late final int index;

  int build(
    int index,
  );
}

/// See also [PostUploadCategoryIndex].
@ProviderFor(PostUploadCategoryIndex)
const postUploadCategoryIndexProvider = PostUploadCategoryIndexFamily();

/// See also [PostUploadCategoryIndex].
class PostUploadCategoryIndexFamily extends Family<int> {
  /// See also [PostUploadCategoryIndex].
  const PostUploadCategoryIndexFamily();

  /// See also [PostUploadCategoryIndex].
  PostUploadCategoryIndexProvider call(
    int index,
  ) {
    return PostUploadCategoryIndexProvider(
      index,
    );
  }

  @override
  PostUploadCategoryIndexProvider getProviderOverride(
    covariant PostUploadCategoryIndexProvider provider,
  ) {
    return call(
      provider.index,
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
  String? get name => r'postUploadCategoryIndexProvider';
}

/// See also [PostUploadCategoryIndex].
class PostUploadCategoryIndexProvider
    extends NotifierProviderImpl<PostUploadCategoryIndex, int> {
  /// See also [PostUploadCategoryIndex].
  PostUploadCategoryIndexProvider(
    int index,
  ) : this._internal(
          () => PostUploadCategoryIndex()..index = index,
          from: postUploadCategoryIndexProvider,
          name: r'postUploadCategoryIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postUploadCategoryIndexHash,
          dependencies: PostUploadCategoryIndexFamily._dependencies,
          allTransitiveDependencies:
              PostUploadCategoryIndexFamily._allTransitiveDependencies,
          index: index,
        );

  PostUploadCategoryIndexProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.index,
  }) : super.internal();

  final int index;

  @override
  int runNotifierBuild(
    covariant PostUploadCategoryIndex notifier,
  ) {
    return notifier.build(
      index,
    );
  }

  @override
  Override overrideWith(PostUploadCategoryIndex Function() create) {
    return ProviderOverride(
      origin: this,
      override: PostUploadCategoryIndexProvider._internal(
        () => create()..index = index,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        index: index,
      ),
    );
  }

  @override
  NotifierProviderElement<PostUploadCategoryIndex, int> createElement() {
    return _PostUploadCategoryIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostUploadCategoryIndexProvider && other.index == index;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PostUploadCategoryIndexRef on NotifierProviderRef<int> {
  /// The parameter `index` of this provider.
  int get index;
}

class _PostUploadCategoryIndexProviderElement
    extends NotifierProviderElement<PostUploadCategoryIndex, int>
    with PostUploadCategoryIndexRef {
  _PostUploadCategoryIndexProviderElement(super.provider);

  @override
  int get index => (origin as PostUploadCategoryIndexProvider).index;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
