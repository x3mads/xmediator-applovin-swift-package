// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorAppLovin",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorAppLovin", targets: ["XMediatorAppLovinTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.3"),
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
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorAppLovin/XMediatorAppLovin-13.6.3.4.zip",
            checksum: "740e640089617431c888d90416e657501ab91f371f4f7815ef942a3c581b08ee"
        ),
    ]
)
