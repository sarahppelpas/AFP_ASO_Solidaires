//
//  ButtonDon.swift
//  AFP_ASO_Solidaire
//
//  Created by apprenant16 on 03/02/2023.
//

import Foundation
import SwiftUI

struct ButtonDon: View  {
    var body: some View {
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
    }
}
