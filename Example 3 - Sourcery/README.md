# Example 3 - Sourcery

This example uses a prebuild tool plugin that invokes Sourcery to generate Swift before a build of a Swift Package. This sample package currently (temporarily) embeds a copy of Sourcery as a binary executable, but this should eventually come from Sourcery itself. The plugin uses the convention of looking for a `Sourcery.yml` at the root directory of the package.

This example requires SwiftPM 5.6 or later.