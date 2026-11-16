
// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "MediaTailorSDK",
    platforms: [
        .iOS(.v15),
        .tvOS(.v15)
    ],
    products: [
        .library(
            name: "MediaTailorSDK",
            targets: [
                "MediaTailorSDK",
                "MediaTailorDependencies"
            ]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/archit-dhupar/DzBase.git",
            exact: "0.0.1"
        )
    ],
    targets: [
        .binaryTarget(
            name: "MediaTailorSDK",
            url: "https://github.com/archit-dhupar/MT-SPM/releases/download/0.0.6/MediaTailorSDK.xcframework.zip",
            checksum: "5f78c865ef2627a4143f08cdc40e2af6c9d98bbe968b5f5d54a69c50e4cdd247"
        ),

        .target(
            name: "MediaTailorDependencies",
            dependencies: [
                "MediaTailorSDK",
                .product(
                    name: "DzBase",
                    package: "DzBase"
                )
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
