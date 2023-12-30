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
                    .font(.callout)
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
        .recuadroGrisaceo
    }
}

#Preview {
    CardInfo(title: "Poder", description: "descripcion")
}
