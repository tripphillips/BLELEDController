//
//  PatternButton.swift
//  LEDController
//
//  Created by Trip Phillips on 9/20/20.
//

import SwiftUI

struct PatternButton: View {
    let pattern: RGBPattern
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Text(pattern.name)
        })
        .buttonStyle(PatternButtonStyle(pattern: pattern))
    }
}
