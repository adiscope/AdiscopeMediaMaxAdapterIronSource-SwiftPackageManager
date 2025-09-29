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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaMaxAdapterIronSource.zip",
            checksum: "196cea714be692f17c232735668413e9210c4620c543d37a494f22e6fe2f38cb"
        ),
        .binaryTarget(
            name: "IronSource",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/IronSource.xcframework.zip",
            checksum: "9120c88836ebc271f208c6a8bea708bbe7efb633e4bb800b741444986dbca0a6"
        ),
    ]
)
