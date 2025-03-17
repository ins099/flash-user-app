//
//  ForgotPassword.swift
//  FlashUserApp
//
//  Created by Insaram Alam Siddique on 25/10/2024.
//

import SwiftUI

struct ForgotPassword: View {
    
    @Binding var isShowingDetailView: Bool
    @State var email: String
    
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button{
                    isShowingDetailView = false
                }label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.medium)
                        .frame(width: 30, height: 30)
                        .onTapGesture {
                            isShowingDetailView = false
                        }
                }
            }.padding()
            
            VStack(spacing:30){
            
            Text("Forgot password?")
                .foregroundStyle(.black)
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            Text("Enter your email below and we will send you \n verification code on email")
                .foregroundStyle(.lightgrey)
                .font(.body)
                .multilineTextAlignment(.center)
            
            Input(text: $email, label: "Email Address", placeholder: "Enter Email Address", isRequired: true, keyboardType: .default)
            
            }
            
            Text("Continue")
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, maxHeight: 50)
                .background(.primaryBlue)
                .cornerRadius(10)
            
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    @Previewable @State var isShowingDetailView : Bool = false
    
    
    ForgotPassword(isShowingDetailView: $isShowingDetailView, email:"a@a.com")
}
