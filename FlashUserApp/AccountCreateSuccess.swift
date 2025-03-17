//
//  AccountCreateSuccess.swift
//  LibraryApp
//
//  Created by Insaram Alam Siddique on 24/10/2024.
//

import SwiftUI

struct AccountCreateSuccess: View {
    var body: some View {
        NavigationStack{
            BaseLayout(cgb:true){
                VStack(spacing:30){
                    Image("accountCreateSucces")
                    Text("Success")
                        .foregroundStyle(.primaryBlue)
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    
                    Text("Your Account has been successfully \n registered.")
                        .foregroundStyle(.lightgrey)
                        .font(.body)
                        .multilineTextAlignment(.center)
                    
                    Image("successCheck")
                    
                    NavigationLink(destination: Signin()){
                        CustomButton(title: "Get Start", disabled: true,onPress: {})
                    }
                    Spacer()
                    
                }
                .padding(.top,25)
                .padding(.horizontal)
            }
        }
    }
}
#Preview {
    AccountCreateSuccess()
}
