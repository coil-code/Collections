
import Foundation


class TestWelcomeProgressStorage: WelcomeProgressStorage {
  init(initialPassedStepIndex: Int?) { storedPassedStepIndex = initialPassedStepIndex }

  var passedStepIndex: Int? { storedPassedStepIndex }
  func setPassedStepIndex(_ stepIndex: Int) { storedPassedStepIndex = stepIndex }

  private var storedPassedStepIndex: Int?
}


extension TestWelcomeProgressStorage {
  static func makeNotStarted() -> WelcomeProgressStorage { TestWelcomeProgressStorage(initialPassedStepIndex: nil) }
  static func makeFinished() -> WelcomeProgressStorage { TestWelcomeProgressStorage(initialPassedStepIndex: 0) }
}
