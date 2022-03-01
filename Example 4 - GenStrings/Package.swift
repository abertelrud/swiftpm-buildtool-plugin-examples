// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "GenstringsExample",
    dependencies: [
        .package(path: "VendoredPackages/GenstringsPlugin")
    ],
    targets: [
        .executableTarget(
            name: "GenstringsExample",
            plugins: [
                .plugin(name: "GenstringsPlugin", package: "GenstringsPlugin"),
            ]
        ),
        .testTarget(
            name: "GenstringsExampleTests",
            dependencies: [
                "GenstringsExample",
            ]
        ),
    ]
)
