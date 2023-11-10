//
//  rectanglev.swift
//  mbat4seniors
//
//  Created by Tacettin Pekin on 10.11.2023.
//

import SwiftUI

struct rectanglev: View {
    var text : String
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.purple.opacity(0.3))
                .frame(maxWidth: .infinity, maxHeight: 150)
            
            HStack {
                Spacer()
                Text(text)
                    .font(.largeTitle.bold())
                    .foregroundColor(.purple)
                    .padding()
                Spacer()
                Image(.p) // Replace with your actual image name
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    rectanglev(text: "Home")
}
