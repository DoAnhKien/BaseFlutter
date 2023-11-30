import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
    let baseChanel = FlutterMethodChannel(name: "app_get_flavor", binaryMessenger: controller.binaryMessenger)
     baseChanel.setMethodCallHandler({ [weak self]
            (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
            switch (call.method) {
            case "getFlavor" :
                let flavor = Bundle.main.infoDictionary?["App-Flavor"] as? String
                result(flavor)
                break
            default:
                result(FlutterMethodNotImplemented)
                break
            }
            result(FlutterMethodNotImplemented)
        })
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
