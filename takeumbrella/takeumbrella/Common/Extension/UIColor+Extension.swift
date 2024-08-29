//
//  UIColor+Extension.swift
//  takeumbrella
//
//  Created by directionsoft on 8/29/24.
//

import Foundation
import UIKit

extension UIColor {
    static func colorFromHexString(_ hex: String, alpha: CGFloat = 1.0) -> UIColor {
        let hex = hex.trimmingCharacters(in: ["#"])
        
        guard let hex = Int(hex, radix: 16) else {
            return UIColor.clear
        }
        
        return UIColor(red: ((CGFloat)((hex & 0xFF0000) >> 16)) / 255.0,
                       green: ((CGFloat)((hex & 0x00FF00) >> 8)) / 255.0,
                       blue: ((CGFloat)((hex & 0x0000FF) >> 0)) / 255.0,
                       alpha: alpha)
    }
}
