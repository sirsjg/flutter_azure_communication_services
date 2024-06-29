import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_azure_communication_services_platform_interface.dart';

/// An implementation of [FlutterAzureCommunicationServicesPlatform] that uses method channels.
class MethodChannelFlutterAzureCommunicationServices extends FlutterAzureCommunicationServicesPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_azure_communication_services');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
