
import Foundation


class WelcomeState: ObservableObject {

  let storage: WelcomeProgressStorage
  init(storage: WelcomeProgressStorage) { self.storage = storage }

  var currentStepIndex: Int {
    if (storedCurrentStepIndex == nil) {
      load()
    }
    return storedCurrentStepIndex!
  }

  func passStep() {
    let stepIndex = currentStepIndex
    storage.setPassedStepIndex(stepIndex)
    storedCurrentStepIndex = stepIndex + 1
    objectWillChange.send()
  }

  private var storedCurrentStepIndex: Int?

  private func load() {
    guard let passedStepIndex = storage.passedStepIndex else {
      storedCurrentStepIndex = 0
      return
    }
    storedCurrentStepIndex = passedStepIndex + 1
  }

}
