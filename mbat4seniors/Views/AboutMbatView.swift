//
//  AboutMbatView.swift
//  mbat4seniors
//
//  Created by Tacettin Pekin on 10.11.2023.
//

import SwiftUI

struct AboutMbatView: View {
    
    @State private var showMenu = false
    var body: some View {
        ScrollView {
            VStack {
                TopBar1(showMenu: $showMenu)
                
                if showMenu {
                    menu()
                        .padding(.top)
                }
                
                rectanglev(text: "About MBAT")
                    .padding(.top)
                
                Text("Araştırmacılar, sanat terapisinin özellikle yetişkin ruh sağlığı üzerinde olumlu bir etkisi olduğunu uzun zamandır dile getirmektedir. Avrupa ülkelerinin çoğunda uzun yıllardır ruh sağlığı sistemi yetersiz finanse edilmiş, personel sayısı yetersiz, aşırı tibbileştirilmiş ve çoğunlukla psikiyatri hastanelerine indirgenmiştir. Ruhsal bozukluğu olan kişiler zorbalığa maruz kalmış ve toplumdan soyutlanmıştır.")
                    .padding()
                
                Image(.aboutMbat1)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                
                Text("Zihinsel bozukluğu olan insanlar hakkında baskın düşünce tehdit oldukları gerekçesiyle izole edilmesi yönündedir. Çeşitli terapiler yoluyla ruhsal bozuklukların tedavisine yönelik modern yaklaşım, özellikle Sovyet sonrası ülkelerde nispeten yenidir.")
                    .padding()
                
                Image(.aboutMbat2)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                
                Text("MBAT, ilk olarak 12 yıl önce ABD'de Laury Rappaport tarafından Önerilen yeni bir psikolojik müdahale yöntemidir. MBAT uygulayıcıları, bu yöntemin terapiye katılan hastalara büyük fayda sağladığı ve depresyon, kaygı ve stresle başa çıkmaya yardımcı olduğu görüşündedir. Proje çıktıları, zihinsel sağlık sorunları olan bireyleri desteklemek ve MBAT seansları vermek gibi eğitimciler için yüksek kaliteli beceri ve yetkinlikler elde etmeyi amaçlamaktadır")
                    .padding()
            }
        }
    }
}

#Preview {
    AboutMbatView()
}
