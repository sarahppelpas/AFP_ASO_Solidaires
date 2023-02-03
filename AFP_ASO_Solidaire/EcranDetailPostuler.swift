//
//  EcranDetailPostuler.swift
//  EcranDetailPostuler
//
//  Created by apprenant13 on 01/02/2023.
//

import SwiftUI

struct EcranDetailPostuler: View {
    var body: some View {
        ZStack {
            Color("ColorVertFond")
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Image("LogoAso")
                        .resizable()
                        .frame(width: 120, height: 50)
                        .padding()
                        .frame(height: 40)
                    Spacer()
                }
                .padding(.bottom, 40)
                ZStack {
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(.white)
                        .frame(width: 350, height: 600)
                        .shadow(radius: 4)
                        .padding(.bottom, 50)
                    VStack{
                        HStack{
                            VStack(alignment: .trailing) {
                                Image("RestosDuCoeur")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .background(.gray)
                                    .clipShape(Circle ())
                                    .shadow(radius: 4)
                            }
                            
                            .padding(.bottom)
                            .padding()
                            Spacer()
                            VStack {
                                Text("Les Restos du Coeur")
                                    .font(.title2)
                                    .foregroundColor(Color("ColorTextNoir"))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("Bénévolat - Distribution")
                                    .foregroundColor(Color("ColorTextNoir"))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.bottom, 20)
                            }
                            .padding(.bottom)
                        }
                        VStack (alignment: .leading) {
                            
                            Text("Les Restos du Coeur")
                                .fontWeight(.semibold)
                                .foregroundColor(Color("ColorTextNoir"))
                            Text("S'engager aux côtés des Restos c'est permetre à\rl'association de continuer de bénéficier de soutien...")
                                .font(.system(size: 16))
                                .foregroundColor(Color("ColorTextNoir"))
                            Text("Les missions")
                                .fontWeight(.semibold)
                                .foregroundColor(Color("ColorTextNoir"))
                            Text("S'engager aux côtés des Restos c'est permetre à\rl'association de continuer de bénéficier de soutien...")
                                .font(.system(size: 16))
                                .foregroundColor(Color("ColorTextNoir"))
                            Text("Disponibilités")
                                .fontWeight(.semibold)
                                .foregroundColor(Color("ColorTextNoir"))
                            Text("S'engager aux côtés des Restos c'est permetre à\rl'association de continuer de bénéficier de soutien...")
                                .font(.system(size: 16))
                                .foregroundColor(Color("ColorTextNoir"))
                            HStack {
                                Image(systemName: "mappin.circle.fill")
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor (Color("ColorOrange"))
                                Text("31 rue du Casino, 31300 Toulouse")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color("ColorTextNoir"))
                            }
                        }
                        .padding()
                        
                                                Spacer()
                        
                        VStack {
                            BoutonVoirAssociation()
                            Spacer()
                                .frame(height: 30)
                            BoutonJeDeviensBenevole()
                                                           
                        }
                        .padding(.bottom, 50)
                        Spacer()
                    }
                    .padding()
                }
            }
            .padding()
        }
    }
}


struct DetailPostuler_Previews: PreviewProvider {
    static var previews: some View {
        EcranDetailPostuler()
    }
}
