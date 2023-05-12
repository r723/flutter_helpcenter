import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zendesk_helpcenter/zendesk_helpcenter_method_channel.dart';

void main() {
  MethodChannelZendeskHelpcenter platform = MethodChannelZendeskHelpcenter();

  const MethodChannel channel = MethodChannel('zendesk_flutter_combination');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
