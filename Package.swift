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
            path: "releases/1.4.0/AbraAPI-1.4.0.zip"
        )
    ],
    swiftLanguageVersions: [.v5]
)
