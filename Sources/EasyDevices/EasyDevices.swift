import SwiftUI

/// Using Device in practice:
///
/// struct YourView_Previews: PreviewProvider {
///     static let devices = [Device.iPhoneXs, .iPhoneSE].previews
///     // OR
///     static let devices = PreviewDevice.previews(from: [.iPhoneXs, .iPhoneSE])
///
///     static var previews: some View {
///         ForEach(devices) { device in
///             // Do your device setup here
///         }
///     }
/// }

enum Device: RawRepresentable {
    typealias RawValue = PreviewDevice
    
    case mac
    
    case iPhone7
    case iPhone7Plus
    case iPhone8
    case iPhone8Plus
    case iPhoneSE
    case iPhoneX
    case iPhoneXs
    case iPhoneXsMax
    case iPhoneXʀ
    
    case iPadMini_Gen4
    case iPadMini_Gen5
    case iPad_Gen5
    case iPad_Gen6
    case iPadAir_Gen2
    case iPadAir_Gen3
    case iPadPro_9_7in
    case iPadPro_10_5in
    case iPadPro_11in
    case iPadPro_12_9in
    case iPadPro_12_9in_Gen2
    case iPadPro_12_9in_Gen3

    case appleTV
    case appleTV_4K
    case appleTV_4K_1080pRes
    
    case appleWatch_Series_2_38mm
    case appleWatch_Series_2_42mm
    case appleWatch_Series_3_38mm
    case appleWatch_Series_3_42mm
    case appleWatch_Series_4_40mm
    case appleWatch_Series_4_44mm
    
    var rawValue: RawValue {
        switch self {
        case .mac: return PreviewDevice(rawValue: "Mac")
            
        case .iPhone7: return PreviewDevice(rawValue: "iPhone 7")
        case .iPhone7Plus: return PreviewDevice(rawValue: "iPhone 7 Plus")
        case .iPhone8: return PreviewDevice(rawValue: "iPhone 8")
        case .iPhone8Plus: return PreviewDevice(rawValue: "iPhone 8 Plus")
        case .iPhoneSE: return PreviewDevice(rawValue: "iPhone SE")
        case .iPhoneX: return PreviewDevice(rawValue: "iPhone X")
        case .iPhoneXs: return PreviewDevice(rawValue: "iPhone Xs")
        case .iPhoneXsMax: return PreviewDevice(rawValue: "iPhone Xs Max")
        case .iPhoneXʀ: return PreviewDevice(rawValue: "iPhone Xʀ")
            
        case .iPadMini_Gen4: return PreviewDevice(rawValue: "iPad mini 4")
        case .iPadMini_Gen5: return PreviewDevice(rawValue: "iPad mini (5th generation)")
        case .iPad_Gen5: return PreviewDevice(rawValue: "iPad (5th generation)")
        case .iPad_Gen6: return PreviewDevice(rawValue: "iPad (6th generation)")
        case .iPadAir_Gen2: return PreviewDevice(rawValue: "iPad Air 2")
        case .iPadAir_Gen3: return PreviewDevice(rawValue: "iPad Air (3rd generation)")
        case .iPadPro_9_7in: return PreviewDevice(rawValue: "iPad Pro (9.7-inch)")
        case .iPadPro_12_9in: return PreviewDevice(rawValue: "iPad Pro (12.9-inch)")
        case .iPadPro_10_5in: return PreviewDevice(rawValue: "iPad Pro (10.5-inch)")
        case .iPadPro_11in: return PreviewDevice(rawValue: "iPad Pro (11-inch)")
        case .iPadPro_12_9in_Gen2: return PreviewDevice(rawValue: "iPad Pro (12.9-inch) (2nd generation)")
        case .iPadPro_12_9in_Gen3: return PreviewDevice(rawValue: "iPad Pro (12.9-inch) (3rd generation)")
            
        case .appleTV: return PreviewDevice(rawValue: "Apple TV")
        case .appleTV_4K: return PreviewDevice(rawValue: "Apple TV 4K")
        case .appleTV_4K_1080pRes: return PreviewDevice(rawValue: "Apple TV 4K (at 1080p)")
            
        case .appleWatch_Series_2_38mm: return PreviewDevice(rawValue: "Apple Watch Series 2 - 38mm")
        case .appleWatch_Series_2_42mm: return PreviewDevice(rawValue: "Apple Watch Series 2 - 42mm")
        case .appleWatch_Series_3_38mm: return PreviewDevice(rawValue: "Apple Watch Series 3 - 38mm")
        case .appleWatch_Series_3_42mm: return PreviewDevice(rawValue: "Apple Watch Series 3 - 42mm")
        case .appleWatch_Series_4_40mm: return PreviewDevice(rawValue: "Apple Watch Series 4 - 40mm")
        case .appleWatch_Series_4_44mm: return PreviewDevice(rawValue: "Apple Watch Series 4 - 44mm")
        }
    }
    
    init?(rawValue: PreviewDevice) {
        let value = rawValue.rawValue
        switch value {
        case "Mac": self = .mac
            
        case "iPhone 7": self = .iPhone7
        case "iPhone 7 Plus": self = .iPhone7Plus
        case "iPhone 8": self = .iPhone8
        case "iPhone 8 Plus": self = .iPhone8Plus
        case "iPhone SE": self = .iPhoneSE
        case "iPhone X": self = .iPhoneX
        case "iPhone Xs": self = .iPhoneXs
        case "iPhone Xs Max": self = .iPhoneXsMax
        case "iPhone Xʀ": self = .iPhoneXʀ
            
        case "iPad mini 4": self = .iPadMini_Gen4
        case "iPad mini (5th generation)": self = .iPadMini_Gen5
        case "iPad (5th generation)": self = .iPad_Gen5
        case "iPad (6th generation)": self = .iPad_Gen6
        case "iPad Air 2": self = .iPadAir_Gen2
        case "iPad Air (3rd generation)": self = .iPadAir_Gen3
        case "iPad Pro (9.7-inch)": self = .iPadPro_9_7in
        case "iPad Pro (10.5-inch)": self = .iPadPro_10_5in
        case "iPad Pro (11-inch)": self = .iPadPro_11in
        case "iPad Pro (12.9-inch)": self = .iPadPro_12_9in
        case "iPad Pro (12.9-inch) (2nd generation)": self = .iPadPro_12_9in_Gen2
        case "iPad Pro (12.9-inch) (3rd generation)": self = .iPadPro_12_9in_Gen3
            
        case "Apple TV": self = .appleTV
        case "Apple TV 4K": self = .appleTV_4K
        case "Apple TV 4K (at 1080p)": self = .appleTV_4K_1080pRes
            
        case "Apple Watch Series 2 - 38mm": self = .appleWatch_Series_2_38mm
        case "Apple Watch Series 2 - 42mm": self = .appleWatch_Series_2_42mm
        case "Apple Watch Series 3 - 38mm": self = .appleWatch_Series_3_38mm
        case "Apple Watch Series 3 - 42mm": self = .appleWatch_Series_3_42mm
        case "Apple Watch Series 4 - 40mm": self = .appleWatch_Series_4_40mm
        case "Apple Watch Series 4 - 44mm": self = .appleWatch_Series_4_44mm
        default: return nil
        }
    }
}

/// Convenience
extension Array where Element == Device {
    var previews: [PreviewDevice] {
        return self.map { $0.rawValue }
    }
}

/// Convenience
extension PreviewDevice {
    static func previews(from devices: [Device]) -> [PreviewDevice] {
        return devices.map { $0.rawValue }
    }
}

/// Required by SwiftUI's ForEach method
extension PreviewDevice: Identifiable {
    public var id: String { return self.rawValue }
}
