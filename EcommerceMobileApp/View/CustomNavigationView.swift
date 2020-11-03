//
//  CustomNavigationView.swift
//  EcommerceMobileApp
//
//  Created by Raphael Cerqueira on 03/11/20.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        HStack {
            Button(action: {}, label: {
                VStack(spacing: 4) {
                    HStack {
                        Capsule()
                            .frame(width: 16, height: 4)
                        
                        Spacer()
                    }
                    
                    Capsule()
                        .frame(width: 32, height: 4)
                    
                    HStack {
                        Spacer()
                        
                        Capsule()
                            .frame(width: 16, height: 4)
                    }
                }
                .foregroundColor(.black)
            })
            .frame(width: 32)
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 26))
                    .foregroundColor(.black)
            })
        }
    }
}

struct TitleView: View {
    var body: some View {
        HStack {
            Text("Our")
                .font(.system(size: 34))
            
            Text("Product")
                .font(.system(size: 34, weight: .bold))
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "slider.vertical.3")
                    .font(.system(size: 26))
                    .foregroundColor(.black)
            })
            
        }
    }
}

struct CustomNavigationView: View {
    var body: some View {
        VStack {
            TopView()
            
            TitleView()
                .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct CustomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationView()
    }
}
