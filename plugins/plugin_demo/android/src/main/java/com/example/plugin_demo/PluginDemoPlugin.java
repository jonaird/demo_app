package com.example.plugin_demo;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** PluginDemoPlugin */
public class PluginDemoPlugin implements MethodCallHandler {
  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "plugin_demo");
    channel.setMethodCallHandler(new PluginDemoPlugin());
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    if (call.method.equals("getStringFromNativeCode")) {

      result.success(
        "Method called: " + call.method +"\n"+
        "Method argument: "+call.argument("sampleMethodArgument")+ "\n"+
      
      "This string was written in Java");
    } else {
      result.notImplemented();
    }
  }
}
