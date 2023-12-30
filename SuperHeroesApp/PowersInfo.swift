//
//  CardInfo.swift
//  SuperHeroesApp
//
//  Created by Alex Peinado Llopis on 9/11/23.
//

import SwiftUI

struct CardInfo: View {
    let title: String
    let description: String
    
    var body: some View {
        HStack(spacing: 40) {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.footnote)
                    .bold()
                Text(description)
                    .font(.title3)
            }
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 10)
                .fill(.linearGradient(colors: [.gray.opacity(0.2), .gray.opacity(0.6)], startPoint: .top, endPoint: .bottom))
                .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
        }
    }
}

#Preview {
    CardInfo(title: "Poder", description: "descripcion")
}
