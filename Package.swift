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
            url: "https://github.com/archit-dhupar/DzBase/releases/download/0.0.1/DzBase.xcframework.zip",
            checksum: "32a301293d83d3e32a2f6269bcb5a67f75ddbca139eefd3b60978170247cf346")
    ],
    swiftLanguageVersions: [.v5]
)

