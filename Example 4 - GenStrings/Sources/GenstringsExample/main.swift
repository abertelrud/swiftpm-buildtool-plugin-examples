import Foundation

public func GetLocalizedString() -> String {
    return NSLocalizedString("World", comment: "A comment about the localizable string")
}

print("Hello \(GetLocalizedString())")
