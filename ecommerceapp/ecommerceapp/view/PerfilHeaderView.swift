//
//  PerfilHeaderView.swift
//  ecommerceapp
//
//  Created by Camila Ferreira  on 10/05/26.
//

import SwiftUI

struct PerfilHeaderView: View {

    let usuario: Usuario

    var body: some View {

        VStack(spacing: 16) {

            ZStack {

                Circle()
                    .fill(Color.blue.opacity(0.15))
                    .frame(width: 110, height: 110)

                Image(systemName: "person.fill")
                    .font(.system(size: 45))
                    .foregroundStyle(.blue)
            }

            VStack(spacing: 6) {

                Text(usuario.nome)
                    .font(.title2)
                    .fontWeight(.bold)

                Text(usuario.email)
                    .foregroundStyle(.secondary)

                Text(usuario.telephone)
                    .foregroundStyle(.secondary)
            }
        }
    }
}
