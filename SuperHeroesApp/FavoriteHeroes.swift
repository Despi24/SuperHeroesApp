//
//  FavoriteHeroes.swift
//  SuperHeroesApp
//
//  Created by Alex Peinado Llopis on 16/11/23.
//

import SwiftUI

struct FavoriteHeroes: View {
    @EnvironmentObject var heroesVM: HeroesVM
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(heroesVM.favoriteHeroes) { hero in
                    HeroCellView(hero: hero)
                        .swipeActions {
                            Button {
                                heroesVM.addFavorite(selectedHero: hero)
                            } label: {
                                Label(hero.isFavorite ? "Remove favorite" : "Add favorite", systemImage: "star")
                            }
                            .tint(hero.isFavorite ? .red : .yellow)
                        }
                }
            }
            .navigationTitle("Favorite Heroes")
        }
    }
}

#Preview {
    FavoriteHeroes()
        .environmentObject(HeroesVM(heroInteractor: TestHeroesInteractor()))
}
