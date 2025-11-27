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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.4.0"),
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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMaxAdapterIronSource.zip",
            checksum: "1aa18430a1626f4a8c47e48d113126ca6d979855ab0225d9610aaff48839e4ce"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterIronSourceMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AppLovinMediationIronSourceAdapter.xcframework.zip",
            checksum: "e55967e994a2721f8f7a9e381d5076ea10a798d1c08e26dc4f68055f5ea160c8"
        ),
        .binaryTarget(
            name: "IronSource",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/IronSource.xcframework.zip",
            checksum: "fe7736b2296460b9f7889e69efdec4e0b5a5ccd5c1eea8b67571db2eda6da8e9"
        ),
    ]
)
