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
            url: "https://downloads.abra.ai/abra-api-ios/production/AbraAPI-1.5.0.zip",
            checksum: "3026a38759e97b99c436fa6f70e91f3c73773e6c493f9f3978213f4382539bc0"
        )
    ],
    swiftLanguageVersions: [.v5]
)
