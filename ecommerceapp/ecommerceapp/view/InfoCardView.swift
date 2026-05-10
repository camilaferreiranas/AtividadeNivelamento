//
//  InfoCardView.swift
//  ecommerceapp
//
//  Created by Camila Ferreira  on 10/05/26.
//

import SwiftUI

struct InfoCardView: View {

    let titulo: String
    let valor: String
    let icone: String
    let cor: Color

    var body: some View {

        VStack(spacing: 10) {

            Image(systemName: icone)
                .font(.title2)
                .foregroundStyle(cor)

            Text(valor)
                .font(.title2)
                .fontWeight(.bold)

            Text(titulo)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(.background)
        .clipShape(
            RoundedRectangle(cornerRadius: 20)
        )
        .shadow(
            color: .black.opacity(0.05),
            radius: 5,
            x: 0,
            y: 3
        )
    }
}
