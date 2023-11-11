//
//  MusicView.swift
//  mbat4seniors
//
//  Created by Tacettin Pekin on 11.11.2023.
//

import SwiftUI

struct MusicView: View {
    @State private var showMenu = false
    let text : String
    let color : String
    let ylink : String
    var body: some View {
        ScrollView {
            VStack {
                TopBar1(showMenu: $showMenu)
                
                if showMenu {
                    menu()
                        .padding(.top)
                }
                rectanglev(text: "Stories")
                    .padding(.top)
                
                Spacer(minLength: 30)
                Text(text)
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 300, height: 60)
                    .background(Color(color))
                
                YouTubeView(videoID: ylink) //3BTPdeXdLeU
                    .frame(height: 300)
                    .padding()
            }
        }
    }
}

#Preview {
    MusicView(text: "MUSIC", color: "Color1", ylink: "3BTPdeXdLeU")
}
