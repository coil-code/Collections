
import SwiftUI


struct DependencyContextEnvironmentKey: EnvironmentKey {
  static let defaultValue = DependencyContext.makeTest()
}


extension EnvironmentValues {
  var dependencyContext: DependencyContext {
    get { self[DependencyContextEnvironmentKey.self] }
    set { self[DependencyContextEnvironmentKey.self] = newValue }
  }
}
