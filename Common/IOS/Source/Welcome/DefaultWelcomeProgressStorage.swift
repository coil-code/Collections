
import Foundation


class DefaultWelcomeProgressStorage: WelcomeProgressStorage {

  let userParameterStorage: UserParameterStorage
  init(userParameterStorage: UserParameterStorage) { self.userParameterStorage = userParameterStorage }

  var passedStepIndex: Int? { userParameterStorage.integer(forKey: Self.key) }
  func setPassedStepIndex(_ stepIndex: Int) { userParameterStorage.set(stepIndex, forKey: Self.key) }

  private static let key = "com.coil-code.Collections.Books.Welcome.passedStepIndex"

}
