//
//  VerifyMobile.swift
//  FlashUserApp
//
//  Created by Insaram Alam Siddique on 25/10/2024.
//

import SwiftUI

struct VerifyOTP: View {
    
    @State var fullName : String = ""
    
    var body: some View {
        NavigationStack{
            BaseLayout(image: Image("lock"), cgb:true, showOtherOption: false){
                VStack(alignment: .leading) {
                    VStack {
                        Text("Verify OTP")
                            .foregroundStyle(.black)
                            .fontWeight(Font.Weight.semibold)
                            .font(.title2)
                            .frame(maxWidth: .infinity, alignment: .center)
                        Text("We sent you a verification code via SMS")
                            .multilineTextAlignment(.center)
                            .foregroundStyle(.gray)
                            .padding(.vertical,2)
                            .font(.footnote)
                        
                        VStack(spacing:25){
                            OTPInputView()
                            
                            Text("Continue")
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity, maxHeight: 50)
                                .background(.primaryBlue)
                                .cornerRadius(10)
                            
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
    VerifyOTP()
}
