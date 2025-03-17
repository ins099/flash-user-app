//
//  Welcome.swift
//  FlashUserApp
//
//  Created by Insaram Alam Siddique on 25/10/2024.
//

import SwiftUI

struct Welcome: View {
    
    @Environment(\.safeAreaInsets) private var safeAreaInsets
    
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.primaryBlue, Color.lightBlue]), startPoint: .top, endPoint: .bottom)
                
                    VStack{
                        VStack{
                            Image("Logo")
                                .resizable()
                                .padding(16)
                                .background(Color.white)
                                .cornerRadius(10)
                            
                        }.frame(width: 200.0, height: 200.0).padding(.top,50)
                        
                        Spacer()
                        HStack(alignment:.bottom){
                        VStack(spacing:50){
                            
                            VStack(spacing:23){
                                Text("Sign Up")
                                    .font(.title3)
                                    .foregroundStyle(.white)
                                    .fontWeight(.semibold)
                                
                                NavigationLink(destination: Signup(), label: {
                                    Text("Sign up free")
                                        .foregroundStyle(.primaryBlue)
                                        .frame(maxWidth: .infinity, maxHeight: 50)
                                        .background(.white)
                                        .cornerRadius(10)
                                    
                                })
                            }
                            
                            VStack(spacing:25){
                                
                                HStack(spacing:0){
                                    Image("google")
                                        .frame(width:50, height: 50)
                                        .background(.white)
                                    Spacer()
                                    Text("Continue with Google")
                                        .fontWeight(.semibold)
                                    Spacer()
                                }
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity, maxHeight: 50)
                                .background(.darkRed)
                                .cornerRadius(10)
                                
                                
                                HStack(spacing:0){
                                    Image("facebook")
                                        .frame(width:50, height: 50)
                                        .background(.white)
                                    Spacer()
                                    Text("Continue with Facebook")
                                        .fontWeight(.semibold)
                                    Spacer()
                                }
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity, maxHeight: 50)
                                .background(.blue)
                                .cornerRadius(10)
                                
                                HStack(spacing:0){
                                    Text("Already have an account? ")
                                    NavigationLink(destination: Signup()){
                                        Text("Signup")
                                            .underline()
                                            .fontWeight(.semibold)
                                    }
                                }
                                .foregroundStyle(.white)
                            }
                            
                        }
                        }

                        
                    }
                    .padding(.top,safeAreaInsets.top)
                    .padding(.bottom,safeAreaInsets.bottom + 20)
                    .padding(.horizontal,20)
                                
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    Welcome()
}
