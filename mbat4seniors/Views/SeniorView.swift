//
//  SeniorView.swift
//  mbat4seniors
//
//  Created by Tacettin Pekin on 10.11.2023.
//

import SwiftUI

struct SeniorView: View {
    @State private var showMenu = false
    @State private var showEmoje = false
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    TopBar3(showMenu: $showMenu)
                    
                    if showMenu {
                        menu()
                            .padding(.top)
                    }
                    rectanglev(text: "Senior")
                        .padding(.top)
                    
                    SectionHeader(title: "How do you feel ?")
                    
                    Spacer(minLength: 50)
                    
                    Button(action: {showEmoje.toggle()}, label: {
                        Text("I WILL CHOOSE MYSELF?")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 300, height: 60)
                            .background(Color("Color1"))
                            .cornerRadius(30)
                    })
                    
                    if showEmoje {
                        emojie(destination: IwillChooseView())
                    }
                    
                    Spacer(minLength: 50)
                    UserButton(title: "SUPRISE ME", destination: EducatorView().navigationBarBackButtonHidden(true), color: Color("Color2"))
                }
            }
        }
    }
}

struct emojie<Destination: View> : View {
    
    let destination : Destination
    
    var body: some View {
        HStack {
            NavigationLink(destination: destination) {
                Text("😄")
            }
            NavigationLink(destination: destination) {
                Text("🙂")
            }
            NavigationLink(destination: destination) {
                Text("😐")
            }
            NavigationLink(destination: destination) {
                Text("😞")
            }
        }
        .font(.largeTitle)
    }
}

#Preview {
    SeniorView()
}
