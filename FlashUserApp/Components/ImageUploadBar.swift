import SwiftUI

struct ImageUploadBar: View {
    
    var label: String = "Upload Images"
    var isRequired: Bool = false
    
    var body: some View {
        VStack {
            Label(isRequired: isRequired, label: label)
                .padding(.bottom, 8) // Added some spacing between label and image row
            HStack {
                // Use a flexible layout
                ImageBox()
                ImageBox()
                ImageBox()
                ImageBox()
                ImageBox()
            }
            .frame(maxWidth: .infinity) // Make HStack take full width
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray.opacity(0.6), lineWidth: 1)
            )
            .background(Color.white)
            .cornerRadius(8)
        }// Optional padding around the VStack
    }
}

struct ImageBox: View {
    var body: some View {
        VStack {
            Image("image-picker")
                .renderingMode(.original)
                .resizable()
                .frame(width: 30, height: 30)
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(.primaryBlue)
        }
        .frame(maxWidth: .infinity) // Keep the individual ImageBox size
        .padding(8)
        .background(Color.white)
        .cornerRadius(9)
        .shadow(color: Color.black.opacity(0.3), radius: 3, x: 0, y: 3)
    }
}

#Preview {
    ImageUploadBar()
        .padding()
}
