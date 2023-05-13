import ComposableArchitecture
import Foundation
import SwiftUI
import XCTestDynamicOverlay

public struct UserDefaultsClient {
    public var arrayForKey: @Sendable (_ defaults: UserDefaults, _ key: String) -> [Any]?
    public var boolForKey: @Sendable (_ defaults: UserDefaults, _ key: String) -> Bool
    public var dataForKey: @Sendable (_ defaults: UserDefaults, _ key: String) -> Data?
    public var doubleForKey: @Sendable (_ defaults: UserDefaults, _ key: String) -> Double
    public var integerForKey: @Sendable (_ defaults: UserDefaults, _ key: String) -> Int
    public var objectForKey: @Sendable (_ defaults: UserDefaults, _ key: String) -> Any?
    public var register: @Sendable (_ defaults: UserDefaults, _ info: [String: Any]) async -> Void
    public var remove: @Sendable (_ defaults: UserDefaults, _ key: String) async -> Void
    public var setBool: @Sendable (_ defaults: UserDefaults, _ bool: Bool, _ key: String) async -> Void
    public var setData: @Sendable (_ defaults: UserDefaults, _ data: Data?, _ key: String) async -> Void
    public var setDouble: @Sendable (_ defaults: UserDefaults, _ double: Double, _ key: String) async -> Void
    public var setInteger: @Sendable (_ defaults: UserDefaults, _ int: Int, _ key: String) async -> Void
    public var setObject: @Sendable (_ defaults: UserDefaults, _ object: Any, _ key: String) async -> Void
    public var setString: @Sendable (_ defaults: UserDefaults, _ string: String, _ key: String) async -> Void
    public var stringForKey: @Sendable (_ defaults: UserDefaults, _ key: String) -> String?
}
