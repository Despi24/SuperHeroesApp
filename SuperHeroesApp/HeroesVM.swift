//
//  HeroVM.swift
//  SuperHeroesApp
//
//  Created by Alex Peinado Llopis on 4/11/23.
//

import Foundation

enum HeroesViewType {
    case list
    case grid
}

final class HeroesVM: ObservableObject {
    let heroInteractor: Interactor
    @Published var heroesViewType: HeroesViewType = .list
    
    @Published var errorMsg = ""
    @Published var showError = false
    
    @Published var heroes: [HeroModel] {
        didSet {
            do {
                try heroInteractor.saveHeroes(heroes: heroes)
            } catch {
                errorMsg = error.localizedDescription
                showError.toggle()
            }
        }
    }
    
    var favoriteHeroes: [HeroModel] {
        heroes.filter { $0.isFavorite }
    }
    
    init(heroInteractor: Interactor = HeroesInteractor()) {
        self.heroInteractor = heroInteractor
        do {
            heroes = try heroInteractor.getHeroes()
        } catch {
            errorMsg = error.localizedDescription
            heroes = []
            showError.toggle()
        }
    }
    
    func deleteHero(selectedHero: HeroModel) -> Void {
        //Forma 1
//        if let index = heroes.firstIndex(where: { $0.id == selectedHero.id }) {
//            heroes.remove(at: index)
//       }
        //Forma 2
        heroes.removeAll(where: { $0.id == selectedHero.id })
    }
    
    func addFavorite(selectedHero: HeroModel) {
        if let index = heroes.firstIndex(where: { $0.id == selectedHero.id }) {
           heroes[index].isFavorite.toggle()
       }
    }
}

