import ComposableArchitecture
import Foundation
import OSLog
import XCTestDynamicOverlay

extension UserDefaultsClient: DependencyKey {
    private static let logger = Logger(
        subsystem: Bundle.main.bundleIdentifier!,
        category: String(describing: Self.self)
    )

    public static let liveValue: Self = {
        return Self(
            arrayForKey: { defaults, key in
                let array = defaults.array(forKey: key)
                Self.logger.debug("Getting array for key '\(key)': \(String(describing: array), privacy: .auto)")
                return array
            },
            boolForKey: { defaults, key in
                let bool = defaults.bool(forKey: key)
                Self.logger.debug("Getting bool for key '\(key)': \(String(describing: bool), privacy: .auto)")
                return bool
            },
            dataForKey: { defaults, key in
                let data = defaults.data(forKey: key)
                Self.logger.debug("Getting data for key '\(key)': \(String(describing: data), privacy: .auto)")
                return data
            },
            doubleForKey: { defaults, key in
                let double = defaults.double(forKey: key)
                Self.logger.debug("Getting double for key '\(key)': \(String(describing: double), privacy: .auto)")
                return double

            },
            integerForKey: { defaults, key in
                let integer = defaults.integer(forKey: key)
                Self.logger.debug("Getting integer for key '\(key)': \(String(describing: integer), privacy: .auto)")
                return integer
            },
            objectForKey: { defaults, key in
                let object = defaults.object(forKey: key)
                Self.logger.debug("Getting object for key '\(key)': \(String(describing: object), privacy: .auto)")
                return object
            },
            register: { defaults, info in
                Self.logger.debug("Registering defaults: \(String(describing: info), privacy: .auto)")
                defaults.register(defaults: info)
            },
            remove: { defaults, key in
                Self.logger.debug("Removing item for key '\(key)'")
                defaults.removeObject(forKey: key)
            },
            setBool: { defaults, value, key in
                Self.logger.debug("Setting bool '\(String(describing: value), privacy: .auto))' for key '\(key)'")
                defaults.set(value, forKey: key)
            },
            setData: { defaults, value, key in
                Self.logger.debug("Setting data '\(String(describing: value), privacy: .auto))' for key '\(key)'")
                defaults.set(value, forKey: key)
            },
            setDouble: { defaults, value, key in
                Self.logger.debug("Setting double '\(String(describing: value), privacy: .auto))' for key '\(key)'")
                defaults.set(value, forKey: key)
            },
            setInteger: { defaults, value, key in
                Self.logger.debug("Setting integer '\(String(describing: value), privacy: .auto))' for key '\(key)'")
                defaults.set(value, forKey: key)
            },
            setObject: { defaults, value, key in
                Self.logger.debug("Setting object '\(String(describing: value), privacy: .auto))' for key '\(key)'")
                defaults.set(value, forKey: key)
            },
            setString: { defaults, value, key in
                Self.logger.debug("Setting string '\(String(describing: value), privacy: .auto))' for key '\(key)'")
                defaults.set(value, forKey: key)
            },
            stringForKey: { defaults, key in
                let string = defaults.string(forKey: key)
                Self.logger.debug("Getting string for key '\(key)': \(String(describing: string), privacy: .auto)")
                return string
            }
        )
    }()

    public static let previewValue = Self(
        arrayForKey: { _, _ in [] },
        boolForKey: { _, _ in false },
        dataForKey: { _, _ in nil },
        doubleForKey: { _, _ in 0 },
        integerForKey: { _, _ in 0 },
        objectForKey: { _, _ in nil },
        register: { _, _ in },
        remove: { _, _ in },
        setBool: { _, _, _ in },
        setData: { _, _, _ in },
        setDouble: { _, _, _ in },
        setInteger: { _, _, _ in },
        setObject: { _, _, _ in },
        setString: { _, _, _ in },
        stringForKey: { _, _ in ""}
    )

    public static let testValue = Self(
        arrayForKey: unimplemented("\(Self.self).arrayForKey", placeholder: nil),
        boolForKey: unimplemented("\(Self.self).boolForKey", placeholder: false),
        dataForKey: unimplemented("\(Self.self).dataForKey", placeholder: nil),
        doubleForKey: unimplemented("\(Self.self).doubleForKey", placeholder: 0),
        integerForKey: unimplemented("\(Self.self).integerForKey", placeholder: 0),
        objectForKey: unimplemented("\(Self.self).objectForKey", placeholder: nil),
        register: unimplemented("\(Self.self).register"),
        remove: unimplemented("\(Self.self).remove"),
        setBool: unimplemented("\(Self.self).setBool"),
        setData: unimplemented("\(Self.self).setData"),
        setDouble: unimplemented("\(Self.self).setDouble"),
        setInteger: unimplemented("\(Self.self).setInteger"),
        setObject: unimplemented("\(Self.self).setObject"),
        setString: unimplemented("\(Self.self).setString"),
        stringForKey: unimplemented("\(Self.self).stringForKey", placeholder: "")
    )
}
