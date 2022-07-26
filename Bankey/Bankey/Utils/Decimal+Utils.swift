//
//  DecimalUtils.swift
//  Bankey
//
//  Created by Paweł Karabowicz on 26/07/2022.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }
}
