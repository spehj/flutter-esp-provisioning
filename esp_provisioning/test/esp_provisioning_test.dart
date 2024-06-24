import 'package:esp_provisioning/esp_provisioning.dart';
import 'package:esp_provisioning_platform_interface/esp_provisioning_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockEspProvisioningPlatform extends Mock
    with MockPlatformInterfaceMixin
    implements EspProvisioningPlatform {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('EspProvisioning', () {
    final subject = EspProvisioning();
    late EspProvisioningPlatform espProvisioningPlatform;

    setUp(() {
      espProvisioningPlatform = MockEspProvisioningPlatform();
      EspProvisioningPlatform.instance = espProvisioningPlatform;
    });

    test('platformName', () async {
      const platformName = 'test_platform';
      when(() => espProvisioningPlatform.platformName).thenReturn(platformName);
      expect(subject.platformName, equals(platformName));
    });

    test('scanForDevices', () async {
      const prefix = 'name prefix';
      const devices = ['device1', 'device2'];
      when(() => espProvisioningPlatform.scanForEspDevices(prefix)).thenAnswer((_) async => devices);
      expect(await subject.scanForDevices(prefix), devices);
    });

    test('stopScan', () {
      when(() => espProvisioningPlatform.stopEspDeviceScan()).thenAnswer((_) async {});
      expect(subject.stopScan(), completes);
    });
  });
}
