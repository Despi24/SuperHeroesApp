//
//  ExampleView.swift
//  SuperHeroesApp
//
//  Created by Alex Peinado Llopis on 10/11/23.
//

import SwiftUI

struct ExampleView: View {
    @State var name = ""
    
    var body: some View {
        VStack {
            Text(name)
            TextField("Nombre", text: $name)
                .textFieldStyle(.roundedBorder)
        }
    }
}

#Preview {
    ExampleView()
}
