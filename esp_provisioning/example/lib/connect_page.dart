import 'package:esp_provisioning/esp_provisioning.dart';
import 'package:esp_provisioning_example/build_context_ext.dart';
import 'package:esp_provisioning_example/set_access_point_page.dart';
import 'package:flutter/material.dart';

class ConnectPage extends StatefulWidget {
  const ConnectPage({required this.provisioner, required this.device, super.key});

  final EspProvisioning provisioner;
  final EspBleDevice device;

  @override
  State<ConnectPage> createState() => _ConnectPageState();
}

class _ConnectPageState extends State<ConnectPage> {
  List<EspWifiAccessPoint> _accessPoints = [];
  bool _isConnected = false;
  bool _isBusy = false;
  bool get _enableDisconnect => _isConnected && !_isBusy;
  bool get _enableConnect => !_isConnected && !_isBusy;
  bool get _enableGetAccessPoints => _isConnected && !_isBusy;

  @override
  Widget build(BuildContext context) {
    final color = _enableDisconnect ? Colors.black : Colors.grey;

    return Scaffold(
      appBar: AppBar(title: Text(widget.device.name)),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: _enableConnect ? () => _connectTapped(context) : null,
                    child: const Text('Connect'),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: _enableDisconnect ? () => _disconnectTapped(context) : null,
                    child: const Text('Disconnect'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: ElevatedButton(
                onPressed: _enableGetAccessPoints ? () => _getAccessPoints(context) : null,
                child: const Text('Get Access Points'),
              ),
            ),
            ListTile(
              title: const Text('Enter Access Point Manually'),
              titleTextStyle: TextStyle(color: color),
              trailing: Icon(Icons.arrow_forward_ios, color: color),
              onTap: _enableDisconnect ? () => _showSetAccessPointPage(null) : null,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _accessPoints.length,
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    title: Text(_accessPoints[index].ssid),
                    subtitle: Text('RSSI: ${_accessPoints[index].rssi}, ${_accessPoints[index].security.name}'),
                    onTap: () => _showSetAccessPointPage(_accessPoints[index]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _connectTapped(BuildContext context) async {
    var message = 'Connected';
    setState(() => _isBusy = true);

    context.showSimpleSnackBar('Connecting to ${widget.device.name}');

    try {
      await widget.provisioner.connect(widget.device.name, null);
      setState(() => _isConnected = true);
    } on Exception catch (e) {
      message = 'Failed to connect: $e';
    }

    if (context.mounted) context.showSimpleSnackBar(message);
    setState(() => _isBusy = false);
  }

  Future<void> _disconnectTapped(BuildContext context) async {
    setState(() => _isBusy = true);

    try {
      await widget.provisioner.disconnect(widget.device.name);
      setState(() {
        _isConnected = false;
        _accessPoints = [];
      });
    } on Exception catch (e) {
      if (!context.mounted) return;
      context.showSimpleSnackBar('Failed to disconnect: $e');
    }

    setState(() => _isBusy = false);
  }

  Future<void> _getAccessPoints(BuildContext context) async {
    String message;

    context.showSimpleSnackBar('Getting access points');

    setState(() {
      _isBusy = true;
      _accessPoints = [];
    });

    try {
      final accessPoints = await widget.provisioner.getAccessPoints(widget.device.name);
      message = 'Found ${accessPoints.length} access points';
      setState(() => _accessPoints = accessPoints);
    } on Exception catch (e) {
      message = e.toString();
    }

    setState(() => _isBusy = false);

    if (context.mounted) context.showSimpleSnackBar(message);
  }

  void _showSetAccessPointPage(EspWifiAccessPoint? accessPoint) {
    final page = SetAccessPointPage(provisioner: widget.provisioner, device: widget.device, accessPoint: accessPoint);
    Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => page));
  }
}
