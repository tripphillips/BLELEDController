//
//  RGBPattern.swift
//  LEDController
//
//  Created by Trip Phillips on 9/20/20.
//

import Foundation

enum RGBPattern {
    case flash
    case fade
}

extension RGBPattern {
    var name: String {
        get {
            switch self {
            case .flash: return "Flash"
            case .fade: return "Fade"
            }
        }
    }
}
