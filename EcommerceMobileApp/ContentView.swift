//
//  ContentView.swift
//  EcommerceMobileApp
//
//  Created by Raphael Cerqueira on 03/11/20.
//

import SwiftUI

struct ContentView: View {
    @State var isMenuVisible = false
    
    var body: some View {
        ZStack {
            MenuView(isMenuVisible: $isMenuVisible)
            
            GeometryReader { geometry in
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .fill(Color.white.opacity(0.4))
                        .offset(x: self.isMenuVisible ? -60 : 0)
                        .rotationEffect(.init(degrees: isMenuVisible ? -3 : 0))
                        .padding(.vertical, 32)
                    
                    HomeView(isMenuVisible: $isMenuVisible)
                        .cornerRadius(isMenuVisible ? 40 : 0)
                }
                .offset(x: isMenuVisible ? geometry.size.width * 0.7 : 0, y: self.isMenuVisible ? 40 : 0)
                .rotationEffect(.init(degrees: isMenuVisible ? -10 : 0))
                .scaleEffect(isMenuVisible ? 0.9 : 1)
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
