//
//  ListAssociationOffres.swift
//  AFP_ASO_Solidaire
//
//  Created by apprenant16 on 04/02/2023.
//

import Foundation
import SwiftUI

struct EcranListAssociationOffres: View {
    @State var searchText: String = ""
    @State private var isliked = [false, false, false]
    @State private var isassociation = [false, false, false]
    @State var OffreButton = "+ Voir l'offre"
    
    let associations = [
        ListOffreAssociation(titreOffreAssociation: "Secours Populaire", mission: "bénévolat-Distribution de repas", imageAssociation: "SecourPopulaire", dateOffres: 10),
        ListOffreAssociation(titreOffreAssociation: "Restaurants du Coeur", mission: "Distribution de repas", imageAssociation: "RestaurantsduCoeur", dateOffres: 12),
        ListOffreAssociation(titreOffreAssociation: "Handicap International", mission: "Aide aux personnes handicapées", imageAssociation: "HandicapInternational", dateOffres: 14)
    ]
    
    
    
    var body: some View {
        VStack {
            
            ForEach(0 ..< associations.count, id: \.self) { index in
                    let association = associations[index]
                ZStack{
                    
                    
                    RoundedRectangle(cornerRadius: 10)
                    
                        .foregroundColor(Color.white)
                        .shadow(radius: 20)
                       
                    
                    HStack{
                        
                        VStack{
                            
                        Text(association.titreOffreAssociation)
                            .foregroundColor(Color.black)
                            .font(.headline)
                            .padding()
                        
                        
                        
                        Text("\(association.dateOffres) février 2023")
                    }
                          
                        
                        
                            
                        Spacer()
                      
                        
                        VStack{
                            
                            HeartButton(isliked: self.$isliked[index])
                               
                            
                            
                            
                            
                            ListOffres(OffreButton: self.$OffreButton)
                                .padding()
                            
                              
                            
                        }
                       
                    }
                    
                }

            }
        }
    }
}


struct ListOffreAssociation: Identifiable {
    let id = UUID()
    var titreOffreAssociation: String
    var mission: String
    var imageAssociation: String
    var dateOffres: Int
  
}


struct ListOffres: View {
    @Binding var OffreButton: String
    var body: some View {
        
        
        Button  (action: {
        }, label: {
            Text("+ voir l'offre")
                .foregroundColor(.black)
                .background(Color("ColorJaune"))
                .cornerRadius(10)
            
        })
    }
}

struct HeartButton: View {
    @Binding var isliked: Bool
    
    var body: some View {
        Button (action: {
            self.isliked.toggle()
        }, label: {
            Image(systemName: isliked ? "heart.fill" : "heart")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(isliked ? .red : .gray)
            
        })
    }
}



struct EcranListAssociationOffres_Previews: PreviewProvider {
    static var previews: some View {
        EcranListAssociationOffres()
    }
}
