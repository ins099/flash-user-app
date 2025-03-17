//
//  Button.swift
//  LibraryApp
//
//  Created by Insaram Alam Siddique on 16/10/2024.
//

import SwiftUI

struct CustomButton: View {
    
    var title :String = "Title Here"
    var isSecondary :Bool = false
    var disabled : Bool = false
    
    var onPress: () -> Void?
    
    var body: some View {
        Button(action: {
            // Handle login action
            onPress()
        }) {
            Text(title)
                .font(.headline)
                .foregroundColor(isSecondary ?Color.primaryBlue:Color.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(isSecondary ?Color.primaryBlue.opacity(0):Color.primaryBlue)
                .cornerRadius(8)
                .background(RoundedRectangle(cornerRadius: 8).stroke(Color.primaryBlue, lineWidth: isSecondary ? 1: 0))
        }
        .padding(.bottom, 15)
        .disabled(disabled)
    }
}

#Preview {
    CustomButton(onPress: {print("Press")})
}
