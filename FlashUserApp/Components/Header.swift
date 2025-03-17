//
//  Header.swift
//  FlashDriver
//
//  Created by Insaram Alam Siddique on 10/10/2024.
//

import SwiftUI

struct Header: View {
    
    var cgb : Bool = true
    var onActionBack : (() -> Void)?
    var onPressMenu : (() -> Void)?
    
    var showOtherOption : Bool = false
    
    var body: some View{
        ZStack{
            VStack{
                HStack{
                    if(cgb){
                        Image(systemName: "arrow.backward.circle.fill")
                            .resizable() // Makes the image resizable
                            .aspectRatio(contentMode: .fit) // Maintains the aspect ratio
                            .frame(width: 20, height: 20) // Sets the width and heightÏ
                            .foregroundStyle(.white)
                            .onTapGesture {
                                if(onActionBack != nil){
                                    onActionBack!()
                                }}
                    }
                    Spacer()
                    HStack{
                        if(showOtherOption){
                            Image(systemName: "bell.fill")
                                .resizable() // Makes the image resizable
                                .aspectRatio(contentMode: .fit) // Maintains the aspect ratio
                                .frame(width: 20, height: 20) // Sets the width and heightÏ
                                .foregroundStyle(.white)
                            Image(systemName: "line.3.horizontal")
                                .resizable() // Makes the image resizable
                                .aspectRatio(contentMode: .fit) // Maintains the aspect ratio
                                .frame(width: 20, height: 20) // Sets the width and heightÏ
                                .foregroundStyle(.white)
                                .onTapGesture {
                                    onPressMenu?()
                                }
                        }
                    }
                }
                .frame(height: 40)
                .padding(.horizontal,20)
                //            .background(Color.black.opacity(0.2))
                
            }
        }
        .frame(height: 40)
    }
}


#Preview {
    Header()
}
