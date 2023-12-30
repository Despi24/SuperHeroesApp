//
//  HeroCell.swift
//  SuperHeroesApp
//
//  Created by Alex Peinado Llopis on 6/11/23.
//

import SwiftUI

struct HeroCellView: View {
    let hero: HeroModel
    
    var body: some View {
        HStack {
            Image(hero.imagen)
                .resizable()
                .scaledToFit()
                .frame(width: 80)
                .clipShape(Circle())
                .padding(.trailing)
            VStack(alignment: .leading) {
                Text(hero.apodo)
                    .font(.title2)
                ForEach(hero.poderes) { poder in
                    Text("\(poder.rawValue)")
                }
                .font(.subheadline)
            }
            if hero.isFavorite {
                Spacer()
                Image(systemName: "star")
                    .symbolVariant(.fill)
                    .foregroundStyle(.yellow)
                    .padding(.leading, 30)
            }
        }
    }
}


#Preview {
    HeroCellView(hero: .test)
}
