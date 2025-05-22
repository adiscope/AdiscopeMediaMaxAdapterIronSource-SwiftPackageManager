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
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterIronSourceTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterIronSource"),
                .target(name: "IronSource"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterIronSource",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.3.0/AdiscopeMediaMaxAdapterIronSource.zip",
            checksum: "d2db318d283de9d95978f0fdbe67edeb0b6eefa1b2cd5586061bc27fb058b31b"
        ),
        .binaryTarget(
            name: "IronSource",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.3.0/IronSource.xcframework.zip",
            checksum: "58623ab79861b8d8405ad56cdf60057611131f4d412f3157c32821bf1f0b00e8"
        ),
    ]
)
