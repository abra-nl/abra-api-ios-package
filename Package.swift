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
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.9.1"))
    ],
    targets: [
        // Binary target containing the framework
        .binaryTarget(
            name: "AbraAPIFramework",
            url: "https://downloads.abra.ai/abra-api-ios/production/AbraAPI-1.3.1.zip",
            checksum: "da0aa5cd980c48ba653a021485c37d6f08a4abe44c86fa345bb7b89e69b84d12"
        ),
        // Wrapper target to handle binary target dependencies
        .target(
            name: "AbraAPIWrapper",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire"),
                "AbraAPIFramework"
            ],
            path: "Wrapper"
        )
    ],
    swiftLanguageVersions: [.v5]
)
