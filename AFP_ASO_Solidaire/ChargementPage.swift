//
//  ChargementPage.swift
//  ASO2
//
//  Created by sarah iglla on 03/02/2023.

import SwiftUI
struct ChargementPage: View {
    @State private var offset1: CGSize = .zero
    @State private var offset2: CGSize = .zero
    @State private var offset3: CGSize = .zero
    @State private var isActive = false
    @State private var showNextScreen = false
        
        var body: some View {
            ZStack {
                Color("ColorVertFond")
                    .ignoresSafeArea()
                
                VStack {
                    Image("LogoAso")
                        .resizable()
                        .frame(width: 300, height: 145)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    
                    Text("Alimention Solidaire")
                        .foregroundColor(Color.secondary)
                        .padding(.bottom)
                        .font(.title2)
                    
                    HStack {
                        Circle()
                            .fill(AngularGradient(gradient: Gradient(colors: [Color("ColorRose"), Color("ColorJaune")]), center: .center))
                            .frame(width: 30, height: 30)
                            .padding()
                            .offset(offset1)
                            .onAppear() {
                                withAnimation(Animation.spring().repeatForever(autoreverses: true).speed(2.4)) {
                                    self.offset1.height = 8
                                }
                            }
                        
                        Circle()
                            .fill(AngularGradient(gradient: Gradient(colors: [Color("ColorRose"), Color("ColorJaune")]), center: .center))
                            .frame(width: 30, height: 30)
                            .padding()
                            .offset(offset2)
                            .onAppear() {
                                withAnimation(Animation.spring().repeatForever(autoreverses: true).speed(2.3)) {
                                    self.offset2.height = 8
                                }
                            }
                        
                        Circle()
                            .fill(AngularGradient(gradient: Gradient(colors: [Color("ColorRose"), Color("ColorJaune")]), center: .center))
                            .frame(width: 30, height: 30)
                            .padding()
                            .offset(offset3)
                            .onAppear() {
                                withAnimation(Animation.spring().repeatForever(autoreverses: true).speed(2)) {
                                    self.offset3.height = 8
                                }
                            }
                    }
                }
                if showNextScreen {
                    EcranOffres()
                }
            }
            .onAppear() {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    self.showNextScreen = true
                }
            }
        }
    }


    struct ChargementPage_Previews: PreviewProvider {
        static var previews: some View {
            ChargementPage()
        }
    }
