//
//  ProfileSection.swift
//  FlashDriver
//
//  Created by Insaram Alam Siddique on 10/10/2024.
//

import SwiftUI

struct ProfileSection: View {
    
    var isHome : Bool = false
    var image : Image = Image("Logo")
    
    var cgb: Bool = true
    var onActionBack : (() -> Void)?
    var onPressMenu : (() -> Void)?
    
    var showOtherOption : Bool = true
    
    var body: some View {
        
        Header(cgb: cgb, onActionBack: onActionBack, onPressMenu:onPressMenu, showOtherOption: showOtherOption)
        
        if(isHome){
            HStack(spacing: 10) {
                Spacer()
                VStack{
                    image
                        .resizable()
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(100)
                    
                    
                }.frame(width: 100.0, height: 100.0)
                VStack{
                    Text("John Duke")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("San Francisco, CA")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Rate \("4")")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(.white)
                Spacer()
            }
    }else{
        VStack(){
                VStack{
                    image
                        .resizable()
                        .padding(12)
                        .background(Color.white)
                        .cornerRadius(100)
                        .background(Circle())
                        .foregroundStyle(.primaryBlue)
                }.frame(width: 100.0, height: 100.0)
                .padding(.bottom)
            }
        }
    }
}


#Preview {
    VStack
    {
        ProfileSection()
    }.background(.red)
    
}
