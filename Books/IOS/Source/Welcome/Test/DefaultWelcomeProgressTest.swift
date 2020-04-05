
import XCTest
@testable import Books


class DefaultWelcomeProgressTest: XCTestCase {

    func testFinishStep() throws {
      let userParameterStorage = TestUserParameterStorage()
      let welcomeProgress = DefaultWelcomeProgress(userParameterStorage: userParameterStorage)
      XCTAssertNil(welcomeProgress.finishedStepIndex)
      welcomeProgress.finishStep()
      XCTAssertEqual(welcomeProgress.finishedStepIndex, 0)
      welcomeProgress.finishStep()
      XCTAssertEqual(welcomeProgress.finishedStepIndex, 1)
    }

}
