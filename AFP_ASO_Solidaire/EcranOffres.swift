//
//   EcranOffres.swift
//  Aso
//
//  Created by sarah iglla on 01/02/2023.
//

import SwiftUI

struct EcranOffres: View {
    @State var searchText: String = ""
    
    
    
    
    
    var body: some View {
        
        
        
        ZStack {
            Color("ColorVertFond")
                .ignoresSafeArea()
            
            VStack{
                
                
                header()
                    .padding()
                
                RechercheBar()
                    .padding()
                
                
                
                
                VStack{
                    
                    
                    EcranOffresButton()
                    
                    
                    
                    
                }
                
                ScrollView {
                    
                    
                    VStack{
                        
                        EcranListAssociationOffres()
                            .padding()
                        
                        
                    }
                    .frame(height: 550)
                }
                
                
            }
        }
        
    }
}


struct EcranOffres_Previews: PreviewProvider {
    static var previews: some View {
        EcranOffres()
    }
}
