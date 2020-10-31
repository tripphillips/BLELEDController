//
//  HomeView.swift
//  LEDController
//
//  Created by Trip Phillips on 9/19/20.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
        Color(UIColor.darkBackground).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        VStack(alignment: .center, spacing: 100) {
            VStack {
                Text("LED BLE Controller")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
            }
            VStack(alignment: .center, spacing: 20) {
            HStack(alignment: .center, spacing: 30) {
                RGBButton(color: .yellow)
                .frame(width: 90, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                RGBButton(color: .red)
                .frame(width: 90, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            HStack(alignment: .center, spacing: 30) {
                RGBButton(color: .green)
                .frame(width: 90, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                RGBButton(color: .white)
                .frame(width: 90, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                RGBButton(color: .magenta)
                .frame(width: 90, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            HStack(alignment: .center, spacing: 30) {
                RGBButton(color: .cyan)
                .frame(width: 90, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                RGBButton(color: .blue)
                .frame(width: 90, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            }
            VStack(alignment: .center, spacing: 20) {
                PatternButton(pattern: .flash)
                    .frame(width: 250, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                PatternButton(pattern: .fade)
                    .frame(width: 250, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
