//
//  FontName.swift
//  PortfolioGenerator
//
//  Created by Sahibuddin Ahmed on 27/09/21.
//

import Foundation
import SwiftUI
enum FontName : String
{
    case Regular = "Montserrat-Regular"
    case Medium = "Montserrat-Medium"
    case SemiBold = "Montserrat-SemiBold"
    case Bold = "Montserrat-Bold"
    case Light = "Montserrat-Light"
    case Thin = "Montserrat-Thin"
    case MediumItalic = "Montserrat-MediumItalic"
    case ThinItalic = "Montserrat-ThinItalic"
    case Italic = "Montserrat-Italic"
    case SemiBoldItalic = "Montserrat-SemiBoldItalic"
    
    func font(size: CGFloat) -> Font {
        switch self {
        case .Thin:
            return .custom(FontName.Thin.rawValue, size: size)
        case .ThinItalic:
            return .custom(FontName.ThinItalic.rawValue, size: size)
        case .Regular:
            return .custom(FontName.Regular.rawValue, size: size)
        case .Italic:
            return .custom(FontName.Italic.rawValue, size: size)
        case .Medium:
            return .custom(FontName.Medium.rawValue, size: size)
        case .MediumItalic:
            return .custom(FontName.MediumItalic.rawValue, size: size)
        case .SemiBold:
            return .custom(FontName.SemiBold.rawValue, size: size)
        case .SemiBoldItalic:
            return .custom(FontName.SemiBoldItalic.rawValue, size: size)
        case .Bold:
            return .custom(FontName.Bold.rawValue, size: size)
        case .Light:
            return .custom(FontName.Light.rawValue, size: size)
        }
    }
}
enum FontSize : CGFloat
{
    case Header = 23.0
    case SubHeader = 14.0
}
