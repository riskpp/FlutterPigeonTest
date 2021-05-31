import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mm_test_plugin2/mm_test_plugin2.dart';

void main() {
  const MethodChannel channel = MethodChannel('mm_test_plugin2');

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
    expect(await MmTestPlugin2.platformVersion, '42');
  });
}
