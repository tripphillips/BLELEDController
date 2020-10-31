//
//  ColorButtonStyle.swift
//  LEDController
//
//  Created by Trip Phillips on 9/19/20.
//

import SwiftUI

struct ColorButtonStyle: ButtonStyle {
    
    let color: RGBColor
    
    func makeBody(configuration: Configuration) -> some View {
        return configuration.label
            .background(
                Circle()
                    .foregroundColor(
                        Color.init(.displayP3, red: color.red, green: color.green, blue: color.blue, opacity: color.alpha)
                    )
                    .frame(width: 90, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            )
    }
    
}
