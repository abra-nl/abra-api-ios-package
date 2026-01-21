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
        // Library with dependencies
        .library(
            name: "AbraAPI",
            targets: ["AbraAPIFramework", "AbraAPIWrapper"]
        ),
    ],
    dependencies: [
        // Dependencies that the binary framework needs
        .package(url: "https://github.com/mac-cain13/R.swift.git", .upToNextMajor(from: "7.7.0")),
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.9.1"))
    ],
    targets: [
        // Binary target containing the framework
        .binaryTarget(
            name: "AbraAPIFramework",
            url: "https://downloads.abra.ai/abra-api-ios/production/AbraAPI-1.1.0.zip",
            checksum: "c7907d3242fe4c722a6e1b1baf9547a797aebc4201de1b49bde675d6dbc68959"
        ),
        // Wrapper target to handle binary target dependencies
        .target(
            name: "AbraAPIWrapper",
            dependencies: [
                .product(name: "RswiftLibrary", package: "R.swift"),
                .product(name: "Alamofire", package: "Alamofire"),
                "AbraAPIFramework"
            ],
            path: "Wrapper"
        )
    ],
    swiftLanguageVersions: [.v5]
)
