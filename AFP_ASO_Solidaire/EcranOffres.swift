//
//   EcranOffres.swift
//  Aso
//
//  Created by sarah iglla on 01/02/2023.
//

import SwiftUI

struct EcranOffres: View {
    @State var searchText: String = ""
    @State private var isliked = false
    @State var OffreButton = "+ Voir l'offre"
    
    
    
    var body: some View {
        
        ZStack {
            Color("ColorVertFond")
         
                VStack{
                    header()
                        .padding()
                    RechercheBar()
                    
                    
                    HStack{
                        EcranOffresButton()
                        
                        
                        ButtonDon()
                        
                        Spacer()
                        
                    }
                    .padding()
                    
                 
                    
                
                }
            

                
                }
               

            }
            
        }
    



struct Offres: View {
    @Binding var OffreButton: String
    var body: some View {
        Button  (action: {
        }, label: {
            Text("+ voir l'offre")
                .font(.caption)
                .foregroundColor(.black)
                .padding(9)
                .background(Color("ColorJaune"))
                .cornerRadius(20)
        })
    }
}
struct OffreAssociation: Identifiable {
    
    let id = UUID()
    var titreOffreAssociation: String
    var mission: String
    var imageAssociation: String
    //let localisationOffre: CLLocationCoordinates2D
}

var offresAssociations = [
    OffreAssociation(titreOffreAssociation: "Secours Populaire", mission: "bénévolat-Distribution de repas", imageAssociation: "SecourPopulaire"),
    OffreAssociation(titreOffreAssociation: "Restos du coeur", mission: "bénévolat-Distribution de repas", imageAssociation: "RestosDuCoeur"),
    OffreAssociation(titreOffreAssociation: "Banque alimentaire", mission: "bénévolat-Distribution de repas", imageAssociation: "BanqueAlimentaire"),
    OffreAssociation(titreOffreAssociation: "Les Resto du coeur", mission: "bénévolat-Distribution de repas", imageAssociation: "RestosDuCoeur"),
    OffreAssociation(titreOffreAssociation: "Secours Populaire", mission: "bénévolat-Distribution de repas", imageAssociation: "SecourPopulaire")
]
struct HeartButton: View {
    @Binding var isliked: Bool
    
    var body: some View {
        Button (action: {
            self.isliked.toggle()
        }, label: {
            Image(systemName: isliked ? "heart.fill" : "heart")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 20, height: 20)
                .foregroundColor(isliked ? .red : .gray)
            
        })
    }
}
struct EcranOffres_Previews: PreviewProvider {
    static var previews: some View {
        EcranOffres()
    }
}
