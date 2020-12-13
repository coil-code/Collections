
import Foundation


protocol WelcomeProgressStorage: AnyObject {

  var passedStepIndex: Int? { get }
  func setPassedStepIndex(_ stepIndex: Int)

}
