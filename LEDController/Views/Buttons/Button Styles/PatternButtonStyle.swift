//
//  PatternButtonStyle.swift
//  LEDController
//
//  Created by Trip Phillips on 9/20/20.
//

import SwiftUI

struct PatternButtonStyle: ButtonStyle {
    
    let pattern: RGBPattern
    
    func makeBody(configuration: Configuration) -> some View {
        return configuration.label
            .background(
                RoundedRectangle(cornerRadius: 10.0, style: .circular)
                    .foregroundColor(Color.white)
                    .frame(width: 250, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            )
    }
    
}
