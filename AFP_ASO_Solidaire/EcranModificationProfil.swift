//
//  EcranModificationProfil.swift
//  EcranProfilUtilisateur
//
//  Created by Apprenant 07 on 02/02/2023.
//

import SwiftUI

struct EcranModificationProfil: View{
//    @Environment(\.dismiss) private var dismiss
//    var modificationProfil: ElementProfil
    @State var userName: String = ""
    @State var userLastName: String = ""
    @State var birthday: String = ""
    @State var eMail: String = ""
    @State var phoneNumber: String = ""
    @State var address: String = ""
    var body: some View{
        ZStack{
            Color("ColorVertFond")
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .trailing){
                Button{
//                    do {
//                        try Auth.auth().signOut()
//                        print("👋 Deconnexion réussie")
//                        dismiss()
//                    } catch {
//                        print("⚠️Erreur: deconnexion échouée")
//                    }
                }
                label : {
                    Text("Se deconnecter")
                }
                .frame(height: 20)
                .foregroundColor(.white)
                .padding(10)
                .background(Color.yellow)
                .cornerRadius(10)
                header()
                
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color("ColorVertRectangle"))
//Lier la photo du profil au compte
                    
                    VStack {
                        
                        ZStack{
                            Image("Pauline")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .clipShape(Circle())
//                            Button("Sign In", action: signIn){}
                            ZStack{
                                Circle()
                                    .frame(width: 50)
                                    .foregroundColor(.black)
                                Image(systemName: "square.and.pencil")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.white)
                            }
                            .padding(.top, 80)
                            .padding(.leading, 40)
                        }
                        Form {
                            Section(header: Text("Vos informations")){
                                    HStack{
                                        TextField("Prénom", text: $userName)
                                        Image(systemName: "x.circle.fill")
                                            .foregroundColor(.gray.opacity(0.4))
                                    }
                                    HStack{
                                        TextField("Nom", text: $userLastName)
                                        Image(systemName: "x.circle.fill")
                                            .foregroundColor(.gray.opacity(0.4))
                                    }
                                    HStack{
                                        TextField("Date de naissance", text: $birthday)
                                        Image(systemName: "x.circle.fill")
                                            .foregroundColor(.gray.opacity(0.4))
                                    }
                                }
                            Section(header: Text("Vos coordonnées")){
                                    HStack{
                                        TextField("Mail", text: $eMail)
                                        Image(systemName: "x.circle.fill")
                                            .foregroundColor(.gray.opacity(0.4))
                                    }
                                    HStack{
                                        TextField("Téléphone", text: $phoneNumber)
                                        Image(systemName: "x.circle.fill")
                                            .foregroundColor(.gray.opacity(0.4))
                                    }
                                    HStack{
                                        TextField("Adresse", text: $address)
                                        Image(systemName: "x.circle.fill")
                                            .foregroundColor(.gray.opacity(0.4))
                                    }
                                }
                        }
                        .scrollContentBackground(.hidden)
                        Button{}
                        label : {
                            Text("Valider")
                        }
                        .frame(width: 250, height: 55)
                        .foregroundColor(Color("ColorTextNoir"))
                        .bold()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .padding()
                    }
                    Spacer()
                }
            }
            .padding()
        }
    }
}

struct EcranModificationProfil_Previews: PreviewProvider{
    static var previews: some View{
        EcranModificationProfil()
    }
}
