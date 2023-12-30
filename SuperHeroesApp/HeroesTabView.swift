//
//  HeroesTabView.swift
//  SuperHeroesApp
//
//  Created by Alex Peinado Llopis on 9/11/23.
//

import SwiftUI

struct HeroesTabView: View {
    @EnvironmentObject var heroesVM: HeroesVM
    
    var body: some View {
        TabView {
            HeroesView()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(1)
            FavoriteHeroes()
                .tabItem {
                    Label("Favorites", systemImage: "star")
                }
                .tag(2)
        }
        .alert("Algo ha ido mal", isPresented: $heroesVM.showError) {
            
        } message: {
            Text(heroesVM.errorMsg)
        }

    }
}

#Preview {
    HeroesTabView()
        .environmentObject(HeroesVM(heroInteractor: TestHeroesInteractor()))
}
