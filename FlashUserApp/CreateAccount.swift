//
//  SwiftUIView.swift
//  FlashUserApp
//
//  Created by Insaram Alam Siddique on 25/10/2024.
//

import SwiftUI

struct CreateAccount: View {
    
    @State var fullName : String = ""
    
    var body: some View {
        NavigationStack{
            BaseLayout(image: Image("person"), cgb:true, showOtherOption: false){
                VStack(alignment: .leading) {
                    VStack {
                        Text("Create Account")
                            .foregroundStyle(.black)
                            .fontWeight(Font.Weight.semibold)
                            .font(.title2)
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        VStack(spacing:25){
                            Input(text: $fullName, label: "Email Address", placeholder: "Enter Email Address", isRequired: true, keyboardType: .default)
                            
                            
                            Input(text: $fullName, label: "Password", placeholder: "Enter password", isRequired: true, keyboardType: .default)
                            
                            
                            Input(text: $fullName, label: "Confitm Password", placeholder: "Confirm password", isRequired: true, keyboardType: .default)
                            NavigationLink(destination:VerifyMobile()){
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
                        VStack(spacing:25){
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
                        Spacer()
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 25)
                }
                Spacer()
                
            }
        }
    }
}

#Preview {
    CreateAccount()
}
