//
//  ContentView.swift
//  EcranProfilUtilisateur
//
//  Created by Apprenant 07 on 01/02/2023.
//

import SwiftUI

struct EcranProfilUtilisateur: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("ColorApp")
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    header()
                    
                    Image("Pauline")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .imageScale(.large)
                    Text("Pauline PuechBroussoux")
//Button modification
                        Button{}
                        label : {
                            Text("Modifier le profil")
                                    .foregroundColor(Color("ColorText"))
                        }
                        .frame(width: 250, height: 55)
                        .foregroundColor(.white)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
//End button modification
                    Spacer()
                    ForEach(elements){ details in
                        NavigationLink(destination: EcranDetailProfilElement(detailElement: details)){
                                HStack {
                                    Text(details.name)
                                    Spacer()
                                    Image(systemName: details.icon)
                                }
                                .foregroundColor(Color("ColorText"))
                                .padding()
                                .background(Color("ColorButton"))
                                .cornerRadius(10)
                        }
                    }
                    .foregroundColor(Color("ColorText"))
                    Spacer()
                }
                .padding()
            }
        }
        .navigationBarTitle("Profil")
    }
}
struct header: View{
    var body: some View{
        HStack{
            Image("LogoAso")
                .resizable()
                .frame(width: 120, height: 50)
            Spacer()
            Image(systemName: "gear")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(.gray)
        }
    }
}

struct ElementProfil: Identifiable{
    var id = UUID()
    var name: String
    var icon: String
}

var elements = [
    ElementProfil(name: "Candidatures", icon: "pencil.line"),
    ElementProfil(name: "Notifications", icon: "bell"),
    ElementProfil(name: "Favoris", icon: "heart"),
    ElementProfil(name: "Dons", icon: "eurosign.circle")
]
struct EcranProfilUtilisateur_Previews: PreviewProvider {
    static var previews: some View {
        EcranProfilUtilisateur()
    }
}
