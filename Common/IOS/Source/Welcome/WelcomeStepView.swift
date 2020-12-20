
import SwiftUI


struct WelcomeStepView<MainView, ContinueButton>: View where MainView: View, ContinueButton: View {

  let mainView: MainView
  let continueButton: ContinueButton

  init(@ViewBuilder mainView: () -> MainView, @ViewBuilder continueButton: () -> ContinueButton) {
    self.mainView = mainView()
    self.continueButton = continueButton()
  }

  var body: some View {
    GeometryReader { geometry in
      VStack(alignment: .center) {
        mainView.padding(.top, geometry.size.height * 0.25)
        Spacer()
        continueButton.padding(.bottom, geometry.size.height * 0.05)
      }.frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
    }
  }

}


struct WelcomeStepViewPreviewProvider: PreviewProvider {
  static var previews: some View {
    WelcomeStepView(mainView: {
      Text("Greetings")
    }, continueButton: {
      Button(action: {
        print("Continue tapped")
      }) {
        Text("Continue")
      }
    })
  }
}
