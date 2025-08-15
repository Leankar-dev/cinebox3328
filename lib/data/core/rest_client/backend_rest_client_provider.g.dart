// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backend_rest_client_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(backendRestClientProvider)
const backendRestClientProviderProvider = BackendRestClientProviderProvider._();

final class BackendRestClientProviderProvider
    extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  const BackendRestClientProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'backendRestClientProviderProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$backendRestClientProviderHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return backendRestClientProvider(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$backendRestClientProviderHash() =>
    r'65a79d66b9657f990dcc47cac99e2a8227695a98';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
