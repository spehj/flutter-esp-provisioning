// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'esp_ble_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EspBleDevice _$EspBleDeviceFromJson(Map<String, dynamic> json) =>
    _EspBleDevice(
      name: json['name'] as String,
      rssi: (json['rssi'] as num).toInt(),
    );

Map<String, dynamic> _$EspBleDeviceToJson(_EspBleDevice instance) =>
    <String, dynamic>{'name': instance.name, 'rssi': instance.rssi};
