//
//  HeroesGridView.swift
//  SuperHeroesApp
//
//  Created by Alex Peinado Llopis on 9/11/23.
//

import SwiftUI

struct HeroesGridView: View {
    @EnvironmentObject var heroesVM: HeroesVM
    
    let itemFixed = GridItem(.fixed(100), spacing: 20, alignment: .leading)
    let itemFlexible = GridItem(.flexible())
    let itemAdaptative = GridItem(.adaptive(minimum: 100))
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: [itemAdaptative], content: {
                    ForEach(heroesVM.heroes) { hero in
                        NavigationLink(value: hero) {
                            HeroGridCellView(hero: hero)
                        }
                        .buttonStyle(.plain)
                    }
                })
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {
                            heroesVM.heroesViewType = .list
                        }, label: {
                            Text("List")
                        })
                    }
                }

                .navigationTitle("Heroes")
                .navigationDestination(for: HeroModel.self) { hero in
                    HeroDetailView(hero: hero)
                }
            }
        }
    }
}

#Preview {
    HeroesGridView()
        .environmentObject(HeroesVM(heroInteractor: TestHeroesInteractor()))
}
