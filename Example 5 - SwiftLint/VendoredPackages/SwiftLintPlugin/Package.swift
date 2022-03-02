// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "SwiftLintPlugin",
    platforms: [
        .macOS(.v11),
    ],
    products: [
        .plugin(name: "SwiftLintPlugin", targets: ["SwiftLintPlugin"]),
    ],
    dependencies: [
        .package(url: "https://github.com/realm/SwiftLint.git", from: "0.46.3")
    ],
    targets: [
        .plugin(
            name: "SwiftLintPlugin",
            capability: .buildTool(),
            dependencies: [
                .product(name: "swiftlint", package: "SwiftLint")
            ]
        ),
    ]
)
