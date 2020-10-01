
import Foundation


class NotStartedWelcomeProgress: WelcomeProgress {
  var finishedStepIndex: Int? { nil }
  func finishStep() {}
}

class FinishedWelcomeProgress: WelcomeProgress {
  var finishedStepIndex: Int? { Int.max }
  func finishStep() {}
}
