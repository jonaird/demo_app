import 'dart:async';

import 'package:flutter/services.dart';

class PluginDemo {
  static const MethodChannel _channel =
      const MethodChannel('plugin_demo');

  static Future<String> getStringFromNativeCode(String arg) async {
    //arguments must be a Map object
    Map<String,String> arguments ={"sampleMethodArgument":arg};
    final String string = await _channel.invokeMethod('getStringFromNativeCode', arguments);
    return string;
  }
}
