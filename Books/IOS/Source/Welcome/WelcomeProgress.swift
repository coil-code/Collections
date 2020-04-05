//
//  WelcomeProgress.swift
//  Books
//
//  Created by Vladimir V. on 02.04.2020.
//  Copyright © 2020 coil-code. All rights reserved.
//

import Foundation


protocol WelcomeProgress: AnyObject {

  var finishedStepIndex: Int? { get }
  func finishStep()

}


class NotStartedWelcomeProgress: WelcomeProgress {
  var finishedStepIndex: Int? { nil }
  func finishStep() {}
}

class FinishedWelcomeProgress: WelcomeProgress {
  var finishedStepIndex: Int? { Int.max }
  func finishStep() {}
}
