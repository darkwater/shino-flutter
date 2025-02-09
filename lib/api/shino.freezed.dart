// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shino.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BluetoothDevice _$BluetoothDeviceFromJson(Map<String, dynamic> json) {
  return _BluetoothDevice.fromJson(json);
}

/// @nodoc
mixin _$BluetoothDevice {
  String get address => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  int? get rssi => throw _privateConstructorUsedError;
  bool get isConnected => throw _privateConstructorUsedError;
  bool get isPaired => throw _privateConstructorUsedError;
  bool get isTrusted => throw _privateConstructorUsedError;
  bool get isBlocked => throw _privateConstructorUsedError;

  /// Serializes this BluetoothDevice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BluetoothDevice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BluetoothDeviceCopyWith<BluetoothDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BluetoothDeviceCopyWith<$Res> {
  factory $BluetoothDeviceCopyWith(
          BluetoothDevice value, $Res Function(BluetoothDevice) then) =
      _$BluetoothDeviceCopyWithImpl<$Res, BluetoothDevice>;
  @useResult
  $Res call(
      {String address,
      String? name,
      String? icon,
      int? rssi,
      bool isConnected,
      bool isPaired,
      bool isTrusted,
      bool isBlocked});
}

/// @nodoc
class _$BluetoothDeviceCopyWithImpl<$Res, $Val extends BluetoothDevice>
    implements $BluetoothDeviceCopyWith<$Res> {
  _$BluetoothDeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BluetoothDevice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? name = freezed,
    Object? icon = freezed,
    Object? rssi = freezed,
    Object? isConnected = null,
    Object? isPaired = null,
    Object? isTrusted = null,
    Object? isBlocked = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      rssi: freezed == rssi
          ? _value.rssi
          : rssi // ignore: cast_nullable_to_non_nullable
              as int?,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaired: null == isPaired
          ? _value.isPaired
          : isPaired // ignore: cast_nullable_to_non_nullable
              as bool,
      isTrusted: null == isTrusted
          ? _value.isTrusted
          : isTrusted // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlocked: null == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BluetoothDeviceImplCopyWith<$Res>
    implements $BluetoothDeviceCopyWith<$Res> {
  factory _$$BluetoothDeviceImplCopyWith(_$BluetoothDeviceImpl value,
          $Res Function(_$BluetoothDeviceImpl) then) =
      __$$BluetoothDeviceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address,
      String? name,
      String? icon,
      int? rssi,
      bool isConnected,
      bool isPaired,
      bool isTrusted,
      bool isBlocked});
}

/// @nodoc
class __$$BluetoothDeviceImplCopyWithImpl<$Res>
    extends _$BluetoothDeviceCopyWithImpl<$Res, _$BluetoothDeviceImpl>
    implements _$$BluetoothDeviceImplCopyWith<$Res> {
  __$$BluetoothDeviceImplCopyWithImpl(
      _$BluetoothDeviceImpl _value, $Res Function(_$BluetoothDeviceImpl) _then)
      : super(_value, _then);

  /// Create a copy of BluetoothDevice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? name = freezed,
    Object? icon = freezed,
    Object? rssi = freezed,
    Object? isConnected = null,
    Object? isPaired = null,
    Object? isTrusted = null,
    Object? isBlocked = null,
  }) {
    return _then(_$BluetoothDeviceImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      rssi: freezed == rssi
          ? _value.rssi
          : rssi // ignore: cast_nullable_to_non_nullable
              as int?,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaired: null == isPaired
          ? _value.isPaired
          : isPaired // ignore: cast_nullable_to_non_nullable
              as bool,
      isTrusted: null == isTrusted
          ? _value.isTrusted
          : isTrusted // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlocked: null == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$BluetoothDeviceImpl extends _BluetoothDevice {
  const _$BluetoothDeviceImpl(
      {required this.address,
      this.name,
      this.icon,
      this.rssi,
      required this.isConnected,
      required this.isPaired,
      required this.isTrusted,
      required this.isBlocked})
      : super._();

  factory _$BluetoothDeviceImpl.fromJson(Map<String, dynamic> json) =>
      _$$BluetoothDeviceImplFromJson(json);

  @override
  final String address;
  @override
  final String? name;
  @override
  final String? icon;
  @override
  final int? rssi;
  @override
  final bool isConnected;
  @override
  final bool isPaired;
  @override
  final bool isTrusted;
  @override
  final bool isBlocked;

  @override
  String toString() {
    return 'BluetoothDevice(address: $address, name: $name, icon: $icon, rssi: $rssi, isConnected: $isConnected, isPaired: $isPaired, isTrusted: $isTrusted, isBlocked: $isBlocked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothDeviceImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.rssi, rssi) || other.rssi == rssi) &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected) &&
            (identical(other.isPaired, isPaired) ||
                other.isPaired == isPaired) &&
            (identical(other.isTrusted, isTrusted) ||
                other.isTrusted == isTrusted) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, address, name, icon, rssi,
      isConnected, isPaired, isTrusted, isBlocked);

  /// Create a copy of BluetoothDevice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BluetoothDeviceImplCopyWith<_$BluetoothDeviceImpl> get copyWith =>
      __$$BluetoothDeviceImplCopyWithImpl<_$BluetoothDeviceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BluetoothDeviceImplToJson(
      this,
    );
  }
}

abstract class _BluetoothDevice extends BluetoothDevice {
  const factory _BluetoothDevice(
      {required final String address,
      final String? name,
      final String? icon,
      final int? rssi,
      required final bool isConnected,
      required final bool isPaired,
      required final bool isTrusted,
      required final bool isBlocked}) = _$BluetoothDeviceImpl;
  const _BluetoothDevice._() : super._();

  factory _BluetoothDevice.fromJson(Map<String, dynamic> json) =
      _$BluetoothDeviceImpl.fromJson;

  @override
  String get address;
  @override
  String? get name;
  @override
  String? get icon;
  @override
  int? get rssi;
  @override
  bool get isConnected;
  @override
  bool get isPaired;
  @override
  bool get isTrusted;
  @override
  bool get isBlocked;

  /// Create a copy of BluetoothDevice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BluetoothDeviceImplCopyWith<_$BluetoothDeviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
