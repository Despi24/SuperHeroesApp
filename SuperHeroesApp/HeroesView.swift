//
//  HeroesView.swift
//  SuperHeroesApp
//
//  Created by Alex Peinado Llopis on 10/11/23.
//

import SwiftUI

struct HeroesView: View {
    @EnvironmentObject var heroesVM: HeroesVM
    
    var body: some View {
        switch heroesVM.heroesViewType {
        case .list:
            HeroesListView()
        case .grid:
            HeroesGridView()
        }
    }
}

#Preview {
    HeroesView()
        .environmentObject(HeroesVM(heroInteractor: TestHeroesInteractor()))
}
