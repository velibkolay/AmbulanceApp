//
//  AmbulanceView.swift
//  Ambulance
//
//  Created by Veli Berkay Kolay on 11.09.22.
//

import SwiftUI

struct AmbulanceView: View {
    
    @State var backgroundColor = Color.blue
    
    let timer = Timer.publish(every: 0.31, on: .main, in: .common).autoconnect()


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
