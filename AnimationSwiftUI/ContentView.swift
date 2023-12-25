//
//  ContentView.swift
//  AnimationSwiftUI
//
//  Created by Tekla on 12/23/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isAnimated = false
    @State private var color = Color.red
    
    var body: some View {
        Text("TBC IT Academy")
            .scaleEffect(isAnimated ? 2.5 : 1.5)
            .foregroundColor(.white)
            .colorMultiply(color)
            .offset(y: isAnimated ? -70 : 70)
            .onAppear() {
                withAnimation(Animation.easeInOut(duration: 3).repeatForever(autoreverses: true)) {
                    isAnimated.toggle()
                    color = Color.blue
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
