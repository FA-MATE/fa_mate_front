// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'more_post_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectMorePostIdHash() => r'c25966e28aaef1f0aef3b1861e11241bdfa3fc6b';

/// See also [SelectMorePostId].
@ProviderFor(SelectMorePostId)
final selectMorePostIdProvider =
    NotifierProvider<SelectMorePostId, int>.internal(
  SelectMorePostId.new,
  name: r'selectMorePostIdProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectMorePostIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectMorePostId = Notifier<int>;
String _$postCountHash() => r'9cf8564095c374a439673687db7a98c990c9bd78';

/// See also [PostCount].
@ProviderFor(PostCount)
final postCountProvider = AutoDisposeNotifierProvider<PostCount, int>.internal(
  PostCount.new,
  name: r'postCountProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$postCountHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PostCount = AutoDisposeNotifier<int>;
String _$morePostIsLoadingHash() => r'6b36eedcc79768407eb86c924826294738c7b64b';

/// See also [MorePostIsLoading].
@ProviderFor(MorePostIsLoading)
final morePostIsLoadingProvider =
    AutoDisposeNotifierProvider<MorePostIsLoading, bool>.internal(
  MorePostIsLoading.new,
  name: r'morePostIsLoadingProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$morePostIsLoadingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MorePostIsLoading = AutoDisposeNotifier<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
