import XCTest
import ProtobufExample

final class ProtobufExampleTests: XCTestCase {
    
    func testExample() {
        XCTAssertEqual(try GetFooName(), "Foo")
    }
}
