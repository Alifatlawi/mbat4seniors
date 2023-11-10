//
//  AboutTheProjectView.swift
//  mbat4seniors
//
//  Created by Tacettin Pekin on 10.11.2023.
//

import SwiftUI

struct AboutTheProjectView: View {
    @State private var showMenu = false
    
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView {
                VStack {
                    TopBar1(showMenu: $showMenu)
                    
                    if showMenu {
                        menu()
                            .padding(.top)
                    }
                    
                    rectanglev(text: "About The Project")
                        .padding(.top)
                    
                    Image(.aboutTheProject)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 300)
                        .padding()
                    
                    info()
                        .padding(.horizontal)
                    
                    // Icon-based button to scroll to top
                    HStack {
                        Spacer()
                        Button(action: {
                            withAnimation {
                                proxy.scrollTo(0, anchor: .top)
                            }
                        }) {
                            Image(systemName: "chevron.up.square.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(Color("Color1"))
                        }
                    .padding(.bottom)
                    }
                    .padding()
                }
                .id(0) // ID for ScrollViewReader
            }
        }
    }
}

struct info : View {
    var body: some View {
        VStack (alignment: .leading){
            Text("Eğitimciler")
                .font(.title)
            Text("Yaşlılarla çalışan yetişkin eğitimcileri, COVID-19 salgını bağlamında 65 yaş üstü öğrencilerin ruh sağlığını iyileştirmek amacıyla MBAT kullanımı hakkında kapsamlı metodolojik materyallerle donatmak.")
                .font(.subheadline)
                .padding(.top,1)
            
            Text("Yaşlılar")
                .font(.title)
                .padding(.top)
            Text("Yaşlılara günlük yaşamda MBAT'yi nasıl kullanacakları konusunda kolay erişilebilir ve kullanımı kolay bir araç sağlamak.")
                .font(.subheadline)
                .padding(.top, 1)
            
            Text("E-Öğrenme")
                .font(.title)
                .padding(.top)
            Text("E-öğrenme web platformunda ve Android mobil uygulamasında bulunan yetişkin eğitimciler ve yaşlılar için özel olarak hazırlanmış bir MBAT eğitim paketi oluşturmak.")
                .font(.subheadline)
                .padding(.top, 1)
            
            Text("Sağlık")
                .font(.title)
                .padding(.top)
            Text("Yaşlıların ruh sağlığını ve refahını iyileştirmek.")
                .font(.subheadline)
                .padding(.top, 1)
            
            Text("Ekonomi")
                .font(.title)
                .padding(.top)
            Text("Yetişkin eğitimciler, yaşlılar ve paydaşlar arasında döngüsel ekonomiyi teşvik etmek.")
                .font(.subheadline)
                .padding(.top, 1)
            
            
            Text("Ağ")
                .font(.title)
                .padding(.top)
            Text("MBAT ile çalışan uluslararası bir yetişkin eğitimi kuruluşları ağı oluşturmak")
                .font(.subheadline)
                .padding(.top, 1)
            
        }
    }
}

#Preview {
    AboutTheProjectView()
}
