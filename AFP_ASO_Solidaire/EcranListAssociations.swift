//
//  EcranListAssociations.swift
//  EcranGeolocalisation2
//
//  Created by Apprenant 07 on 03/02/2023.
//

import SwiftUI
import CoreLocation
struct EcranListAssociations: View{
    var body: some View{
        NavigationStack{
            List(associationsList){asso in
                NavigationLink(destination: EcranProfilAssociation(associationType: asso)){
                    HStack(){
                        ZStack{
                            Circle()
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50)
                                .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 0)
                            Image(asso.logo)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                        }
                        Text(asso.name)
                            .foregroundColor(.gray)
                            .padding()
                    }
                }
            }
            .navigationBarTitle("Les associations")
            .toolbar{
                NavigationLink(destination: EcranGeolocalisation()){
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 55,height:45)
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                        VStack {
                            Image(systemName: "map")
                                .foregroundColor(.gray)
                            Text("Map")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                }
                .padding()
            }
        }
    }
}

struct AssociationProperty: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let logo: String
    let adress: String
}

var associationsList = [
    AssociationProperty(name: "Emmaüs Toulouse", coordinate: CLLocationCoordinate2D(latitude: 43.6043, longitude: 1.4437), logo: "EmmausToulouse", adress: "17 bis Chem. de Croix Bénite,\r 31200 Toulouse"),
    AssociationProperty(name: "Les restos du coeur", coordinate: CLLocationCoordinate2D(latitude: 43.592874, longitude: 1.41116), logo: "RestosDuCoeur", adress: "63 Rue de Negogousses,\r 31100 - Toulouse"),
    AssociationProperty(name: "Banque ALimentaire", coordinate: CLLocationCoordinate2D(latitude:  43.64385, longitude: 1.433366), logo: "BanqueAlimentaire", adress: "197 Av. de Fronton,\r 31200 Toulouse"),
    AssociationProperty(name: "Le Secours Populaire", coordinate: CLLocationCoordinate2D(latitude:  43.635538, longitude: 1.430588), logo: "SecoursPopulaire", adress: "147 Av. des États-Unis,\r 31200 Toulouse"),
    AssociationProperty(name: "La croix Rouge Française", coordinate: CLLocationCoordinate2D(latitude:  43.610122, longitude: 1.447976), logo: "CroixRouge", adress: "20 rue Raymond IV,\r 31200 Toulouse"),
    AssociationProperty(name: "Secours Catholique", coordinate: CLLocationCoordinate2D(latitude:  43.615276, longitude: 1.4564), logo: "SecoursCatholique", adress: "56 Rue de Périole, \r 31500 Toulouse"),
    AssociationProperty(name: "La Main a la Pate", coordinate: CLLocationCoordinate2D(latitude:  43.575239, longitude: 1.465262), logo: "LaMainALaPate", adress: "62 rue de Nîmes,\r 31400 Toulouse"),
    AssociationProperty(name: "Association ARCEA", coordinate: CLLocationCoordinate2D(latitude:  43.6043, longitude: 1.4437), logo: "AssociationArcea", adress: "42 rue chemin des Pradettes,\r 31100 Toulouse"),
    AssociationProperty(name: "Médecins du monde", coordinate: CLLocationCoordinate2D(latitude:  43.61097, longitude: 1.452632), logo: "MedecinsDuMonde", adress: "5 Bd Bonrepos,\r 31000 Toulouse"),
    AssociationProperty(name: "Société Saint Vincent de Paul", coordinate: CLLocationCoordinate2D(latitude:  43.604105, longitude: 1.454121), logo: "SSVP", adress: "")
]

struct EcranListAssociations_Previews: PreviewProvider{
    static var previews: some View{
        EcranListAssociations()
    }
}
