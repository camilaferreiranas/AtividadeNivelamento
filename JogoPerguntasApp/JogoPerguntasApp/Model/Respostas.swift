//
//  Respostas.swift
//  JogoPerguntasApp
//
//  Created by Camila Ferreira  on 24/04/26.
//

import Foundation


struct Respostas: Identifiable, Hashable{
    var id = UUID()
    var texto: String
    var correta: Bool
}
