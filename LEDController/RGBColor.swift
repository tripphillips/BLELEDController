//
//  RGBColor.swift
//  LEDController
//
//  Created by Trip Phillips on 9/19/20.
//

import Foundation

enum RGBColor {
    case red
    case yellow
    case green
    case cyan
    case blue
    case magenta
    case white
}

extension RGBColor {
    
    var name: String {
        get {
            switch self {
            case .red: return "Red"
            case .yellow: return "Yellow"
            case .green: return "Green"
            case .cyan: return "Cyan"
            case .blue: return "Blue"
            case .magenta: return "Magenta"
            case .white: return "White"
            }
        }
    }
    
    var red: Double {
        get {
            switch self {
            case .red, .magenta, .yellow, .white : return 1.0
            case .blue, .green, .cyan : return 0.0
            }
        }
    }
        
    var green: Double {
        get {
            switch self {
            case .green, .cyan, .yellow, .white : return 1.0
            case .blue, .magenta, .red : return 0.0
            }
        }
    }
    
    var blue: Double {
        get {
            switch self {
            case .blue, .cyan, .magenta, .white : return 1.0
            case .green, .red, .yellow : return 0.0
            }
        }
    }
    
    var alpha: Double {
        get {
            switch self {
            case .red, .green, .blue, .cyan, .magenta, .yellow, .white : return 1.0
            }
        }
    }

}
