//
//  LatestFavoritesView.swift
//  EcommerceMobileApp
//
//  Created by Raphael Cerqueira on 03/11/20.
//

import SwiftUI

struct LatestFavoritesView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Latest Favorites")
                .font(.system(size: 19, weight: .bold))
            
            HStack {
                Spacer()
                
                Image("white")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 10)
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("AB Smart Watch")
                        .font(.system(size: 19, weight: .bold))
                    
                    Text("$52")
                        .font(.system(size: 19))
                        .padding(.top, 8)
                }
                
                Spacer()
            }
            .padding(20)
            .background(Color(#colorLiteral(red: 0.9211669564, green: 0.9213213325, blue: 0.9211466312, alpha: 1)))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding(.top)
        }
    }
}

struct LatestFavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        LatestFavoritesView()
    }
}
