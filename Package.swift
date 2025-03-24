// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MediaTailorSDK",
    platforms: [.iOS(.v15), .tvOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MediaTailorSDK",
            targets: ["MediaTailorSDK"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [

        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "MediaTailorSDK",
            url: "https://github.com/archit-dhupar/MT-SPM/releases/download/0.0.3/MediaTailorSDK.xcframework.zip",
            checksum: "5f78c865ef2627a4143f08cdc40e2af6c9d98bbe968b5f5d54a69c50e4cdd247")
    ],
    swiftLanguageVersions: [.v5]
)
