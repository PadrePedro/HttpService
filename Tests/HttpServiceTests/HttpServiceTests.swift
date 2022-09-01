import XCTest
@testable import HttpService

final class HttpServiceTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
//        XCTAssertEqual(HttpService().text, "Hello, World!")
    }
    
    func testHttpService() throws {
        
        let exp = expectation(description: "testHttpService")
        
        let url = URL(string: "https://dd-interview.github.io/android/v1/feed?query=term&lat=37.7816&lng=-122.4156")!
        
        HttpServiceImpl().getRequest(url: url) { result in
            switch result {
            case .success(let data):
                print(String(data: data, encoding: .utf8))
                exp.fulfill()
            case .failure(let error):
                XCTFail(error.localizedDescription)
            }
        }
        waitForExpectations(timeout: 5)
        
    }
}
