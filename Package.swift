// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorAppLovin",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorAppLovin", targets: ["XMediatorAppLovinTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.4"),
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", .upToNextMajor(from: "1.164.0")),
    ],
    targets: [
        .target(
            name: "XMediatorAppLovinTarget",
            dependencies: [
                .target(name: "XMediatorAppLovin"),
                .product(name: "XMediator", package: "xmediator-swift-package"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "XMediatorAppLovinTarget",
            linkerSettings: [
                .linkedFramework("AdSupport"),
            ]
        ),
        .binaryTarget(
            name: "XMediatorAppLovin",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorAppLovin/XMediatorAppLovin-13.6.4.1.zip",
            checksum: "07dd9fdaade02ca537d299d7a67a534a4ad8a8c135ca2739668ebd77e96cce5b"
        ),
    ]
)
