//
//  ContentView.swift
//  LampadaMagica
//
//  Created by Filipe Alves on 29/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var lampadaLigada: Bool = false
    @State var lampadaPotencia: Double = 1.0
    
    var body: some View {
        VStack {
            Text("Lâmpada Mágica")
                .font(.largeTitle)
                .padding()
            
            Image(systemName: "lightbulb")
                .font(.system(size: 200))
            
            Spacer()
            
            HStack {
                Text("Lâmpada: ")
                
                Toggle(lampadaLigada ? "desligar" : "ligar", isOn: $lampadaLigada )
            }
            
            HStack {
                Text("Potência: ")
                
                Slider(value: lampadaLigada ? $lampadaPotencia : .constant(0)
                )
                
                Text("\(lampadaLigada ? lampadaPotencia * 100 : 0.0, specifier: "%.0f")%")
            }
        }
        .padding([.leading, .bottom, .trailing])
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(lampadaLigada ? .yellow.opacity(lampadaPotencia) : .white
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
