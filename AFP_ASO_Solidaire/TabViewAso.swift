//
//  TabViewAso.swift
//  ProjetAso
//
//  Created by Apprenant 06 on 03/02/2023.
//

import SwiftUI

struct TabViewAso: View {
    
    init() {
    UITabBar.appearance().backgroundColor = UIColor.white

    }
    var body: some View {
        TabView {
           
            EcranOffres()
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("Offres")
                        .font(.title3)
                }
//            EcranGeolocalisation()
//                .tabItem {
//                    Image(systemName: "map.fill")
//                    Text("Carte")
//                        .font(.title3)
//                }
            EcranProfilUtilisateur()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profil")
                        .font(.title3)
                }
                .background(.black)
                .edgesIgnoringSafeArea(.top)
            
        }
        
        .accentColor(Color("ColorRose"))
            
    }
}

struct TabViewAso_Previews: PreviewProvider {
    static var previews: some View {
        TabViewAso()
    }
}
