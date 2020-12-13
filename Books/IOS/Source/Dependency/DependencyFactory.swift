
import Foundation


extension DependencyContext {

  static func makeDefault() -> DependencyContext {
    let userParameterStorage = DefaultUserParameterStorage.makeStandard()

    return DependencyContext(
      welcomeProgressStorage: DefaultWelcomeProgressStorage(userParameterStorage: userParameterStorage)
    )
  }

  static func makeTest() -> DependencyContext {
    return DependencyContext(
      welcomeProgressStorage: TestWelcomeProgressStorage.makeNotStarted()
    )
  }

}
