//
//  FavoriteInfo.swift
//  SuperHeroesApp
//
//  Created by Alex Peinado Llopis on 17/11/23.
//

import SwiftUI

struct FavoriteInfo: View {
    var body: some View {
        HStack (spacing: 10) {
            Text("Marcado como Favorito")
                .font(.footnote)
            Image(systemName: "star")
                .symbolVariant(.fill)
                .foregroundStyle(.yellow)
                .padding(.leading, 0)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .recuadroGrisaceo
    }
}

#Preview {
    FavoriteInfo()
}
