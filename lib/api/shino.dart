// ignore_for_file: invalid_annotation_target

import 'package:dio/dio.dart' hide Headers;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'shino.g.dart';
part 'shino.freezed.dart';

@RestApi()
abstract class ShinoApi {
  factory ShinoApi(Dio dio, {String? baseUrl}) = _ShinoApi;

  @GET("/bluetooth/adapters")
  Future<List<String>> getBluetoothAdapters();

  @GET("/bluetooth/adapters/{name}/devices")
  Future<List<BluetoothDevice>> getBluetoothDevices(
    @Path("name") String adapterName,
  );

  @POST("/bluetooth/adapters/{name}/devices/{address}/connect")
  Future<void> connectBluetoothDevice(
    @Path("name") String adapterName,
    @Path("address") String deviceAddress,
  );

  @POST("/bluetooth/adapters/{name}/devices/{address}/disconnect")
  Future<void> disconnectBluetoothDevice(
    @Path("name") String adapterName,
    @Path("address") String deviceAddress,
  );

  @POST("/bluetooth/adapters/{name}/devices/{address}/pair")
  Future<void> pairBluetoothDevice(
    @Path("name") String adapterName,
    @Path("address") String deviceAddress,
  );

  @POST("/bluetooth/adapters/{name}/devices/{address}/unpair")
  Future<void> unpairBluetoothDevice(
    @Path("name") String adapterName,
    @Path("address") String deviceAddress,
  );

  @POST("/bluetooth/adapters/{name}/devices/{address}/block")
  Future<void> blockBluetoothDevice(
    @Path("name") String adapterName,
    @Path("address") String deviceAddress,
  );

  @POST("/bluetooth/adapters/{name}/devices/{address}/unblock")
  Future<void> unblockBluetoothDevice(
    @Path("name") String adapterName,
    @Path("address") String deviceAddress,
  );

  @POST("/bluetooth/adapters/{name}/devices/{address}/trust")
  Future<void> trustBluetoothDevice(
    @Path("name") String adapterName,
    @Path("address") String deviceAddress,
  );

  @POST("/bluetooth/adapters/{name}/devices/{address}/untrust")
  Future<void> untrustBluetoothDevice(
    @Path("name") String adapterName,
    @Path("address") String deviceAddress,
  );
}

@freezed
class BluetoothDevice with _$BluetoothDevice {
  const BluetoothDevice._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory BluetoothDevice({
    required String address,
    String? name,
    String? icon,
    int? rssi,
    required bool isConnected,
    required bool isPaired,
    required bool isTrusted,
    required bool isBlocked,
  }) = _BluetoothDevice;

  factory BluetoothDevice.fromJson(Map<String, Object?> json) =>
      _$BluetoothDeviceFromJson(json);
}
