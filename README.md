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

Valid `lane_name`:

- cocoapods_swift
- cocoapods_objc
- carthage_swift
- carthage_objc
- binary_framework_swift
- binary_framework_objc
- swift_package_manager

## CI

TBD