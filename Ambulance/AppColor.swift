//
//  AppColor.swift
//  Ambulance
//
//  Created by Veli Berkay Kolay on 11.09.22.
//

import Foundation
import SwiftUI

struct AppColor {
    static let main = Color(red: 20/255, green: 28/255, blue: 58/255)
    static let accent = Color(red: 48/255, green: 105/255, blue: 240/255)
    static var speed = 0.31
    
    static var backgroundColor = Color.blue
    
    static func changeColor(color: inout Color) {
        //color == Color.blue ? color = Color.red : color = Color.blue
        color = Color.red
    }
}


struct ThemeAnimationStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(.title2)
            .foregroundColor(Color.white)
            .frame(height: 50, alignment: .center)
            .background(configuration.isPressed ? Color.green.opacity(0.5) : Color.green)
            .cornerRadius(8)
            .shadow(color: Color.gray, radius: 10, x: 0, y: 0)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0) //<- change scale value as per need. scaleEffect(configuration.isPressed ? 1.2 : 1.0)
    }
}

// Fuck Da Police
// Şehrimin Tadı
// Light Speed - Bar
// Background Music
