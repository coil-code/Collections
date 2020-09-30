
import UIKit
import SwiftUI


class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  var window: UIWindow?

  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let windowScene = scene as? UIWindowScene else {
      return
    }
    let window = UIWindow(windowScene: windowScene)
    let rootView = RootView().environment(\.dependencyContext, DependencyContext.makeTest())
    window.rootViewController = UIHostingController(rootView: rootView)
    self.window = window
    window.makeKeyAndVisible()
  }

  func sceneDidDisconnect(_ scene: UIScene) {}

}
