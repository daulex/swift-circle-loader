//
//  ContentView.swift
//  Spinning Circle
//
//  Created by Kirills Galenko on 10/01/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isRotating = 0.0
    var body: some View {
        ZStack{
            ZStack {
                Circle()
                    .strokeBorder(.black, lineWidth: 1)
                Circle()
                    .foregroundColor(.teal)
                    .frame(width: 15, height: 15)
                    .offset(x:0, y:-33)
                
            }
            
            .frame(width: 70, height: 70)
            .padding()
            .rotationEffect(.degrees(isRotating))
            .onAppear {
                withAnimation(.linear(duration: 1)
                    .speed(1)
                    .repeatForever(autoreverses: false)) {
                        isRotating = 360.0
                    }
            }
        }
        .rotation3DEffect(
            .degrees(60),
            axis: (x: 1.0, y: 0.0, z: 0.0)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
