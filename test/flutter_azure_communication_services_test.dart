import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_azure_communication_services/flutter_azure_communication_services.dart';
import 'package:flutter_azure_communication_services/flutter_azure_communication_services_platform_interface.dart';
import 'package:flutter_azure_communication_services/flutter_azure_communication_services_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterAzureCommunicationServicesPlatform
    with MockPlatformInterfaceMixin
    implements FlutterAzureCommunicationServicesPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterAzureCommunicationServicesPlatform initialPlatform = FlutterAzureCommunicationServicesPlatform.instance;

  test('$MethodChannelFlutterAzureCommunicationServices is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterAzureCommunicationServices>());
  });

  test('getPlatformVersion', () async {
    FlutterAzureCommunicationServices flutterAzureCommunicationServicesPlugin = FlutterAzureCommunicationServices();
    MockFlutterAzureCommunicationServicesPlatform fakePlatform = MockFlutterAzureCommunicationServicesPlatform();
    FlutterAzureCommunicationServicesPlatform.instance = fakePlatform;

    expect(await flutterAzureCommunicationServicesPlugin.getPlatformVersion(), '42');
  });
}
