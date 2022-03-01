// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "SourceryExample",
    defaultLocalization: "en",
    targets: [
        // A local tool that uses a build tool plugin.
        .executableTarget(
            name: "SourceryExample",
            plugins: [
                "SourceryPlugin",
            ]
        ),
        // The plugin that generates build tool commands to invoke Sourcery.
        .plugin(
            name: "SourceryPlugin",
            capability: .buildTool(),
            dependencies: [
                "SourceryBinary",
            ]
        ),
        // The vended executable that generates source files.
        .binaryTarget(
            name: "SourceryBinary",
            path: "Binaries/SourceryBinary.artifactbundle"
        ),
        .testTarget(
            name: "SourceryExampleTests",
            dependencies: [
                "SourceryExample",
            ]
        ),
    ]
)
