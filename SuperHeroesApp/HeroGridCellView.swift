//
//  HeroGridCellView.swift
//  SuperHeroesApp
//
//  Created by Alex Peinado Llopis on 9/11/23.
//

import SwiftUI

struct HeroGridCellView: View {
    let hero: HeroModel
    
    var body: some View {
        VStack {
            Image(hero.imagen)
                .resizable()
                .scaledToFit()
                .frame(width: 100)
            .clipShape(RoundedRectangle(cornerRadius: 30))
            Text(hero.apodo)
        }
    }
}

#Preview {
    HeroGridCellView(hero: .test)
}
