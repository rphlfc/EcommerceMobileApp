//
//  MenuView.swift
//  EcommerceMobileApp
//
//  Created by Raphael Cerqueira on 04/11/20.
//

import SwiftUI

struct MenuView: View {
    @Binding var isMenuVisible: Bool
    
    let items = [
        MenuItem(icon: "house.fill", title: "Home"),
        MenuItem(icon: "person.fill", title: "Profile"),
        MenuItem(icon: "dollarsign.square.fill", title: "Balance"),
        MenuItem(icon: "bag.fill", title: "My Cart"),
        MenuItem(icon: "heart.fill", title: "Favorite"),
        MenuItem(icon: "gearshape", title: "Setting")
    ]
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.1450815201, green: 0.1451086104, blue: 0.1450755298, alpha: 1)).ignoresSafeArea(.all, edges: .all)
            
            HStack {
                VStack(alignment: .leading) {
                    Button(action: {
                        withAnimation {
                            isMenuVisible.toggle()
                        }
                    }, label: {
                        Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                    })
                    
                    Spacer()
                    
                   UserView()
                    
                    Spacer()
                    
                    ForEach(items) { item in
                        MenuItemView(item: item)
                    }
                    
                    Spacer()
                    
                    RoundedRectangle(cornerRadius: 1)
                        .frame(width: 130, height: 1)
                    
                    Spacer()
                    
                    MenuItemView(item: MenuItem(icon: "rectangle.righthalf.inset.fill.arrow.right", title: "Sign Out"))
                    
                    Spacer()
                }
                .foregroundColor(.white)
                .padding()
                .padding(.leading, 20)
                
                Spacer()
            }
        }
    }
}

struct UserView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 70, height: 70)
            
            Text("Hello,")
                .font(.system(size: 28))
            
            Text("Nanas")
                .font(.system(size: 28, weight: .bold))
        }
    }
}

struct MenuItemView: View {
    var item: MenuItem
    
    var body: some View {
        HStack {
            Image(systemName: item.icon)
                .font(.system(size: 26))
            
            Text(item.title)
                .font(.system(size: 22, weight: .medium))
                .padding(.leading)
        }
        .padding(.vertical)
    }
}

struct MenuItem: Identifiable {
    let id = UUID().uuidString
    let icon: String
    let title: String
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(isMenuVisible: .constant(false))
    }
}
