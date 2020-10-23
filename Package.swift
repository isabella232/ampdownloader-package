// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "9.1.0"

let package = Package(
    name: "AmpDownloader",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AmpDownloader",
            targets: ["AmpDownloader"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/akamai/ampcore-package", from: Version(version)!),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "AmpDownloader",
            url: "https://mdtp-a.akamaihd.net/amp-ios-sdk/frameworks/\(version)/AmpDownloader.zip",
            checksum: "5165a57e3ccf4a4f22639d7ea728cf6cc48313729470e7b1c6c3968e5943f0da"
        ),
    ]
)
