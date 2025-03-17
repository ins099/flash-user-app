//
//  Label.swift
//  FlashDriver
//
//  Created by Insaram Alam Siddique on 08/10/2024.
//

import SwiftUI

struct Label: View {
    
    var isRequired: Bool = false
    var label: String
    
    var body: some View {
        HStack(spacing: 0) {
            Text(label)
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundColor(.gray) // Use foregroundColor instead of foregroundStyle
            
            if isRequired {
                Text(" *")
                    .foregroundColor(Color.red) // Changed to red for visibility
                    .font(.subheadline)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    Label(isRequired: true, label: "Demo Label")
}
