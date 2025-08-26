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
            url: "https://nbg1.your-objectstorage.com/abrabv/AbraAPI/1.1.1/AbraAPI-1.1.1.zip",
            checksum: "060ecc16c066a8f97abf8624c5d06ebad052d2f837c22f1b54472323e7fdd29a"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
