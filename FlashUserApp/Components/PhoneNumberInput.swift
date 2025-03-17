import SwiftUI

struct PhoneNumberInput: View {
    @State private var selectedCountry = Country(name: "United States", code: "+1", flag: "🇺🇸")
    @State private var phoneNumber: String = ""
    @State private var isModalPresented: Bool = false
    
    @Binding var text: String // Change to a Binding variable
    var placeholder: String?
    
    
    var isRequired: Bool = false
    var label:String
    
    var body: some View {
        VStack {
            Label(isRequired: isRequired, label: label)
            HStack {
                Button(action: {
                    isModalPresented = true
                }) {
                    HStack {
                        Text(selectedCountry.flag)
                        Image(systemName: "chevron.down")
                            .foregroundColor(.gray)
                    }
                }
                .padding(.leading, 10)
                .frame(height: 50)
                .background(Color.white)
                
                Divider()
                    .frame(height: 30)
                    .background(Color.gray)
                
                TextField(placeholder ?? "", text: $phoneNumber)
                    .keyboardType(.phonePad)
                    .padding(.leading, 5)
                    .foregroundColor(.gray)
            }
            .frame(height: 50)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray.opacity(0.6), lineWidth: 1)
            )
            .background(Color.white)
            .cornerRadius(8)
//            .padding()
        }
        .sheet(isPresented: $isModalPresented) {
            CountrySelectionView(
                countries: countries,
                selectedCountry: $selectedCountry,
                isModalPresented: $isModalPresented
            ) { country in
                selectedCountry = country
                phoneNumber = country.code // Clear the phone number when a new country is selected
            }
        }
    }
}

#Preview{
    @Previewable @State var text:String = ""
    PhoneNumberInput(text: $text, placeholder: "Demo Placeholder", isRequired: true, label: "Demo Label")
}
