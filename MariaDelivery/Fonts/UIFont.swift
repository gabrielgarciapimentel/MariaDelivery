//
//  UIFont.swift
//  MariaDelivery
//
//  Created by Gabriel Garcia Pimentel Mendonca on 29/08/23.
//

import Foundation
import UIKit

extension UIFont {
    public enum PoppinsType: String {
        case black = "-Black"
        case bold = "-Bold"
        case extraBold = "-ExtraBold"
        case light = "-Light"
        case medium = "-Medium"
        case regular = "-Regular"
        case semiBold = "-SemiBold"
        case thin = "-Thin"
    }
    
    static func poppins(_ type: PoppinsType = .regular, size: CGFloat = UIFont.systemFontSize) -> UIFont {
        return UIFont(name: "Poppins\(type.rawValue)", size: size)!
    }
    
    var isBold: Bool {
        return fontDescriptor.symbolicTraits.contains(.traitBold)
    }
    
    var isItalic: Bool {
        return fontDescriptor.symbolicTraits.contains(.traitItalic)
    }
}
