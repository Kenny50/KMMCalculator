//
//  CalculatorButtonStyle.swift
//  iosApp
//
//  Created by Chang on 2022/11/1.
//  Copyright © 2022 orgName. All rights reserved.
//

import SwiftUI


struct CalculatorButtonStyle: ButtonStyle {
    
    var size: CGFloat
    var backgroundColor: Color

    func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .font(.system(size: 32, weight: .medium))
                .frame(width: size, height: size)
                .background(backgroundColor)
                .clipShape(Capsule())
    }
}
