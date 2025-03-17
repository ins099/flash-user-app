//
//  SwiftUIView.swift
//  FlashUserApp
//
//  Created by Insaram Alam Siddique on 25/10/2024.
//

import SwiftUI

struct Signin: View {
    
    @State var fullName : String = ""
    @State var isPresented: Bool = false
    
    var body: some View {
        NavigationStack{
            BaseLayout(cgb:true, showOtherOption: false){
                VStack(alignment: .leading) {
                    VStack {
                        Text("Sign In")
                            .foregroundStyle(.black)
                            .fontWeight(Font.Weight.semibold)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack(){
                            Input(text: $fullName, label: "Email Address", placeholder: "Enter Email Address", isRequired: true, keyboardType: .default)
                            
                            
                            Input(text: $fullName, label: "Password", placeholder: "Enter password", isRequired: true, keyboardType: .default)
                            
                            HStack{
                                Spacer()
                                Text("Forgot Pssword?")
                                    .font(.footnote)
                                    .padding(.vertical,5)
                                    .foregroundStyle(.primaryBlue)
                                    .onTapGesture {
                                        isPresented.toggle()
                                    }
                            }
                            
                            Text("Continue")
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity, maxHeight: 50)
                                .background(.primaryBlue)
                                .cornerRadius(10)
                            
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
            .sheet(isPresented: $isPresented){
                ForgotPassword(isShowingDetailView: $isPresented, email: "String")
            }

        }
    }
}

#Preview {
    Signin()
}
