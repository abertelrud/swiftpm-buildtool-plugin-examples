# Example 1 - SwiftGen

This example uses a prebuild tool plugin that invokes SwiftGen to generate Swift before a build of a Swift Package. This sample package currently (temporarily) embeds a copy of SwiftGen as a binary executable, but this should eventually come from SwiftGen itself. The plugin uses the convention of looking for a `swiftgen.yml` at the root directory of the package.

This example requires SwiftPM 5.6 or later.