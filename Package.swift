// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaMaxAdapterIronSource",
    products: [
        .library(
            name: "AdiscopeMediaMaxAdapterIronSource",
            targets: ["AdiscopeMediaMaxAdapterIronSourceTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.2"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterIronSourceTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterIronSource"),
                .target(name: "AdiscopeMediaMaxAdapterIronSourceMediationAdapter"),
                .target(name: "IronSource"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterIronSource",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/AdiscopeMediaMaxAdapterIronSource.zip",
            checksum: "b7a105b7b0af51e71dcec9a90665bd73a7bf2644f1f5d3ec0b84c624be08369a"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterIronSourceMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/AppLovinMediationIronSourceAdapter.xcframework.zip",
            checksum: "0f36365008817a63a518b51a12917c12e6621102ac90eb2195ee391ec53208cb"
        ),
        .binaryTarget(
            name: "IronSource",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/IronSource.xcframework.zip",
            checksum: "2ca9515dc04eafbe1900317554de454e7a55aa609cd849c623b6264952d25383"
        ),
    ]
)
