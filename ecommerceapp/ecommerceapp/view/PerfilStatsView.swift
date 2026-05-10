//
//  PerfilStatsView.swift
//  ecommerceapp
//
//  Created by Camila Ferreira  on 10/05/26.
//

import SwiftUI

struct PerfilStatsView: View {

    let totalPedidos: Int
    let totalItens: Int

    var body: some View {

        HStack(spacing: 16) {

            InfoCardView(
                titulo: "Pedidos",
                valor: "\(totalPedidos)",
                icone: "shippingbox.fill",
                cor: .blue
            )

            InfoCardView(
                titulo: "Itens",
                valor: "\(totalItens)",
                icone: "cart.fill",
                cor: .green
            )
        }
        .padding(.horizontal)
    }
}

