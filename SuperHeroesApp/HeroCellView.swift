//
//  HeroCell.swift
//  SuperHeroesApp
//
//  Created by Alex Peinado Llopis on 6/11/23.
//

import SwiftUI

struct HeroeCell: View {
    let hero: Hero
    
    var body: some View {
        VStack {
            Text(hero.apodo)
        }
    }
}

//#Preview {
//    HeroCell(hero: hero)
//}
