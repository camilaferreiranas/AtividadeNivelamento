//
//  EmptyPedidoView.swift
//  ecommerceapp
//
//  Created by Camila Ferreira  on 10/05/26.
//

import SwiftUI

struct EmptyPedidoView: View {

    var body: some View {

        VStack(spacing: 16) {

            Image(systemName: "shippingbox")
                .font(.system(size: 60))
                .foregroundStyle(.gray)

            Text("Nenhum pedido encontrado")
                .font(.title3)
                .fontWeight(.semibold)

            Text("Seus pedidos aparecerão aqui")
                .foregroundStyle(.secondary)
        }
        .padding(.top, 40)
    }
}
