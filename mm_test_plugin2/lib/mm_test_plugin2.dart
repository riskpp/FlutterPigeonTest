
import 'dart:async';

import 'package:flutter/services.dart';

class MmTestPlugin2 {
  static const MethodChannel _channel =
      const MethodChannel('mm_test_plugin2');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
