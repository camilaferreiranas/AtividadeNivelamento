//
//  ContentView.swift
//  JogoPerguntasApp
//
//  Created by Camila Ferreira  on 23/04/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
 
    var temas: [Temas] = [
           Temas(titulo: "Java"),
           Temas(titulo: "Golang"),
           Temas(titulo: "Clojure"),
           Temas(titulo: "Typescript"),
           Temas(titulo: "SQL")
       ]
       
       var body: some View {
           NavigationStack {
               List(temas) { tema in
                   NavigationLink(value: tema) {
                       Text(tema.titulo)
                   }
               }
               .navigationDestination(for: Temas.self) { tema in
                   QuizView(tema: tema, perguntas: perguntasPara(tema: tema))
               }
               .navigationTitle("Escolha um tema")
           }
       }
    }
    



   


#Preview {
    ContentView()
        
}
