//
//  Modifiers.swift
//  SuperHeroesApp
//
//  Created by Alex Peinado Llopis on 10/11/23.
//

import SwiftUI

struct RecuadroGrisaceo: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.gray)
                    .brightness(0.3)
                    .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
            }
    }
}
