//
//  HeroInteractor.swift
//  SuperHeroesApp
//
//  Created by Alex Peinado Llopis on 10/11/23.
//

import Foundation

protocol Interactor {
    var urlLocal: URL { get }
    var savedURL: URL { get }
    func getHeroes() throws -> [HeroModel]
}

extension Interactor {
    func getHeroes() throws -> [HeroModel] {
        var url = savedURL
        
        if !FileManager.default.fileExists(atPath: url.path()) {
            url = urlLocal
            let data = try Data(contentsOf: url)
            return try JSONDecoder().decode([Hero].self, from: data).map(\.mapToHeroModel)
        }
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode([HeroModel].self, from: data)
        
        
    }
    
    func saveHeroes(heroes: [HeroModel]) throws {
        //print(savedURL)
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        let data = try encoder.encode(heroes)
        try data.write(to: savedURL)
    }
}

struct HeroesInteractor: Interactor {
    let urlLocal = Bundle.main.url(forResource: "SuperHeroes", withExtension: "json")!
    var savedURL = URL.documentsDirectory.appending(path: "SavedHeroes.json")
}

