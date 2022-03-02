import Foundation

public func GetLocalizedString() -> String {
    return NSLocalizedString("World", comment: "A comment about the localizable string")
}

print("Hello \(GetLocalizedString())")

public func CustomLocalizedString(
    _ key: StaticString,
    tableName: String? = nil,
    bundle: Bundle = .main,
    value: String,
    comment: StaticString
) -> String {
    NSLocalizedString(
        key.withUTF8Buffer { String(decoding: $0, as: UTF8.self) },
        tableName: tableName,
        bundle: bundle,
        value: value,
        comment: comment.withUTF8Buffer { String(decoding: $0, as: UTF8.self) }
    )
}
