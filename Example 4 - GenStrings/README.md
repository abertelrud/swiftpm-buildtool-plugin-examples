# Example 4 - Genstrings

This example uses a build tool plugin to generate .strings files from `NSLocalizedString()` calls in the source code.

This example requires SwiftPM 5.6 or later.

NOTE: There seems to be a bug in SwiftPM 5.6 and Xcode 13.3 that causes the .lproj to not be treated as a resource but instead as a plain file, preventing this example from working in those releases.

