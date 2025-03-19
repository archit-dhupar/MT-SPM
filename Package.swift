// swift-tools-version:5.7.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MediaTailorSDK",
    platforms: [.iOS(.v14), .tvOS(.v14)]
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
            url: "https://github.com/archit-dhupar/MT-SPM/releases/download/0.0.2/MediaTailorSDK.xcframework.zip",
            checksum: "7c8cc48b836b5541e93fb5f9cf0807f7291681c41a9ef2ce516247db4505d68e")
    ],
    swiftLanguageVersions: [.v5]
)

