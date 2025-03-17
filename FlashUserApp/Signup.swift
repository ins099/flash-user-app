//
//  SwiftUIView.swift
//  FlashUserApp
//
//  Created by Insaram Alam Siddique on 25/10/2024.
//

import SwiftUI

struct Signup: View {
    
    @State var fullName : String = ""
    
    var body: some View {
        NavigationStack{
            BaseLayout(cgb:true, showOtherOption: false){
                VStack(alignment: .leading) {
                    VStack {
                        Text("Sign Up")
                            .foregroundStyle(.black)
                            .fontWeight(Font.Weight.semibold)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack(spacing:25){
                            Input(text: $fullName, label: "Email Address", placeholder: "Enter Email Address", isRequired: true, keyboardType: .default)
                            
                            NavigationLink(destination: CreateAccount()){
                                Text("Continue")
                                    .foregroundStyle(.white)
                                    .frame(maxWidth: .infinity, maxHeight: 50)
                                    .background(.primaryBlue)
                                    .cornerRadius(10)
                            }
                            
                        }
                        .padding(.top, 10)
                        Spacer()
                        OrSeparator()
                        Spacer()
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
                                NavigationLink(destination: Signin()){
                                    Text("Sign In")
                                        .underline()
                                        .fontWeight(.semibold)
                                }
                            }
                            .foregroundStyle(.black)
                            .padding(.bottom,35)
                        }
                        
                        
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                }
                Spacer()
                
            }
        }
    }
}

struct OrSeparator :View {
    var body: some View{
        HStack{
            VStack{}
                .frame(maxWidth: .infinity)
                .frame(height:0.5)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray.opacity(0.6), lineWidth: 1)
                )
            Text("OR")
                .frame(width: 100)
                .font(.footnote)
                .foregroundStyle(.gray)
            
            
            VStack{}
                .frame(maxWidth: .infinity)
                .frame(height:0.5)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray.opacity(0.6), lineWidth: 1)
                )
            
        }
    }
}

#Preview {
    Signup()
}
