//
//  EducatorView.swift
//  mbat4seniors
//
//  Created by Tacettin Pekin on 10.11.2023.
//

import SwiftUI

struct EducatorView: View {
    @State private var showMenu = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    
                    TopBar3(showMenu: $showMenu)
                    
                    if showMenu {
                        menu()
                            .padding(.top)
                    }
                    rectanglev(text: "Educator")
                        .padding(.top)
                    
                    Spacer(minLength: 50)
                    UserButton(title: "ABOUT THE PROJECT", destination: AboutTheProjectView().navigationBarBackButtonHidden(true), color: Color("Color1"))
                    Spacer(minLength: 50)
                    UserButton(title: "PRODUCTS", destination: ProductsView().navigationBarBackButtonHidden(true), color: Color("Color2"))
                    Spacer(minLength: 50)
                    UserButton(title: "ABOUT MBAT", destination: AboutMbatView().navigationBarBackButtonHidden(true), color: Color("Color1"))
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}



#Preview {
    EducatorView()
}
