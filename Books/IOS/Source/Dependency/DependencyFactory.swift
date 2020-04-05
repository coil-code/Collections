
import Foundation


extension DependencyContext {

  static func makeDefault() -> DependencyContext {
    let userParameterStorage = DefaultUserParameterStorage.makeStandard()

    return DependencyContext(
      welcomeProgress: DefaultWelcomeProgress(userParameterStorage: userParameterStorage)
    )
  }

  static func makeTest() -> DependencyContext {
    return DependencyContext(
      welcomeProgress: NotStartedWelcomeProgress()
    )
  }

}
