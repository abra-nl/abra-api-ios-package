// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AbraAPI",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v17),
        .macOS(.v14)
    ],
    products: [
        .library(
            name: "AbraAPI",
            targets: ["AbraAPIFramework"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "AbraAPIFramework",
            url: "https://downloads.abra.ai/abra-api-ios/production/AbraAPI-1.6.0.zip",
            checksum: "85f21f6d7985c822dc247088f9fa97df85cc5064e48e4d60fedef4333d79c3a0"
        )
    ],
    swiftLanguageVersions: [.v5]
)
