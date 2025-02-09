// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bluetooth.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getBluetoothDevicesHash() =>
    r'7d67812be9dd8f6c9e81b6c3079cfc01183dc526';

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

/// See also [getBluetoothDevices].
@ProviderFor(getBluetoothDevices)
const getBluetoothDevicesProvider = GetBluetoothDevicesFamily();

/// See also [getBluetoothDevices].
class GetBluetoothDevicesFamily
    extends Family<AsyncValue<List<BluetoothDevice>>> {
  /// See also [getBluetoothDevices].
  const GetBluetoothDevicesFamily();

  /// See also [getBluetoothDevices].
  GetBluetoothDevicesProvider call(
    Server server,
    String adapterName,
  ) {
    return GetBluetoothDevicesProvider(
      server,
      adapterName,
    );
  }

  @override
  GetBluetoothDevicesProvider getProviderOverride(
    covariant GetBluetoothDevicesProvider provider,
  ) {
    return call(
      provider.server,
      provider.adapterName,
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
  String? get name => r'getBluetoothDevicesProvider';
}

/// See also [getBluetoothDevices].
class GetBluetoothDevicesProvider
    extends AutoDisposeFutureProvider<List<BluetoothDevice>> {
  /// See also [getBluetoothDevices].
  GetBluetoothDevicesProvider(
    Server server,
    String adapterName,
  ) : this._internal(
          (ref) => getBluetoothDevices(
            ref as GetBluetoothDevicesRef,
            server,
            adapterName,
          ),
          from: getBluetoothDevicesProvider,
          name: r'getBluetoothDevicesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getBluetoothDevicesHash,
          dependencies: GetBluetoothDevicesFamily._dependencies,
          allTransitiveDependencies:
              GetBluetoothDevicesFamily._allTransitiveDependencies,
          server: server,
          adapterName: adapterName,
        );

  GetBluetoothDevicesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.server,
    required this.adapterName,
  }) : super.internal();

  final Server server;
  final String adapterName;

  @override
  Override overrideWith(
    FutureOr<List<BluetoothDevice>> Function(GetBluetoothDevicesRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetBluetoothDevicesProvider._internal(
        (ref) => create(ref as GetBluetoothDevicesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        server: server,
        adapterName: adapterName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<BluetoothDevice>> createElement() {
    return _GetBluetoothDevicesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetBluetoothDevicesProvider &&
        other.server == server &&
        other.adapterName == adapterName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, server.hashCode);
    hash = _SystemHash.combine(hash, adapterName.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetBluetoothDevicesRef
    on AutoDisposeFutureProviderRef<List<BluetoothDevice>> {
  /// The parameter `server` of this provider.
  Server get server;

  /// The parameter `adapterName` of this provider.
  String get adapterName;
}

class _GetBluetoothDevicesProviderElement
    extends AutoDisposeFutureProviderElement<List<BluetoothDevice>>
    with GetBluetoothDevicesRef {
  _GetBluetoothDevicesProviderElement(super.provider);

  @override
  Server get server => (origin as GetBluetoothDevicesProvider).server;
  @override
  String get adapterName => (origin as GetBluetoothDevicesProvider).adapterName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
