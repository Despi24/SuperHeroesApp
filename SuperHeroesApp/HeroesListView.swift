//
//  ContentView.swift
//  SuperHeroesApp
//
//  Created by Alex Peinado Llopis on 4/11/23.
//

import SwiftUI

struct HeroesListView: View {
    @EnvironmentObject var heroesVM: HeroesVM
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(heroesVM.heroes) { hero in
                    NavigationLink(value: hero) {
                        HeroCellView(hero: hero)
                            .swipeActions {
                                Button {
                                    heroesVM.addFavorite(selectedHero: hero)
                                } label: {
                                    Label(hero.isFavorite ? "Remove favorite" : "Add favorite", systemImage: "star")
                                }
                                .tint(hero.isFavorite ? .red : .yellow)
                            }
                            .swipeActions(edge: .leading, allowsFullSwipe: false) {
                                Button {
                                    heroesVM.deleteHero(selectedHero: hero)
                                } label: {
                                    Label("Remove" , systemImage: "trash")
                                }
                                .tint(.red)
                            }
                    }
                }
                .listRowInsets(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        heroesVM.heroesViewType = .grid
                    }, label: {
                        Text("Grid")
                    })
                }
            }
            .navigationDestination(for: HeroModel.self) { hero in
                HeroDetailView(hero: hero)
            }
            .listStyle(.grouped)
            .navigationTitle("Heroes")
        }
    }
}

#Preview {
    HeroesListView()
        .environmentObject(HeroesVM(heroInteractor: TestHeroesInteractor()))
}


