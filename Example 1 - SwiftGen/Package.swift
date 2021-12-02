// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "SwiftGenExample",
    defaultLocalization: "en",
    targets: [
        // A local tool that uses a build tool plugin.
        .executableTarget(
            name: "SwiftGenExample",
            plugins: [
                "SwiftGenPlugin",
            ]
        ),
        // The plugin that generates build tool commands to invoke SwiftGen.
        .plugin(
            name: "SwiftGenPlugin",
            capability: .buildTool(),
            dependencies: [
                "SwiftGenBinary",
            ]
        ),
        // The vended executable that generates source files.
        .binaryTarget(
            name: "SwiftGenBinary",
            path: "Binaries/SwiftGenBinary.artifactbundle"
        ),
        .testTarget(
            name: "SwiftGenExampleTests",
            dependencies: [
                "SwiftGenExample",
            ]
        ),
    ]
)
