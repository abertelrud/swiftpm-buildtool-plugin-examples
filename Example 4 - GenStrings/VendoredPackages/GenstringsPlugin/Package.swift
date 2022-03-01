// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "GenstringsPlugin",
    products: [
        .plugin(
            name: "GenstringsPlugin",
            targets: ["GenstringsPlugin"]),
    ],
    targets: [
        .plugin(
            name: "GenstringsPlugin",
            capability: .buildTool()),
    ]
)
