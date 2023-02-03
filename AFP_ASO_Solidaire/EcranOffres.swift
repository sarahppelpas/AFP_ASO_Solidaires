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
    @State var selection: String = ""
    let filterOption: [String] = [ " Nos offres", "Bénevolat", "Missions"
    ]
    
    var body: some View {
        
        ZStack {
            Color("ColorVertFond")
            VStack {
                HStack {
                    
                }
                .padding()
                ZStack {
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color.gray)
                            .padding(3)
                            .frame(width: 60)
                        TextField("Recherche", text: $searchText)
                    }
                    .padding(10)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .shadow(radius: 5)
                            .frame(width: 350)
                    )
                }
                HStack{
                    Picker(
                        selection: $selection,
                        label:
                            HStack {
                                Text("Toutes nos offres")
                                Text(selection)
                                    
                            }
                            //.padding()
                            .padding(8)
                            .background(Color.black),
                        
                        content:  {
                            ForEach(filterOption, id: \.self) { option in
                                Text(option)
                                    .tag(option)
                            }
                        })
                    .frame(width: 160, height: 26)
                    .padding(11)
                    .background(Color("ColorJaune"))
                    .cornerRadius(10)
                    
                    Button (action: {
                    }, label: {
                        Text("Faire un don")
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .padding(14)
                            .padding(.horizontal)
                            .background(Color("ColorVertBouton"))
                            .cornerRadius(10)
                    })
                    .frame(height: 100)
                }
                
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 350,height: 120)
                        .foregroundColor(Color.white)
                        .shadow(radius: 20)
                    HStack {
                        Rectangle()
                            .frame(width: 230, height: 100)
                            .foregroundColor(Color.white)
                        VStack{
                            HeartButton(isliked: $isliked)
                                .padding(15)
                            Offres(OffreButton: $OffreButton)
                                
                        }
                    }
                    Text("hello")
                        .frame(width: 300, height: 0, alignment: .leading)
                        .foregroundColor(Color.black)
                        .font(.headline)
                        
                        
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 350,height: 120)
                        .foregroundColor(Color.white)
                        .shadow(radius: 20)
                    HStack {
                        Rectangle()
                            .frame(width: 230, height: 100)
                            .foregroundColor(Color.white)
                        VStack{
                            HeartButton(isliked: $isliked)
                                .padding(15)
                            Offres(OffreButton: $OffreButton)
                        }
                    }
                    Text("hello")
                        .frame(width: 300, height: 0, alignment: .leading)
                        .foregroundColor(Color.black)
                        .font(.headline)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 350,height: 120)
                        .foregroundColor(Color.white)
                        .shadow(radius: 20)
                    HStack{
                        Rectangle()
                            .frame(width: 230, height: 100)
                            .foregroundColor(Color.white)
                    VStack{
                        HeartButton(isliked: $isliked)
                            .padding(15)
                        Offres(OffreButton: $OffreButton)
                    }
                }
                Text("hsikvb")
                        .frame(width: 300, height: 0, alignment: .leading)
                        .foregroundColor(Color.black)
                        .font(.headline)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 350,height: 120)
                        .foregroundColor(Color.white)
                        .shadow(radius: 20)
                    HStack{
                        Rectangle()
                            .frame(width: 230, height: 100)
                            .foregroundColor(Color.white)
                        VStack{
                            HeartButton(isliked: $isliked)
                                .padding(15)
                            Offres(OffreButton: $OffreButton)
                        }
                }
                    Text("hello")
                        .frame(width: 300, height: 0, alignment: .leading)
                        .foregroundColor(Color.black)
                        .font(.headline)
                }
            }
           
            }
        .ignoresSafeArea()
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