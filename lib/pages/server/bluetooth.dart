import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shino/api/shino.dart';
import 'package:shino/server.dart';

part 'bluetooth.g.dart';

@riverpod
Future<List<BluetoothDevice>> getBluetoothDevices(
  Ref ref,
  Server server,
  String adapterName,
) async {
  final api = ref.read(serverApiProvider(server));
  return api.getBluetoothDevices(adapterName);
}

class BluetoothPage extends ConsumerWidget {
  final Server server;

  const BluetoothPage(this.server, {super.key});

  static Route route(Server server) =>
      MaterialPageRoute<void>(builder: (_) => BluetoothPage(server));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Bluetooth"),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Opacity(
                opacity: 0.4,
                child: Text("(${server.name})"),
              ),
            ),
          ],
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () =>
            ref.refresh(getBluetoothDevicesProvider(server, "hci0").future),
        child: _DeviceList(server, "hci0"),
      ),
    );
  }
}

class _DeviceList extends ConsumerWidget {
  final Server server;
  final String adapterName;

  const _DeviceList(
    this.server,
    this.adapterName,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final devicesRef =
        ref.watch(getBluetoothDevicesProvider(server, adapterName));

    if (devicesRef.isLoading && !devicesRef.hasValue) {
      return const Center(child: CircularProgressIndicator());
    }

    if (devicesRef.hasError) {
      return Center(
        child: Text(devicesRef.error.toString()),
      );
    }

    final devices = devicesRef.value!.toList(growable: false);

    devices.sort((a, b) {
      final icon = (a.icon ?? "zzzz").compareTo(b.icon ?? "zzzz");
      if (icon != 0) {
        return icon;
      }

      final name = (a.name ?? a.address).compareTo(b.name ?? a.address);
      if (name != 0) {
        return name;
      }

      return a.address.compareTo(b.address);
    });

    return ListView.builder(
      itemCount: devices.length,
      itemBuilder: (context, index) {
        final device = devices[index];
        return _DeviceTile(
          server,
          adapterName,
          device,
          key: ValueKey(device.address),
        );
      },
    );
  }
}

class _DeviceTile extends ConsumerStatefulWidget {
  final Server server;
  final String adapterName;
  final BluetoothDevice device;

  const _DeviceTile(this.server, this.adapterName, this.device, {super.key});

  @override
  ConsumerState<_DeviceTile> createState() => _DeviceTileState();
}

class _DeviceTileState extends ConsumerState<_DeviceTile> {
  bool _loading = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: _loading
          ? SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            )
          : bluetoothDeviceIcon(widget.device.icon),
      title: Text(widget.device.name ?? widget.device.address),
      subtitle: widget.device.icon != null
          ? Text(widget.device.icon.toString())
          : null,
      selected: widget.device.isConnected,
      trailing: PopupMenuButton<String>(
        itemBuilder: (context) => [
          PopupMenuItem(
            value: widget.device.isTrusted ? 'untrust' : 'trust',
            child: ListTile(
              leading: Icon(widget.device.isTrusted
                  ? Icons.check_box
                  : Icons.check_box_outline_blank),
              title: Text(widget.device.isTrusted ? 'Trusted' : 'Trust'),
            ),
          ),
          PopupMenuItem(
            value: widget.device.isBlocked ? 'unblock' : 'block',
            child: ListTile(
              leading: Icon(widget.device.isBlocked
                  ? Icons.check_box
                  : Icons.check_box_outline_blank),
              title: Text(widget.device.isTrusted ? 'Blocked' : 'Block'),
            ),
          ),
          if (widget.device.isPaired)
            PopupMenuItem(
              value: 'unpair',
              child: ListTile(
                leading: Icon(Icons.close),
                title: Text('Unpair'),
              ),
            )
          else
            PopupMenuItem(
              value: 'pair',
              child: ListTile(
                leading: Icon(Icons.link),
                title: Text('Pair'),
              ),
            ),
        ],
        onSelected: (value) async {
          final api = ref.read(serverApiProvider(widget.server));
          await switch (value) {
            "trust" => api.trustBluetoothDevice(
                widget.adapterName,
                widget.device.address,
              ),
            "untrust" => api.untrustBluetoothDevice(
                widget.adapterName,
                widget.device.address,
              ),
            "block" => api.blockBluetoothDevice(
                widget.adapterName,
                widget.device.address,
              ),
            "unblock" => api.unblockBluetoothDevice(
                widget.adapterName,
                widget.device.address,
              ),
            "pair" => api.pairBluetoothDevice(
                widget.adapterName,
                widget.device.address,
              ),
            "unpair" => api.unpairBluetoothDevice(
                widget.adapterName,
                widget.device.address,
              ),
            _ => throw UnimplementedError(),
          };
          ref.invalidate(
            getBluetoothDevicesProvider(widget.server, widget.adapterName),
          );
        },
      ),
      onTap: () async {
        final api = ref.read(serverApiProvider(widget.server));

        setState(() => _loading = true);

        try {
          if (widget.device.isConnected) {
            await api.disconnectBluetoothDevice(
              widget.adapterName,
              widget.device.address,
            );
          } else {
            await api.connectBluetoothDevice(
              widget.adapterName,
              widget.device.address,
            );
          }

          ref.invalidate(
            getBluetoothDevicesProvider(widget.server, widget.adapterName),
          );
        } finally {
          setState(() => _loading = false);
        }
      },
    );
  }
}

Widget bluetoothDeviceIcon(String? icon) {
  if (icon == null) {
    return const SizedBox();
  }

  return switch (icon) {
    "input-gaming" => Icon(Icons.gamepad),
    "input-keyboard" => Icon(Icons.keyboard),
    "phone" => Icon(Icons.smartphone),
    "audio-card" => Icon(Icons.speaker),
    "audio-headphones" => Icon(Icons.headphones),
    _ => const SizedBox(),
  };
}
