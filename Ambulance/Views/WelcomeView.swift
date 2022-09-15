//
//  ContentView.swift
//  Ambulance
//
//  Created by Veli Berkay Kolay on 11.09.22.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                AppColor.main.ignoresSafeArea()
                VStack {
                    Text("Turn on the sirens!")
                        .foregroundColor(.white)
                        .padding(.top, 50)
                        .font(.largeTitle)
                    Spacer()
                    NavigationLink(destination: AmbulanceView(), label: {
                        /*Text("Start!")
                         .frame(width: 150, height: 150)
                         .foregroundColor(.white)
                         .background(AppColor.accent)
                         .clipShape(Circle())*/
                        ZStack{
                            Circle()
                                .frame(width: 150)
                                .opacity(0.5)
                                .foregroundColor(AppColor.accent)
                            Text("Start!")
                                .foregroundColor(.white)
                                .frame(width: 150, height: 150)
                                //.padding()
                                .overlay(
                                    Circle()
                                        .stroke(AppColor.accent, lineWidth: 4))
                                .shadow(radius: 99)
                                
                        }.padding(.bottom, 90)
                    })
                    Spacer()
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
