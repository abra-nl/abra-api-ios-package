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
            url: "https://nbg1.your-objectstorage.com/abrabv/AbraAPI/1.0.13-SNAPSHOT/AbraAPI-1.0.13-SNAPSHOT.zip",
            checksum: "e85d55e7941a76153247b70706a8c4cae74f7cef560a8f74fa146eb3cba76caf"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
