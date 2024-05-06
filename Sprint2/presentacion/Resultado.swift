//
//  Resultado.swift
//  Sprint2
//
//  Created by Alex Jumbo on 5/5/24.
//

import SwiftUI

struct Resultado: View {
    @State var figura = ""
    @State var area=""
    var body: some View {
        Image(figura).resizable().scaledToFit().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).padding(10)
        
        switch(figura){
        case("triangulo"):
            Text("El área del triángulo es de " + String(area)+"cm^2, este se calcula multiplicando la longitud de la base por la de la aultura y diviendo dicho producto entre 2 ").padding(60)
        case("cuadrado"):
            Text("El área del cuadrado es de " + String(area)+"cm^2, este se calcula multiplicando las medidas de sus dos lados entre si").padding(60)
        case("circulo"):
            Text("El área del círculo es de " + String(area)+"cm^2, este se calcula multiplicando π (Pi) por su radio al cuadrado").padding(60)
        default:
            Text("")
        }
        
    }
}

#Preview {
    Resultado()
}
