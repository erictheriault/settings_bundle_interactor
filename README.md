# Settings Bundle #

A starter example for adding a custom Settings bundle to an iOS app.

### Setup ###

Add both the `Settings.bundle` and `SettingsManager.swift` files to your project.

### Usage ###

Adding the Settings Bundle files to your project will add a simple bundle with a version tag to your app's Settings. To ensure that the version stays up to date, add the following to your app delegate's `didFinishLaunchingWithOptions` method:

```
SettingsManager.updateSettingsBundleAppVersion()
```

Feel free to add other items to the `Settings.bundle` file and more convenience methods to `SettingsManager.swift` for adding or retrieving information from the bundle.