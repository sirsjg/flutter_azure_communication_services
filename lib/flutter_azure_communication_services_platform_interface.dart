import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_azure_communication_services_method_channel.dart';

abstract class FlutterAzureCommunicationServicesPlatform extends PlatformInterface {
  /// Constructs a FlutterAzureCommunicationServicesPlatform.
  FlutterAzureCommunicationServicesPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterAzureCommunicationServicesPlatform _instance = MethodChannelFlutterAzureCommunicationServices();

  /// The default instance of [FlutterAzureCommunicationServicesPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterAzureCommunicationServices].
  static FlutterAzureCommunicationServicesPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterAzureCommunicationServicesPlatform] when
  /// they register themselves.
  static set instance(FlutterAzureCommunicationServicesPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
