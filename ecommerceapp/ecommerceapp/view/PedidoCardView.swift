//
//  PedidoCardView.swift
//  ecommerceapp
//
//  Created by Camila Ferreira  on 10/05/26.
//

import SwiftUI

struct PedidoCardView: View {

    let pedido: Pedido

    var body: some View {

        VStack(alignment: .leading, spacing: 14) {

            HStack {

                VStack(alignment: .leading) {

                    Text("Pedido")
                        .font(.headline)

                    Text(
                        pedido.dataCriacao,
                        format: .dateTime
                            .day()
                            .month()
                            .year()
                    )
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                }

                Spacer()

                Text(
                    pedido.total,
                    format: .currency(code: "BRL")
                )
                .font(.headline)
                .fontWeight(.bold)
                .foregroundStyle(.green)
            }

            Divider()

            ForEach(pedido.itens) { item in

                HStack {

                    Image(systemName: item.produto.imagem)
                        .foregroundStyle(.blue)

                    VStack(alignment: .leading) {

                        Text(item.produto.titulo)

                        Text("\(item.quantidade)x")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }

                    Spacer()

                    Text(
                        item.produto.preco
                        * Double(item.quantidade),
                        format: .currency(code: "BRL")
                    )
                }
            }
        }
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

