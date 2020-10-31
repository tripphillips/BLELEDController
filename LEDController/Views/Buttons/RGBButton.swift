//
//  RGBButton.swift
//  LEDController
//
//  Created by Trip Phillips on 9/20/20.
//

import SwiftUI

struct RGBButton: View {
    let color: RGBColor
    var body: some View {
        Button(action: {}, label: {
            Text(color.name)
                .font(.callout)
        })
        .buttonStyle(ColorButtonStyle(color: color))
    }
}
