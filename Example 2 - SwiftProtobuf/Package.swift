// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "swift-protobuf-plugin-example",
    dependencies: [
        .package(url: "https://github.com/abertelrud/swift-protobuf.git", branch: "eng/add-build-tool-plugin"),
    ],
    targets: [
        .executableTarget(
            name: "ProtobufExample",
            dependencies: [
                .product(name: "SwiftProtobufPluginLibrary", package: "swift-protobuf"),
            ],
            plugins: [
                .plugin(name: "SwiftProtobufPlugin", package: "swift-protobuf"),
            ]
        ),
        .testTarget(
            name: "ProtobufExampleTests",
            dependencies: [
                "ProtobufExample",
            ]
        ),
    ]
)
