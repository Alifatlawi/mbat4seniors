//
//  menu.swift
//  mbat4seniors
//
//  Created by Tacettin Pekin on 10.11.2023.
//

import SwiftUI

struct menu: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Group {
                Text("EDUCATOR")
                    .font(.headline.bold())
                    .foregroundColor(.black.opacity(0.7))

                NavigationLink(destination: AboutTheProjectView().navigationBarBackButtonHidden(true)) {
                    MenuItemView(title: "ABOUT THE PROJECT")
                }
                Divider()

                NavigationLink(destination: ProductsView().navigationBarBackButtonHidden(true)) {
                    MenuItemView(title: "PRODUCTS")
                }
                Divider()

                NavigationLink(destination: AboutMbatView().navigationBarBackButtonHidden(true)) {
                    MenuItemView(title: "ABOUT MBAT")
                }

                Spacer().frame(height: 10) // Adds space between the two sections

                Text("SENIOR")
                    .font(.headline.bold())
                    .foregroundColor(.black.opacity(0.7))

//                NavigationLink(destination: ChooseMyselfView()) {
//                    MenuItemView(title: "I WILL CHOOSE MYSELF?")
//                }
//                Divider()
//
//                NavigationLink(destination: SurpriseMeView()) {
//                    MenuItemView(title: "SURPRISE ME")
//                }
            }
        }
        .padding(.horizontal)
    }
}



struct MenuItemView: View {
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: "chevron.right")
                .font(.subheadline.bold())
                .foregroundColor(.black.opacity(0.7))
            Text(title)
                .font(.subheadline.bold())
                .foregroundColor(.black.opacity(0.7))
        }
//        .padding(.vertical)
    }
}


#Preview {
    menu()
}
