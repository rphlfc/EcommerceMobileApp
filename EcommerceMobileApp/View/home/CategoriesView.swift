//
//  CategoriesView.swift
//  EcommerceMobileApp
//
//  Created by Raphael Cerqueira on 03/11/20.
//

import SwiftUI

struct CategoriesView: View {
    let menuItems = ["All", "Top Rated", "Recommended", "New Colors"]
    @State var selectedItem: Int = 0
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(0..<menuItems.count) { i in
                    Button(action: {
                        selectedItem = i
                    }, label: {
                        Text(menuItems[i])
                            .font(.system(size: 21, weight: selectedItem == i ? .bold : .regular))
                            .foregroundColor(.black)
                    })
                }
            }
            .padding(.horizontal)
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
