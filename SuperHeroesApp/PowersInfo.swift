//
//  CardInfo.swift
//  SuperHeroesApp
//
//  Created by Alex Peinado Llopis on 9/11/23.
//

import SwiftUI

struct PowersInfo: View {
    let hero: HeroModel
    let poder: Poderes
    
    
    var body: some View {
        HStack(spacing: 40) {
            VStack(alignment: .leading) {
                if hero.poderes.count > 1 {
                    Text("Poderes")
                        .font(.callout)
                } else {
                    Text("Poder")
                        .font(.footnote)
                        .bold()
                }
                ForEach(hero.poderes) { poder in
                    Text("- \(poder.rawValue)")
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .recuadroGrisaceo
    }
}

#Preview {
    PowersInfo(hero: .test, poder: .controlVibraciones)
}
