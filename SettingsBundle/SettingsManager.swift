import UIKit

struct SettingsManager {
    
    static var appVersion: String {
        get {
            if let appInfo = NSBundle.mainBundle().infoDictionary {
                let version = appInfo["CFBundleShortVersionString"] as NSString
                let build = appInfo["CFBundleVersion"] as NSString
                return "\(version) (\(build))"
            }
            return "1.0 (1)"
        }
    }
    
    static func updateSettingsBundleAppVersion() {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(appVersion, forKey: "app_version")
        defaults.synchronize()
    }
    
}
