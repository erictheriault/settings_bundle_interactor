import Foundation

struct SettingsBundleInteractor {

    static var appVersion: String {
        let appInfo = Bundle.main.infoDictionary!
        let version = appInfo["CFBundleShortVersionString"] as! NSString
        let build = appInfo["CFBundleVersion"] as! NSString
        return "\(version) (\(build))"
    }

    static func updateSettingsBundleAppVersion() {
        let defaults = UserDefaults.standard
        defaults.set(appVersion, forKey: "app_version")
        defaults.synchronize()
    }
    
}
               
