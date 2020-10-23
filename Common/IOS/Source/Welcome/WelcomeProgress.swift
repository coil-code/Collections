
import Foundation


protocol WelcomeProgress: AnyObject {

  var finishedStepIndex: Int? { get }
  func finishStep()

}
