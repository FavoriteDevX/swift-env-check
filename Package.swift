// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "swift-env-check",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .executable(name: "swift-env-check", targets: ["SwiftEnvCheck"])
    ],
    dependencies: [
        .package(url: "https://github.com", from: "1.3.0")
    ],
    targets: [
        .executableTarget(
            name: "SwiftEnvCheck",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]
        )
    ]
)
