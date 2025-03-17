//
//  Input.swift
//  FlashDriver
//
//  Created by Insaram Alam Siddique on 08/10/2024.
//

import SwiftUI

struct Input: View {
    @Binding var text: String // Change to a Binding variable
    
    var label: String
    var placeholder: String
    var isRequired: Bool = false
    var keyboardType: UIKeyboardType = .default

    
    var body: some View {
        VStack {
            Label(isRequired: isRequired, label: label)
            
            TextField("", text: $text, prompt:Text(placeholder).foregroundStyle(.gray)) // Binding the text
                .keyboardType(keyboardType)
                .padding(.horizontal, 10)
                .padding(.vertical, 15)
                .frame(height: 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray.opacity(0.6), lineWidth: 1)
                )
                .background(Color.white)
                .cornerRadius(8)               .foregroundColor(.black) // Placeholder and text color
                .onChange(of: text) { newValue in
                                    // Handle the change here
                                    print("Text changed to: \(newValue)")
                                }
        }
    }
}

#Preview {
    @Previewable @State var demoText: String = ""
    Input(
        text: $demoText, // Pass the binding to the RoundedTextInput
        label: "Demo",
        placeholder: "Demo Placeholder",
        isRequired: true,
        keyboardType: .numberPad
    )
    .padding()
}
