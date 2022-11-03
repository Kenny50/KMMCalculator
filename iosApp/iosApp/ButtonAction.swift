//
//  ButtonAction.swift
//  iosApp
//
//  Created by Chang on 2022/11/1.
//  Copyright © 2022 orgName. All rights reserved.E
//

import Foundation
import shared

let iosCalculatorAction = [
    [
        IosCalculatorAction(text:"AC", action:CalculatorActionClear()),
        IosCalculatorAction(text:"()", action:CalculatorActionParentheses()),
        IosCalculatorAction(text:"%", action:CalculatorActionOp(operation: Operation.percent)),
        IosCalculatorAction(text:"/", action:CalculatorActionOp(operation: Operation.divide))
    ],
    [
        IosCalculatorAction(text:"7", action:CalculatorActionNumber(number: 7)),
        IosCalculatorAction(text:"8", action:CalculatorActionNumber(number: 8)),
        IosCalculatorAction(text:"9", action:CalculatorActionNumber(number: 9)),
        IosCalculatorAction(text:"x", action:CalculatorActionOp(operation: Operation.multiply))
        ],
    [
        IosCalculatorAction(text:"4", action:CalculatorActionNumber(number: 4)),
        IosCalculatorAction(text:"5", action:CalculatorActionNumber(number: 5)),
        IosCalculatorAction(text:"6", action:CalculatorActionNumber(number: 6)),
        IosCalculatorAction(text:"-", action:CalculatorActionOp(operation: Operation.subtract))
        ],
    [
        IosCalculatorAction(text:"1", action:CalculatorActionNumber(number: 1)),
        IosCalculatorAction(text:"2", action:CalculatorActionNumber(number: 2)),
        IosCalculatorAction(text:"3", action:CalculatorActionNumber(number: 3)),
        IosCalculatorAction(text:"+", action:CalculatorActionOp(operation: Operation.add))
        ],
    [
        IosCalculatorAction(text:"0", action:CalculatorActionNumber(number: 0)),
        IosCalculatorAction(text:".", action:CalculatorActionDecimal()),
        IosCalculatorAction(text:"<-", action:CalculatorActionDelete()),
        IosCalculatorAction(text:"=", action:CalculatorActionCalculate())
        ]
]

struct IosCalculatorAction {
    var text:String
    var action:CalculatorAction
}
//enum ButtonAction {
//    case digit(_ digit: Int)
//    case operation(_ operation: Operation)
//    case negative
//    case percent
//    case decimal
//    case equals
//    case allClear
//    case clear
//
//    var description: String {
//        switch self {
//        case .digit(let digit):
//            return digit.description
//        case .operation(let operation):
//            return operation.description
//        case .negative:
//            return "±"
//        case .percent:
//            return "%"
//        case .decimal:
//            return "."
//        case .equals:
//            return "="
//        case .allClear:
//            return "AC"
//        case .clear:
//            return "C"
//        }
//    }
//}
