import XCTest
import SwiftUI
@testable import EasyDevices

extension PreviewDevice: Equatable {}

final class EasyDevicesTests: XCTestCase {
    
    func testMacDevicesInitializeCorrectly() {
        let mac = Device.mac
        
        XCTAssertEqual(mac.rawValue,  PreviewDevice(rawValue: "Mac"))
    }
    
    func testPhoneDevicesInitializeCorrectly() {
        let phones: [Device] = [.iPhone7,
                                .iPhone7Plus,
                                .iPhone8,
                                .iPhone8Plus,
                                .iPhoneSE,
                                .iPhoneX,
                                .iPhoneXs,
                                .iPhoneXsMax,
                                .iPhoneXʀ]
        let rawPhoneStrings = ["iPhone 7",
                               "iPhone 7 Plus",
                               "iPhone 8",
                               "iPhone 8 Plus",
                               "iPhone SE",
                               "iPhone X",
                               "iPhone Xs",
                               "iPhone Xs Max",
                               "iPhone Xʀ"]
        phones.enumerated().forEach {
            XCTAssertEqual($0.element.rawValue,  PreviewDevice(rawValue: rawPhoneStrings[$0.offset]))
        }
    }
    
    func testTabletDevicesInitializeCorrectly() {
        let tablets: [Device] = [.iPadMini_Gen4,
                                 .iPadMini_Gen5,
                                 .iPad_Gen5,
                                 .iPad_Gen6,
                                 .iPadAir_Gen2,
                                 .iPadAir_Gen3,
                                 .iPadPro_9_7in,
                                 .iPadPro_10_5in,
                                 .iPadPro_11in,
                                 .iPadPro_12_9in,
                                 .iPadPro_12_9in_Gen2,
                                 .iPadPro_12_9in_Gen3]
        let rawTabletStrings = ["iPad mini 4",
                                "iPad mini (5th generation)",
                                "iPad (5th generation)",
                                "iPad (6th generation)",
                                "iPad Air 2",
                                "iPad Air (3rd generation)",
                                "iPad Pro (9.7-inch)",
                                "iPad Pro (10.5-inch)",
                                "iPad Pro (11-inch)",
                                "iPad Pro (12.9-inch)",
                                "iPad Pro (12.9-inch) (2nd generation)",
                                "iPad Pro (12.9-inch) (3rd generation)"]
        tablets.enumerated().forEach {
            XCTAssertEqual($0.element.rawValue,  PreviewDevice(rawValue: rawTabletStrings[$0.offset]))
        }
    }
    
    func testTVDevicesInitializeCorrectly() {
        let tvs: [Device] = [.appleTV,
                             .appleTV_4K,
                             .appleTV_4K_1080pRes]
        let rawTVStrings = ["Apple TV",
                            "Apple TV 4K",
                            "Apple TV 4K (at 1080p)"]
        tvs.enumerated().forEach {
            XCTAssertEqual($0.element.rawValue,  PreviewDevice(rawValue: rawTVStrings[$0.offset]))
        }
    }
    
    func testWatchDevicesInitializeCorrectly() {
        let tvs: [Device] = [.appleWatch_Series_2_38mm,
                             .appleWatch_Series_2_42mm,
                             .appleWatch_Series_3_38mm,
                             .appleWatch_Series_3_42mm,
                             .appleWatch_Series_4_40mm,
                             .appleWatch_Series_4_44mm]
        let rawTVStrings = ["Apple Watch Series 2 - 38mm",
                            "Apple Watch Series 2 - 42mm",
                            "Apple Watch Series 3 - 38mm",
                            "Apple Watch Series 3 - 42mm",
                            "Apple Watch Series 4 - 40mm",
                            "Apple Watch Series 4 - 44mm"]
        tvs.enumerated().forEach {
            XCTAssertEqual($0.element.rawValue,  PreviewDevice(rawValue: rawTVStrings[$0.offset]))
        }
    }
}
