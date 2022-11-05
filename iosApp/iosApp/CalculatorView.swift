//
//  CalculatorView.swift
//  iosApp
//
//  Created by Chang on 2022/11/1.
//  Copyright © 2022 orgName. All rights reserved.
//

import SwiftUI
import shared

struct CalculatorView: View {
    @ObservedObject private(set) var viewModel: ViewModel

    var body: some View {
        VStack {
            Spacer()
            displayText
            buttonPad
        }
        .background(Color.black)
    }
}
extension CalculatorView {
    
    private var displayText: some View {
        Text(viewModel.text)
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .font(.system(size: 88, weight: .light))
            .lineLimit(1)
            .minimumScaleFactor(0.2)
    }

    private var buttonPad: some View {
        VStack {
            ForEach(iosCalculatorAction, id: \.self.description) { row in
                HStack {
                    ForEach(row, id: \.self.text) { buttonType in
                        Button(buttonType.text) {
                            viewModel.onAction(action: buttonType.action)
                        }
                            .buttonStyle(CalculatorButtonStyle(
                                size: 80,
                                backgroundColor: Color.white
                                )
                            )
                    }
                }
            }
        }
    }
    
    class ViewModel: ObservableObject {
        @Published var text = "0"
        var writer = ExpressionWriter()

        func onAction(action:CalculatorAction) {
            writer.processAction(action: action)
            self.text = writer.expression
        }
    }
}
