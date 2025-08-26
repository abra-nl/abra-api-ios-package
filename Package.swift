// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "AbraAPI",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "AbraAPI",
            targets: ["AbraAPIFramework"]
        ),
    ],
    dependencies: [
        // All dependencies are embedded in the binary
    ],
    targets: [
        .binaryTarget(
            name: "AbraAPIFramework",
            url: "https://downloads.abra.ai/abra-api-ios/production/AbraAPI-1.0.13-SNAPSHOT.zip",
            checksum: "563f67c994af876e7a0436742e793c5907dd5fed12745fc0a5c79816d3dd47c7"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
