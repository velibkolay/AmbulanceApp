//
//  AmbulanceView.swift
//  Ambulance
//
//  Created by Veli Berkay Kolay on 11.09.22.
//

import SwiftUI

struct AmbulanceView: View {
    
    @State var backgroundColor = Color.blue
    @State var speed = 0.31
    
    @State var timer = Timer.publish(every: AppColor.speed, on: .main, in: .common).autoconnect()
    
    let timer2 = Timer.publish(every: 1, on: .main, in: .common).autoconnect()


    var body: some View {
        NavigationView {
            ZStack {
                backgroundColor.ignoresSafeArea()
                    .onReceive(timer) { _ in
                        if backgroundColor == Color.blue {
                            backgroundColor = Color.red
                        } else {
                            backgroundColor = Color.blue
                        }
                    }
                VStack {
                    Spacer()
                    NavigationLink(destination: WelcomeView(), label: {
                        ZStack{
                            Circle()
                                //.fill()
                                .frame(width: 150)
                                .opacity(0.5)
                                .foregroundColor(AppColor.accent)
                            Text("Stop!")
                                .foregroundColor(.white)
                                .frame(width: 150, height: 150)
                                //.padding()
                                .overlay(
                                    Circle()
                                        .stroke(AppColor.accent, lineWidth: 4))
                                .shadow(radius: 99)
                                
                        }
                    })
                    Spacer()
                        Slider(
                            value: $speed,
                            in: 0...1
                        ) {
                            Text("Speed")
                        } minimumValueLabel: {
                            Text("0")
                        } maximumValueLabel: {
                            Text("1")
                        }
                        .frame(width: 300, height: 100.0)
                        .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        Text("\(speed)")
                        .onReceive(timer2) { _ in
                            timer = Timer.publish(every: speed, on: .main, in: .common).autoconnect()
                        }
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct AmbulanceView_Previews: PreviewProvider {
    static var previews: some View {
        AmbulanceView()
    }
}
