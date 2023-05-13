// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "UserDefaultsKit",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "UserDefaultsKit",
            targets: ["UserDefaultsKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture.git", .upToNextMajor(from: "0.0.0")),
    ],
    targets: [
        .target(
            name: "UserDefaultsKit",
            dependencies: [
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
            ]),
        .testTarget(
            name: "UserDefaultsKitTests",
            dependencies: ["UserDefaultsKit"]),
    ]
)
