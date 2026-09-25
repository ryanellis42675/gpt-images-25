// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "gpt-images-25",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "GptImages25",
            targets: ["GptImages25"]
        )
    ],
    targets: [
        .target(
            name: "GptImages25",
            dependencies: [],
            path: "Sources/GptImages25"
        )
    ]
)
