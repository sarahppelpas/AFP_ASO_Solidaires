//
//   EcranOffres.swift
//  Aso
//
//  Created by sarah iglla on 01/02/2023.
//

import SwiftUI

struct EcranOffresButton: View {
    @State private var isliked = false
    @State var selection: String = ""
    let filterOption: [String] = [ " Nos offres", "Bénevolat", "Missions"
    ]
    
    var body: some View {
        
        ZStack {
       
            
             
                    Picker(
                        selection: $selection,
                        label:
                            HStack {
                                Text("Toutes nos offres")
                                Text(selection)
                                
                            }
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
                    
           
                    .frame(height: 100)
                }
            }
            
        
       
    }




struct EcranOffresButton_Previews: PreviewProvider {
    static var previews: some View {
        EcranOffresButton()
    }
}
