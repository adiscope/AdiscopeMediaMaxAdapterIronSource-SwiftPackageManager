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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AdiscopeMediaMaxAdapterIronSource.zip",
            checksum: "9dc324246aa2a7b221167a8eaee81c8d72ef678ce2a9bbe514e443b912a2a1b5"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterIronSourceMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AppLovinMediationIronSourceAdapter.xcframework.zip",
            checksum: "0131fd1de69079552e021339b6ee1fd75d9d0cb355b7ca2931dbaae5a5a55ab4"
        ),
        .binaryTarget(
            name: "IronSource",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/IronSource.xcframework.zip",
            checksum: "1040a68bab4fda76f7e345017d9254c9ca2034fc62c2cb352f46a3267f2d532f"
        ),
    ]
)
