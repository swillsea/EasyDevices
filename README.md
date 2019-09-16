# EasyDevices

Easily access SwiftUI's preview devices without having to remember or repeatedly type out the device names manually.

## Add to your project
Follow Apple's guidelines [here](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app) if you're unfamiliar with the package management system in Xcode 11+

## Usage
You can use either syntax to create your devices:
```swift
static let devices = [Device.iPhoneXs, .iPhoneSE].previews
```
```swift 
static let devices = PreviewDevice.previews(from: [.iPhoneXs, .iPhoneSE])
```

From there, you're good to go:
```swift
struct YourView_Previews: PreviewProvider {
     static var previews: some View {
         ForEach(devices) { device in
             // Do your device setup here
         }
     }
}
```
