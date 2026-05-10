//
//  ContentView.swift
//  ecommerceapp
//
//  Created by Camila Ferreira  on 10/05/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
   

    var body: some View {
        
       
        
        TabView {
            NavigationStack {
                HomeView()
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }
            NavigationStack {
                PedidoView()
            }.tabItem {
                Label("Pedidos", systemImage: "cart")
            }
            
            NavigationStack {
                PerfilView(usuario: Usuario(nome: "Camila", telephone: "99999999", email: "camila@teste.com"))
            }.tabItem {
                Label("Perfil", systemImage: "person")
            }
        }
    }

  
}


