import ComposableArchitecture
import Foundation
import OSLog
import XCTestDynamicOverlay

extension UserDefaultsClient: DependencyKey {
    public static let liveValue: Self = {
        Self(
            arrayForKey: { defaults, key in defaults.array(forKey: key) },
            boolForKey: { defaults, key in defaults.bool(forKey: key) },
            dataForKey: { defaults, key in defaults.data(forKey: key) },
            doubleForKey: { defaults, key in defaults.double(forKey: key) },
            integerForKey: { defaults, key in defaults.integer(forKey: key) },
            objectForKey: { defaults, key in defaults.object(forKey: key) },
            register: { defaults, info in defaults.register(defaults: info) },
            remove: { defaults, key in defaults.removeObject(forKey: key) },
            setBool: { defaults, value, key in defaults.set(value, forKey: key) },
            setData: { defaults, value, key in defaults.set(value, forKey: key) },
            setDouble: { defaults, value, key in defaults.set(value, forKey: key) },
            setInteger: { defaults, value, key in defaults.set(value, forKey: key) },
            setObject: { defaults, value, key in defaults.set(value, forKey: key) },
            setString: { defaults, value, key in defaults.set(value, forKey: key) },
            stringForKey: { defaults, key in defaults.string(forKey: key) }
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
