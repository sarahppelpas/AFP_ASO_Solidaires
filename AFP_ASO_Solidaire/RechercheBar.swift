//
//  RechercheBar.swift
//  AFP_ASO_Solidaire
//
//  Created by apprenant16 on 03/02/2023.
//

import Foundation
import SwiftUI

struct RechercheBar: View {
    @State var searchText: String = ""
    var body: some View {
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
}
