// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "SwiftLintExample",
    platforms: [
        .macOS(.v11),
    ],
    dependencies: [
        .package(path: "VendoredPackages/SwiftLintPlugin")
    ],
    targets: [
        .executableTarget(
            name: "SwiftLintExample",
            plugins: [
                .plugin(name: "SwiftLintPlugin", package: "SwiftLintPlugin"),
            ]
        ),
        .testTarget(
            name: "SwiftLintExampleTests",
            dependencies: [
                "SwiftLintExample",
            ]
        ),
    ]
)
