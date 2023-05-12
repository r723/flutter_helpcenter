import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'zendesk_helpcenter_method_channel.dart';

abstract class ZendeskHelpcenterPlatform extends PlatformInterface {
  /// Constructs a ZendeskFlutterCombinationPlatform.
  ZendeskHelpcenterPlatform() : super(token: _token);

  static final Object _token = Object();

  static ZendeskHelpcenterPlatform _instance = MethodChannelZendeskHelpcenter();

  /// The default instance of [ZendeskHelpcenterPlatform] to use.
  ///
  /// Defaults to [MethodChannelZendeskHelpcenter].
  static ZendeskHelpcenterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ZendeskHelpcenterPlatform] when
  /// they register themselves.
  static set instance(ZendeskHelpcenterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
