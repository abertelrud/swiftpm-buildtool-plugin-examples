import PackagePlugin
import Foundation

@main
struct SourceryPlugin: BuildToolPlugin {
    
    func createBuildCommands(context: PluginContext, target: Target) throws -> [Command] {
        // This example configures `Sourcery` to write to a "SourceryOutputs" directory.
        let generatedSourcesDir = context.pluginWorkDirectory.appending("SourceryOutputs")
        try FileManager.default.createDirectory(atPath: generatedSourcesDir.string, withIntermediateDirectories: true)

        // Find the path of the `sourcery` tool, and form the path of the templates directory next to it.
        let sourceryToolPath = try context.tool(named: "sourcery").path
        let templatesPath = sourceryToolPath.removingLastComponent().removingLastComponent().appending("Templates")
        print(templatesPath)
        
        // Return a command to run `Sourcery` as a prebuild command. It will be run before
        // every build and generates source files into an output directory provided by the
        // build context.
        return [.prebuildCommand(
            displayName: "Running Sourcery",
            executable: try context.tool(named: "sourcery").path,
            arguments: [
                "--sources", target.directory,
                "--templates", templatesPath,
                "--output", generatedSourcesDir,
                "--disableCache",
                "--verbose",
            ],
            outputFilesDirectory: generatedSourcesDir)
        ]
    }
}
