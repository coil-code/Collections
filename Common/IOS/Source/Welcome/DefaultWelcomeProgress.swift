
import Foundation


class DefaultWelcomeProgress: WelcomeProgress {

  let userParameterStorage: UserParameterStorage

  init(userParameterStorage: UserParameterStorage) {
    self.userParameterStorage = userParameterStorage
  }

  var finishedStepIndex: Int? {
    return userParameterStorage.integer(forKey: Self.key)
  }

  func finishStep() {
    guard let stepIndex = userParameterStorage.integer(forKey: Self.key) else {
      userParameterStorage.set(0, forKey: Self.key)
      return
    }
    userParameterStorage.set(stepIndex + 1, forKey: Self.key)
  }

  private static let key = "com.coil-code.Collections.Books.Welcome.finishedStepIndex"

}
