//
//  HomeView.swift
//  EcommerceMobileApp
//
//  Created by Raphael Cerqueira on 04/11/20.
//

import SwiftUI

struct HomeView: View {
    @Binding var isMenuVisible: Bool
    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea(.all, edges: .all)
            
            VStack(alignment: .leading) {
                CustomNavigationView(isMenuVisible: $isMenuVisible)
                    .padding(.top, 44)
                    
                
                CategoriesView()
                
                CardsView()
                    .padding(.top)
                
                LatestFavoritesView()
                    .padding(.top)
                    .padding(.horizontal)
                
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(isMenuVisible: .constant(false))
    }
}
