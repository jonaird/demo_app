import Flutter
import UIKit

public class SwiftPluginDemoPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "plugin_demo", binaryMessenger: registrar.messenger())
    let instance = SwiftPluginDemoPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if (call.method.elementsEqual("getStringFromNativeCode")){
      //converts arguments Map to NSDictionary
      let arguments = call.arguments as? NSDictionary
      let argument = arguments!["sampleMethodArgument"] as? String
      

      let swiftString = "This string was written in Swift " 
      let methodCall = "Method called: " + call.method + "\n"
      let methodArg = "Method argument: " + argument! + "\n"
      let string =  methodCall + methodArg + swiftString
      result(string)
    }
    
  }
}
