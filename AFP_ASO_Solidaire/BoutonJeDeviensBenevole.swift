//
//  BoutonJeDeviensBenevole.swift
//  EcranDetailPostuler
//
//  Created by apprenant13 on 02/02/2023.
//

import SwiftUI

struct BoutonJeDeviensBenevole: View {
    @State private var deviensBenevole = false
    var body: some View {
        VStack {
            Button(deviensBenevole ? " Je suis bénévole" : "Je deviens bénévole") {
                deviensBenevole.toggle()
            }
//            Text(deviensBenevole.description)
        }
        .tint(Color("ColorJaune"))
        .foregroundColor(Color.black)
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.roundedRectangle)
        
        
    }
}

struct BoutonJeDeviensBenevole_Previews: PreviewProvider {
    static var previews: some View {
        BoutonJeDeviensBenevole()
    }
}
