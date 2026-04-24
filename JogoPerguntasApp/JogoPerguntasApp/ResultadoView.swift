//
//  Resultado.swift
//  JogoPerguntasApp
//
//  Created by Camila Ferreira  on 24/04/26.
//

import Foundation
import SwiftUI

struct ResultadoView: View {
    let acertos: Int
    let total: Int
    let reiniciar: () -> Void
    
    var porcentagem: Int {
        Int((Double(acertos) / Double(total)) * 100)
    }
    
    var nomeDaImagem: String {
        switch porcentagem {
        case 100: return "perfeito"
        case 80...99: return "excelente"
        case 60...79: return "bomtrabalho"
        case 40...59: return "estudemais"
        default: return "continueestudando"
        }
    }
    
    var mensagem: String {
        switch porcentagem {
        case 100: return "Perfeito, continue assim"
        case 80...99: return "Excelente "
        case 60...79: return "Bom trabalho, mas..."
        case 40...59: return "Estude mais... Muito mais "
        default: return "Comece a estudar... Urgente!"
        }
    }
    
    var body: some View {
        VStack(spacing: 24) {
            Spacer()
            
           Image(nomeDaImagem)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
            Text(mensagem)
                .font(.system(size: 20, weight: .semibold))
                
            
            Text("\(acertos) de \(total) acertos")
                .font(.title2)
                .foregroundStyle(.secondary)
            
            Text("\(porcentagem)%")
                .font(.system(size: 80, weight: .bold))
                .foregroundStyle(porcentagem >= 60 ? .green : .orange)
            
            Spacer()
            
            Button(action: reiniciar) {
                Text("Tentar novamente")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .padding(.horizontal)
        }
    }
}
