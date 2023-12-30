//
//  Test.swift
//  SuperHeroesApp
//
//  Created by Alex Peinado Llopis on 6/11/23.
//

import Foundation

extension HeroModel {
    static let test = HeroModel(id: "", nombreReal: "Alex Peinado", apodo: "Despi", descripcion: "Aprendiz de SwiftUI, tecleando en lenguaje Swift desde hace unos meses.", historia: "", edad: 33, poderes: [.controlVibraciones, .emisionLuz, .giroRapido], imagen: "AvatarDespi", isFavorite: true)
}

struct TestHeroesInteractor: Interactor {
    var savedURL = URL.documentsDirectory.appending(path: "SavedHeroes.json")
    let urlLocal = Bundle.main.url(forResource: "HeroesTest", withExtension: "json")!
}
