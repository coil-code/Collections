
import SwiftUI


struct RootView: View {

  var body: some View {
    Text("Books")
  }

}


struct RootViewPreviewProvider: PreviewProvider {
  static var previews: some View {
    RootView().environment(\.dependencyContext, DependencyContext.makeTest())
  }
}
