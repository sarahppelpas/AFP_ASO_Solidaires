//
//  EcranInscriptionConnexion.swift
//  EcranInscriptionConnexion
//
//  Created by apprenant13 on 02/02/2023.
//

import SwiftUI

struct EcranInscriptionConnexion: View {
    var body: some View {
        ZStack {
            Color("ColorVertFond")
                .edgesIgnoringSafeArea(.all)
            VStack {
                    Image("LogoAso")
                        .resizable()
                        .frame(width: 250, height: 100)
                        .padding(.bottom, 40)
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorRose"),Color("ColorJaune")]),startPoint: .leading, endPoint: .trailing))
                            .frame(width: 300, height: 50)
                            .padding()
                        Text("Inscription")
                            .font(.title2)
                            .foregroundColor(Color("ColorTextNoir"))
                            .padding()
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorRose"),Color("ColorJaune")]),startPoint: .leading, endPoint: .trailing))
                            .frame(width: 300, height: 50)
                            .padding()
                        Text("Connexion")
                            .font(.title2)
                            .foregroundColor(Color("ColorTextNoir"))
                            .padding()
                    
                                        }
                    
                }
            }
        }
    }

struct EcranInscriptionConnexion_Previews: PreviewProvider {
    static var previews: some View {
        EcranInscriptionConnexion()
    }
}


