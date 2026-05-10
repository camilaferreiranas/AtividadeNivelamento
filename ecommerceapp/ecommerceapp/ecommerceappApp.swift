//
//  ecommerceappApp.swift
//  ecommerceapp
//
//  Created by Camila Ferreira  on 10/05/26.
//

import SwiftUI
import SwiftData

@main
struct ecommerceappApp: App {

    @StateObject var carrinho = CarrinhoViewModel()
    @StateObject var pedido = PedidoViewModel()
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(carrinho)
                .environmentObject(pedido)
        }
        .modelContainer(sharedModelContainer)
    }
}
