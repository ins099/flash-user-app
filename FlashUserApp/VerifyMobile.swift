//
//  VerifyMobile.swift
//  FlashUserApp
//
//  Created by Insaram Alam Siddique on 25/10/2024.
//

import SwiftUI

struct VerifyMobile: View {
    
    @State var fullName : String = ""
    
    var body: some View {
        NavigationStack{
            BaseLayout(image: Image("lock"), cgb:true, showOtherOption: false){
                VStack(alignment: .leading) {
                    VStack {
                        Text("Verify Mobile")
                            .foregroundStyle(.black)
                            .fontWeight(Font.Weight.semibold)
                            .font(.title2)
                            .frame(maxWidth: .infinity, alignment: .center)
                        Text("we will send a text to verify your number.\n No fees will apply.")
                            .multilineTextAlignment(.center)
                            .foregroundStyle(.gray)
                            .padding(.vertical,2)
                            .font(.footnote)
                        
                        VStack(spacing:25){
                            PhoneNumberInput(text: $fullName, placeholder: "Enter Phone Number", isRequired: true, label: "Phone Number")
                            NavigationLink(destination: AccountCreateSuccess(), label:{
                                
                            Text("Continue")
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity, maxHeight: 50)
                                .background(.primaryBlue)
                                .cornerRadius(10)})
                            
                        }
                        .padding(.top, 10)
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
    VerifyMobile()
}
