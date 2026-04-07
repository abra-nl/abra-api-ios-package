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
            url: "https://downloads.abra.ai/abra-api-ios/production/AbraAPI-1.3.0.zip",
            checksum: "d5e27a20c62b15558d4d53c2d0826a0aa94f8d47d6a2ecdf27c888f9ae664628"
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
