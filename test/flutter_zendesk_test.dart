import 'package:flutter_test/flutter_test.dart';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:zendesk_helpcenter/zendesk_helpcenter.dart';
import 'package:zendesk_helpcenter/zendesk_helpcenter_method_channel.dart';
import 'package:zendesk_helpcenter/zendesk_helpcenter_platform.dart';

class MockZendeskFlutterCombinationPlatform
    with MockPlatformInterfaceMixin
    implements ZendeskHelpcenterPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ZendeskHelpcenterPlatform initialPlatform =
      ZendeskHelpcenterPlatform.instance;

  test('$MethodChannelZendeskHelpcenter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelZendeskHelpcenter>());
  });

  test('getPlatformVersion', () async {
    ZendeskHelpcenter zendeskFlutterCombinationPlugin = ZendeskHelpcenter();
    MockZendeskFlutterCombinationPlatform fakePlatform =
        MockZendeskFlutterCombinationPlatform();
    ZendeskHelpcenterPlatform.instance = fakePlatform;

    expect(await zendeskFlutterCombinationPlugin.getPlatformVersion(), '42');
  });
}
