//
//  HeroDetailView.swift
//  SuperHeroesApp
//
//  Created by Alex Peinado Llopis on 7/11/23.
//

import SwiftUI

struct HeroDetailView: View {
    let hero: HeroModel
    var body: some View {
        ZStack {
            Color.blue.opacity(0.7)
                .saturation(0.5)
            ScrollView {
                VStack(spacing: 10) {
                    Image(hero.imagen)
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .shadow(color: .black, radius: 10)
                    if hero.isFavorite {
                        FavoriteInfo()
                    }
                    HStack {
                        CardInfo(title: "Nombre:", description: "\(hero.nombreReal)")
                        CardInfo(title: "Edad:", description: "\(hero.edad)")
                    }
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            if let descripcion = hero.descripcion {
                                CardInfo(title: "Historia:", description: descripcion)
                            } else if let historia = hero.historia {
                                CardInfo(title: "Historia:", description: historia)
                            }
                        }
                        if !hero.poderes.isEmpty {
                            PowersInfo(hero: hero, poder: .controlVibraciones)
                        }
                    }
                }
                .padding(.top, 25)
                .padding(.horizontal, 25)
                .navigationTitle("\(hero.apodo)")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
        //.ignoresSafeArea()
    }
}

                     

#Preview {
    NavigationStack {
        HeroDetailView(hero: .test)
    }
}
