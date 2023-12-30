//
//  SuperHeroesAppApp.swift
//  SuperHeroesApp
//
//  Created by Alex Peinado Llopis on 4/11/23.
//

import SwiftUI

@main
struct SuperHeroesAppApp: App {
    @StateObject var heroesVM = HeroesVM()
    
    var body: some Scene {
        WindowGroup {
            HeroesTabView()
                .environmentObject(heroesVM)
        }
    }
}
