//
//  IwillChooseView.swift
//  mbat4seniors
//
//  Created by Tacettin Pekin on 10.11.2023.
//

import SwiftUI
import WebKit

struct IwillChooseView: View {
    
    @State private var showMenu = false
    @State private var showMusic = false
    @State private var showDancing = false
    @State private var showPainting = false
    @State private var showClaying = false
    @State private var showCrafting = false
    @State private var showOnemore = false
    
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
                
                
                
                Spacer(minLength: 50)
                Button(action: {showMusic.toggle()}, label: {
                    Text("MUSIC")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 300, height: 60)
                        .background(Color("Color1"))
                })
                
                if showMusic {
                    videos(link1: "Q2E5RSJhDHI", link2: "3BTPdeXdLeU", link3: "9PhtxqKLvVc")
                }
                
                Spacer(minLength: 50)
                Button(action: {showDancing.toggle()}, label: {
                    Text("DANCING")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 300, height: 60)
                        .background(Color("Color2"))
                })
                if showDancing {
                    videos(link1: "Cmhi8AaPIKc", link2: "xsRNDo8Upys", link3: "rQxHtx3zYXM")
                }
                
                Spacer(minLength: 50)
                Button(action: {showPainting.toggle()}, label: {
                    Text("PAINTING")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 300, height: 60)
                        .background(Color("Color1"))
                })
                if showPainting {
                    videos(link1: "PDL7D3muOj0", link2: "5mDKO-AdnGk", link3: "0n4f-VDjOBE")
                }
                
                
//                Spacer(minLength: 50)
//                Button(action: {showClaying.toggle()}, label: {
//                    Text("CLAYING")
//                        .font(.headline)
//                        .foregroundColor(.white)
//                        .frame(width: 300, height: 60)
//                        .background(Color("Color2"))
//                })
//                if showClaying {
//                    videos(link1: "Q2E5RSJhDHI", link2: "3BTPdeXdLeU", link3: "9PhtxqKLvVc")
//                }
                
                
                Spacer(minLength: 50)
                Button(action: {showCrafting.toggle()}, label: {
                    Text("CRAFTING")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 300, height: 60)
                        .background(Color("Color2"))
                })
                if showCrafting {
                    videos(link1: "LL32Z9w3TFo", link2: "msHs28j-P04", link3: "dGkgJmUKNTM")
                }
                
                
//                Spacer(minLength: 50)
//                Button(action: {showOnemore.toggle()}, label: {
//                    Text("ONE MORE")
//                        .font(.headline)
//                        .foregroundColor(.white)
//                        .frame(width: 300, height: 60)
//                        .background(Color("Color2"))
//                })
//                
//                if showOnemore {
//                    videos(link1: "Q2E5RSJhDHI", link2: "3BTPdeXdLeU", link3: "9PhtxqKLvVc")
//                }
            }
        }
    }
}

struct videos : View {
    let link1 : String
    let link2 : String
    let link3 : String
    
    var body: some View {
        VStack (alignment: .leading){
            Text("VIDEO EXAMPLE 1")
                .font(.title3.bold())
            YouTubeView(videoID: link1) //Q2E5RSJhDHI
                .frame(height: 300)
            
            Text("VIDEO EXAMPLE 2")
                .font(.title3.bold())
            YouTubeView(videoID: link2) //3BTPdeXdLeU
                .frame(height: 300)
            
            Text("VIDEO EXAMPLE 3")
                .font(.title3.bold())
            YouTubeView(videoID: link3) //9PhtxqKLvVc
                .frame(height: 300)

        }
        .padding()
    }
}

#Preview {
    IwillChooseView()
}


struct YouTubeView: UIViewRepresentable {
    let videoID: String

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)") else { return }
        uiView.load(URLRequest(url: youtubeURL))
    }
}

