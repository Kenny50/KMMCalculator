import SwiftUI

@main
struct iOSApp: App {
	var body: some Scene {
		WindowGroup {
            CalculatorView(viewModel: CalculatorView.ViewModel())
		}
	}
}
