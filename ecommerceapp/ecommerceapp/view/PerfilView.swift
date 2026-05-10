//
//  PerfilView.swift
//  ecommerceapp
//
//  Created by Camila Ferreira  on 10/05/26.
//

import SwiftUI

struct PerfilView: View {

    let usuario: Usuario

    @EnvironmentObject var pedidos: PedidoViewModel

    var body: some View {

        NavigationStack {

            ScrollView {

                VStack(spacing: 24) {

                    PerfilHeaderView(usuario: usuario)

                    PerfilStatsView(
                        totalPedidos: pedidos.pedidos.count,
                        totalItens: totalItensPedidos
                    )

                    if pedidos.pedidos.isEmpty {

                        EmptyPedidoView()

                    } else {

                        LazyVStack(spacing: 16) {

                            ForEach(pedidos.pedidos) { pedido in

                                PedidoCardView(
                                    pedido: pedido
                                )
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.vertical)
            }
            .navigationTitle("Perfil")
        }
    }

    var totalItensPedidos: Int {

        pedidos.pedidos.reduce(0) { parcial, pedido in

            parcial + pedido.itens.reduce(0) {
                $0 + $1.quantidade
            }
        }
    }
}
