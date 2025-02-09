// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$serversHash() => r'0f61af0b3915ec5cbac1f2f773eaff120ec87989';

/// See also [servers].
@ProviderFor(servers)
final serversProvider = AutoDisposeFutureProvider<List<Server>>.internal(
  servers,
  name: r'serversProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$serversHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ServersRef = AutoDisposeFutureProviderRef<List<Server>>;
String _$serverApiHash() => r'83f6591867450c2b332172dbe909b8e7083d4eea';

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

/// See also [serverApi].
@ProviderFor(serverApi)
const serverApiProvider = ServerApiFamily();

/// See also [serverApi].
class ServerApiFamily extends Family<ShinoApi> {
  /// See also [serverApi].
  const ServerApiFamily();

  /// See also [serverApi].
  ServerApiProvider call(
    Server server,
  ) {
    return ServerApiProvider(
      server,
    );
  }

  @override
  ServerApiProvider getProviderOverride(
    covariant ServerApiProvider provider,
  ) {
    return call(
      provider.server,
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
  String? get name => r'serverApiProvider';
}

/// See also [serverApi].
class ServerApiProvider extends AutoDisposeProvider<ShinoApi> {
  /// See also [serverApi].
  ServerApiProvider(
    Server server,
  ) : this._internal(
          (ref) => serverApi(
            ref as ServerApiRef,
            server,
          ),
          from: serverApiProvider,
          name: r'serverApiProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$serverApiHash,
          dependencies: ServerApiFamily._dependencies,
          allTransitiveDependencies: ServerApiFamily._allTransitiveDependencies,
          server: server,
        );

  ServerApiProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.server,
  }) : super.internal();

  final Server server;

  @override
  Override overrideWith(
    ShinoApi Function(ServerApiRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ServerApiProvider._internal(
        (ref) => create(ref as ServerApiRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        server: server,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<ShinoApi> createElement() {
    return _ServerApiProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ServerApiProvider && other.server == server;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, server.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ServerApiRef on AutoDisposeProviderRef<ShinoApi> {
  /// The parameter `server` of this provider.
  Server get server;
}

class _ServerApiProviderElement extends AutoDisposeProviderElement<ShinoApi>
    with ServerApiRef {
  _ServerApiProviderElement(super.provider);

  @override
  Server get server => (origin as ServerApiProvider).server;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
