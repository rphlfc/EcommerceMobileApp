//
//  ContentView.swift
//  EcommerceMobileApp
//
//  Created by Raphael Cerqueira on 03/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HomeView()
    }
}

struct HomeView: View {
    var body: some View {
        VStack(alignment: .leading) {
            CustomNavigationView()
            
            MenuView()
            
            CardsView()
                .padding(.top)
            
            LatestFavoritesView()
                .padding(.top)
                .padding(.horizontal)
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    var image: String
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .top) {
                HStack {
                    Spacer()
                    
                    Button(action: {}, label: {
                        Image(systemName: "heart.fill")
                            .font(.system(size: 26))
                            .foregroundColor(.white)
                    })
                }
                
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 40)
                    .shadow(color: Color.black.opacity(0.7), radius: 20, x: 10)
            }
            
            HStack {
                VStack(alignment: .leading) {
                    Text("NNS")
                        .font(.system(size: 21, weight: .semibold))
                        .padding(.top)
                    
                    Text("Smart Watch")
                        .font(.system(size: 19, weight: .bold))
                    
                    Text("$52")
                        .font(.system(size: 19))
                        .padding(.top)
                }
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "bag.fill")
                        .font(.system(size: 28))
                        .frame(width: 60, height: 60)
                        .background(Color(#colorLiteral(red: 0.1903820634, green: 0.5108983517, blue: 0.5982405543, alpha: 1)))
                        .foregroundColor(.white)
                })
                .clipShape(Circle())
                .shadow(color: Color(#colorLiteral(red: 0.1903820634, green: 0.5108983517, blue: 0.5982405543, alpha: 1)).opacity(0.7), radius: 10, y: 10)
            }
        }
        .frame(width: 230)
        .padding(30)
        .background(Color(#colorLiteral(red: 0.9211669564, green: 0.9213213325, blue: 0.9211466312, alpha: 1)))
        .clipShape(RoundedRectangle(cornerRadius: 40))
    }
}

struct CardsView: View {
    let items = ["black", "white", "red", "yellow"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(items, id: \.self) { item in
                    CardView(image: item)
                }
            }
            .padding(.horizontal)
        }
    }
}
