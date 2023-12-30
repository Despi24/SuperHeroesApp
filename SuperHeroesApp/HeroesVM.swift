//
//  HeroVM.swift
//  SuperHeroesApp
//
//  Created by Alex Peinado Llopis on 4/11/23.
//

import Foundation

final class HeroVM {
    var heroes: [Hero] = []
    
    init() {
        do {
            heroes = try getHeroes()
            print(heroes)
        } catch {
            print(error)
        }
    }
    
    
    func getHeroes() throws -> [Hero] {
        guard let url = Bundle.main.url(forResource: "SuperHeroes", withExtension: "json") else { return [] }
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode([Hero].self, from: data)
    }
}
