# Integration Test Cases for LINE SDK Swift

## Locally

This repo verifies the integration for [LINE SDK Swift](https://github.com/line/line-sdk-ios-swift). It checks and ensures the integrating methods below:

- CocoaPods in Swift project
- CocoaPods in Objective-C project
- Carthage in Swift project
- Carthage in Objective-C project
- Binary Framework in Swift project
- Binary Framework in Objective-C project
- Swift Package Manager in Swift project

Each integration has one fastlane command. Once prepared the environment:

```sh
gem install bundler
bundle install
```

You can then run the command below to check the result:

```sh
bundle exec fastlane ${lane_name}
```

## Status

Valid lane tasks and the [CI status](https://travis-ci.org/onevcat/LineSDK-Integration/):

| Task | Status |
| :---         |     :---:      |
| cocoapods_swift | ![](http://badges.herokuapp.com/travis/onevcat/LineSDK-Integration?label=build&env=LANE=cocoapods_swift) |
| cocoapods_objc | ![](http://badges.herokuapp.com/travis/onevcat/LineSDK-Integration?label=build&env=LANE=cocoapods_objc) |
| carthage_swift | ![](http://badges.herokuapp.com/travis/onevcat/LineSDK-Integration?label=build&env=LANE=carthage_swift)
| carthage_objc | ![](http://badges.herokuapp.com/travis/onevcat/LineSDK-Integration?label=build&env=LANE=carthage_objc)
| binary_framework_swift | ![](http://badges.herokuapp.com/travis/onevcat/LineSDK-Integration?label=build&env=LANE=binary_framework_swift)
| binary_framework_objc | ![](http://badges.herokuapp.com/travis/onevcat/LineSDK-Integration?label=build&env=LANE=binary_framework_objc)
| swift_package_manager | ![](http://badges.herokuapp.com/travis/onevcat/LineSDK-Integration?label=build&env=LANE=swift_package_manager)