//
//  EntradaDatos.swift
//  Sprint2
//
//  Created by Alex Jumbo on 22/4/24.
//

import SwiftUI
struct EntradaDatos: View {
    @State var figura = ""
    @State var altura = ""
    @State var base = ""
    @State var radio = ""
    @State var lado = ""
    
    var body: some View {
            VStack{
            Image(figura).resizable().scaledToFit().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).padding(10)
                switch(figura){
                case("triangulo"):
                    TextField("Medida de la base: ", text:$base).keyboardType(.numbersAndPunctuation).padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .padding()
                    TextField("Medida de la altura: ", text:$altura).keyboardType(.numbersAndPunctuation).padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .padding()
                case("cuadrado"):
                    TextField("Medida del lado: ", text:$lado).keyboardType(.numbersAndPunctuation).padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .padding()
                case("circulo"):
                    TextField("Medida del radio: ", text:$radio).keyboardType(.numbersAndPunctuation).padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .padding()
                default:
                    Text("")
                }
                if(camposCorrectos(campo:base)&&camposCorrectos(campo:altura)||camposCorrectos(campo:radio)||camposCorrectos(campo:lado)){
                    NavigationLink(destination:Resultado(figura:figura, area:String(calcularArea(figura:figura,altura:altura, base:base,radio:radio,lado:lado)))){
                        Text("Calcular")
                    }
                }
                Spacer()
            }
        }
}

#Preview {
    EntradaDatos()
}
