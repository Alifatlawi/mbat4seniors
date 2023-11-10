//
//  ProductsView.swift
//  mbat4seniors
//
//  Created by Tacettin Pekin on 10.11.2023.
//

import SwiftUI

struct ProductsView: View {
    @State private var showMenu = false
    @State private var showAnalysis = false
    @State private var showManual = false
    @State private var showToolkit = false
    @State private var showElearning = false

    var body: some View {
        ScrollView {
            VStack {
                TopBar1(showMenu: $showMenu)
                
                if showMenu {
                    menu()
                        .padding(.top)
                }
                
                rectanglev(text: "Products")
                    .padding(.top)
                
                Spacer(minLength: 50)
                
                Button(action: {showAnalysis.toggle()}, label: {
                    Text("ANALYSIS")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 300, height: 60)
                        .background(Color("Color1"))
                        .cornerRadius(30)
                })
                
                if showAnalysis {
                    analysis()
                }
                
                Spacer(minLength: 50)
                
                Button(action: {showManual.toggle()}, label: {
                    Text("MANUAL")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 300, height: 60)
                        .background(Color("Color2"))
                        .cornerRadius(30)
                })
                
                if showManual{
                    manual()
                }
                
                Spacer(minLength: 50)
                Button(action: {showToolkit.toggle()}, label: {
                    Text("TOOLKIT")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 300, height: 60)
                        .background(Color("Color1"))
                        .cornerRadius(30)
                })
                
                if showToolkit {
                    toolkit()
                }

                Spacer(minLength: 50)
                Button(action: {showElearning.toggle()}, label: {
                    Text("E-LEARNING PLATFORM")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 300, height: 60)
                        .background(Color("Color2"))
                        .cornerRadius(30)
                })

                if showElearning {
                    elearning()
                }

            }
        }
    }
}

struct analysis : View {
    var body: some View {
        VStack (alignment: .leading) {
            Image(.productsAnalysis)
                .resizable()
                .scaledToFit()
            .frame(width: 250)
            .padding(.top)
            
            Text("Uluslararası\nDerinlemesine Analiz:")
                .font(.title3)
            
            Text("Bireylerin zihinsel sağlığını iyileştirmek için Farkındalık Temelli Sanat Terapisinin kullanımı ve etkisi")
                .font(.subheadline)
                .padding(.top)
        }
        .padding(.horizontal,60)
    }
}

struct manual : View {
    var body: some View {
        VStack {
            Image(.productsManual)
                .resizable()
                .scaledToFit()
            .frame(width: 250)
            .padding(.top)
            
            Text("MBAT4Seniors Kılavuzu")
                .font(.title3)
        }
        .padding(.horizontal,60)
    }
}

struct toolkit : View {
    var body: some View {
        VStack {
            Image(.productsToolkit)
                .resizable()
                .scaledToFit()
            .frame(width: 250)
            .padding(.top)
            
            Text("MBAT4Seniors Araç Kiti")
                .font(.title3)
        }
        .padding(.horizontal,60)
    }
}

struct elearning : View {
    var body: some View {
        VStack {
            Image(.productsElearning)
                .resizable()
                .scaledToFit()
            .frame(width: 250)
            .padding(.top)
            
            Text("MBAT4Seniors e-öğrenme web platformu ve Android mobil uygulaması")
                .font(.title3)
        }
        .padding(.horizontal,60)
    }
}

#Preview {
    ProductsView()
}
