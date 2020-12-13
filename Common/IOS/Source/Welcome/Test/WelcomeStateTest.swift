
import XCTest
@testable import Books


class DefaultWelcomeProgressTest: XCTestCase {

  func testNotStarted() throws {
    let welcomeProgressStorage = TestWelcomeProgressStorage.makeNotStarted()
    let welcomeState = WelcomeState(storage: welcomeProgressStorage)
    XCTAssertEqual(welcomeState.currentStepIndex, 0)
    welcomeState.passStep()
    XCTAssertEqual(welcomeState.currentStepIndex, 1)
  }

  func testStarted() throws {
    let welcomeProgressStorage = TestWelcomeProgressStorage(initialPassedStepIndex: 0)
    let welcomeState = WelcomeState(storage: welcomeProgressStorage)
    XCTAssertEqual(welcomeState.currentStepIndex, 1)
    welcomeState.passStep()
    XCTAssertEqual(welcomeState.currentStepIndex, 2)
  }

}
