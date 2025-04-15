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
            targets: ["AbraAPIFramework", "AbraAPIWrapper"]
        ),
    ],
    dependencies: [
        // Only include dependencies that the binary framework directly needs
        .package(url: "https://github.com/mac-cain13/R.swift.git", from: "7.0.0"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.8.1"))
    ],
    targets: [
        // Binary target with URL to the released framework
        .binaryTarget(
            name: "AbraAPIFramework",
            url: "https://nbg1.your-objectstorage.com/abrabv/AbraAPI/0.0.25/AbraAPI-0.0.25.zip",
            checksum: "5af1e74679e54ed28b24ca8dd1c44abe528ab6cbeaa7468a7d3f7ed5c98345cc"
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
