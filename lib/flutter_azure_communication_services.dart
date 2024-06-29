
import 'flutter_azure_communication_services_platform_interface.dart';

class FlutterAzureCommunicationServices {
  Future<String?> getPlatformVersion() {
    return FlutterAzureCommunicationServicesPlatform.instance.getPlatformVersion();
  }
}
