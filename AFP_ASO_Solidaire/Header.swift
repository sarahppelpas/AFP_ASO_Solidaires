//
//  Header.swift
//  AFP_ASO_Solidaire
//
//  Created by apprenant16 on 06/02/2023.
//

import Foundation
import SwiftUI



struct header: View{
    var body: some View{
        HStack{
            Image("LogoAso")
                .resizable()
                .frame(width: 120, height: 50)
            Spacer()
            Image(systemName: "gear")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(.gray)
        }
    }
}
