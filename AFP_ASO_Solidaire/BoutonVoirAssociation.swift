//
//  BoutonVoirAssociation.swift
//  EcranDetailPostuler
//
//  Created by apprenant13 on 02/02/2023.
//

import SwiftUI

struct BoutonVoirAssociation: View {
    @State private var voirAssociation: String = "Voir l'association"
    var body: some View {
        VStack {
            Button(action: { voirAssociation = (voirAssociation == "Ne pas ouvrir" ? "Voir Association" : "ouvrir") }) {
                Text("En savoir +")
                    .foregroundColor(Color("ColorTextNoir"))
            }
    
                            .tint(Color("ColorVertBouton"))
                            .buttonStyle(.borderedProminent)
                            .buttonBorderShape(.capsule)
                            .frame(width: 150, height: 20)
            Button(action: { voirAssociation = "Voir Association" }) {
//                Text("En savoir +")
//                    .foregroundColor(Colorgrisfonce)
            }
        }
    }
}

struct BoutonVoirAssociation_Previews: PreviewProvider {
    static var previews: some View {
        BoutonVoirAssociation()
    }
}
