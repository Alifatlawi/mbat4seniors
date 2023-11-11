//
//  SeniorView.swift
//  mbat4seniors
//
//  Created by Tacettin Pekin on 10.11.2023.
//

import SwiftUI

struct ActivityContent {
    var title: String
    var videoLinks: [String]
    var color: String
}

let allContents = [
    ActivityContent(title: "MUSIC", videoLinks: ["Q2E5RSJhDHI", "3BTPdeXdLeU", "9PhtxqKLvVc"], color: "Color1"),
    ActivityContent(title: "DANCING", videoLinks: ["Cmhi8AaPIKc", "xsRNDo8Upys", "rQxHtx3zYXM"], color: "Color2"),
    ActivityContent(title: "PAINTING", videoLinks: ["PDL7D3muOj0", "5mDKO-AdnGk", "0n4f-VDjOBE"], color: "Color1"),
    ActivityContent(title: "CRAFTING", videoLinks: ["LL32Z9w3TFo", "msHs28j-P04", "dGkgJmUKNTM"], color: "Color2")
    // Add more activities as needed
]

func getRandomActivityContent() -> (title: String, videoLink: String, color: String)? {
    guard let randomActivity = allContents.randomElement(),
          let randomLink = randomActivity.videoLinks.randomElement() else {
        return nil
    }
    
    return (title: randomActivity.title, videoLink: randomLink, color: randomActivity.color)
}

struct SeniorView: View {
    @State private var showMenu = false
    @State private var showEmoje = false
    @State private var randomActivity: (title: String, videoLink: String, color: String)?
    @State private var navigateToSurprise = false
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
                    Button(action: {
                        randomActivity = getRandomActivityContent()
                        navigateToSurprise = true
                    }) {
                        Text("SURPRISE ME")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 300, height: 60)
                            .background(Color("Color2"))
                            .cornerRadius(30)
                    }
                    
                    if let activity = randomActivity {
                        NavigationLink(destination: MusicView(text: activity.title, color: activity.color, ylink: activity.videoLink).navigationBarBackButtonHidden(true), isActive: $navigateToSurprise) {
                            EmptyView()
                        }
                    }
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct emojie<Destination: View> : View {
    
    let destination : Destination
    
    var body: some View {
        HStack {
            NavigationLink(destination: destination.navigationBarBackButtonHidden(true)) {
                Text("😄")
            }
            NavigationLink(destination: destination.navigationBarBackButtonHidden(true)) {
                Text("🙂")
            }
            NavigationLink(destination: destination.navigationBarBackButtonHidden(true)) {
                Text("😐")
            }
            NavigationLink(destination: destination.navigationBarBackButtonHidden(true)) {
                Text("😞")
            }
        }
        .font(.largeTitle)
    }
}

#Preview {
    SeniorView()
}
