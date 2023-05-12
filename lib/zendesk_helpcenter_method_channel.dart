import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:zendesk_helpcenter/zendesk_helpcenter_platform.dart';

/// An implementation of [MethodChannelZendeskHelpcenter] that uses method channels.
class MethodChannelZendeskHelpcenter extends ZendeskHelpcenterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_helpcenter');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
