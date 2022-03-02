import Foundation
import PackagePlugin

/// Lints the source files in a Swift Package.
@main struct SwiftLintPlugin: BuildToolPlugin {
    func createBuildCommands(context: PluginContext, target: Target) async throws -> [Command] {
        guard let target = target as? SwiftSourceModuleTarget else {
            return []
        }

        let tool = try context.tool(named: "swiftlint")

        return [
            .prebuildCommand(
                displayName: "Linting source files",
                executable: tool.path,
                arguments: [
                    "lint",
                    "--path", target.directory.string
                ],
                outputFilesDirectory: context.pluginWorkDirectory
            )
        ]
    }
}
