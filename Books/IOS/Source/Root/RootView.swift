
import SwiftUI


struct RootView: View {

  let dependencyContext: DependencyContext

  init(dependencyContext: DependencyContext) {
    self.dependencyContext = dependencyContext
  }

  var body: some View {
    Text("Books")
  }

}


struct RootViewPreviewProvider: PreviewProvider {
  static var previews: some View {
    RootView(dependencyContext: DependencyContext.makeTest())
  }
}
