//
//  ContentView.swift
//  AnimatingCircles
//
//  Created by Hari on 20/06/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var moveInOut: Bool = false
    @State private var rotateInOut: Bool = false
    @State private var scaleInOut: Bool = false
    
    var body: some View {
        ZStack {
            Rectangle()
            //                .foregroundColor(Color.black)
                .edgesIgnoringSafeArea(.all)
            ZStack {
                // MARK: - Circle set 1
                ZStack {
                    Circle().fill(LinearGradient(colors: [.green, .white], startPoint: .top, endPoint: .bottom))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? -60 : 0)
                    
                    Circle().fill(LinearGradient(colors: [.green, .white], startPoint: .bottom, endPoint: .top))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? 60 : 0)
                }
                .opacity(0.5)
                
                // MARK: - Circle set 2
                ZStack {
                    Circle().fill(LinearGradient(colors: [.green, .white], startPoint: .top, endPoint: .bottom))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? -60 : 0)
                    
                    Circle().fill(LinearGradient(colors: [.green, .white], startPoint: .bottom, endPoint: .top))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? 60 : 0)
                }
                .opacity(0.5)
                .rotationEffect(.degrees(60))
                
                // MARK: - Circle set 3
                ZStack {
                    Circle().fill(LinearGradient(colors: [.green, .white], startPoint: .top, endPoint: .bottom))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? -60 : 0)
                    
                    Circle().fill(LinearGradient(colors: [.green, .white], startPoint: .bottom, endPoint: .top))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? 60 : 0)
                }
                .opacity(0.5)
                .rotationEffect(.degrees(120))
            }
            .rotationEffect(.degrees(rotateInOut ? 90 : 0))
            .scaleEffect(scaleInOut ? 1 : 1/4)
            .animation(Animation.easeInOut.repeatForever(autoreverses: true).speed(1/8), value: scaleInOut)
            .onAppear {
                //            withAnimation(.easeInOut.repeatForever(autoreverses: true).speed(1/8)) {
                moveInOut.toggle()
                scaleInOut.toggle()
                rotateInOut.toggle()
                //            }
            }
        }
    }
}

#Preview {
    ContentView()
}
