//
//  MainView.swift
//  Sprint2
//
//  Created by Alex Jumbo on 22/4/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Sprint 2").padding(20).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("Elige una figura para calular su área").padding(20).font(.title3)
                
                NavigationLink(destination:
                        EntradaDatos(figura:"circulo")){
                    Image("circulo").resizable().scaledToFit().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).padding(10)
                }
                NavigationLink(destination:
                        EntradaDatos(figura:"triangulo")){
                        Image("triangulo").resizable().scaledToFit().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).padding(30)
                    }
                NavigationLink(destination:
                        EntradaDatos(figura:"cuadrado")){
                        Image("cuadrado").resizable().scaledToFit().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).padding(30)
                    }
                }
            }
        }
}

#Preview {
    MainView()
    
}
