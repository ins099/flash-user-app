import SwiftUI

struct NationalityInput: View {
    var isRequired:Bool = false
    var label:String
    var placeholder:String
    var selected: Country?
    
    
    @State private var selectedCountry = Country(name: "United States", code: "+1", flag: "🇺🇸")
    @State private var isModalPresented: Bool = false
    
    
    let countries = [
        Country(name: "United States", code: "+1", flag: "🇺🇸"),
        Country(name: "Canada", code: "+1", flag: "🇨🇦"),
        Country(name: "United Kingdom", code: "+44", flag: "🇬🇧"),
        Country(name: "Australia", code: "+61", flag: "🇦🇺")
        // Add more countries as needed
    ]
    
    var body: some View {
        VStack {
            Label(isRequired: isRequired, label: label)
            HStack {
                HStack {
                    Text(selectedCountry.flag)
                    Image(systemName: "chevron.down")
                        .foregroundColor(.gray)
                }
                .padding(.leading, 10)
                .frame(height: 50)
                .background(Color.white)
                
                Divider()
                    .frame(height: 30)
                    .background(Color.gray)
                
                Text((selectedCountry.name ?? placeholder))
                    .foregroundColor(.gray)
                    .padding(.leading, 5)
                
                Spacer()
            }
            .frame(height: 50)
            .background(Color.white)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray.opacity(0.6), lineWidth: 1)
            )
            .cornerRadius(8)
            .onTapGesture {
                isModalPresented = true
            }
        }
        .sheet(isPresented: $isModalPresented) {
            CountrySelectionView(
                countries: countries,
                selectedCountry: $selectedCountry,
                isModalPresented: $isModalPresented
            ) { country in
                selectedCountry = country
            }
        }
    }
}

#Preview {
    @Previewable @State var selectedCountry:Country = countries.first!
    NationalityInput(isRequired: false, label:"Preview Placeholder", placeholder:"Demo Label", selected: selectedCountry)
}
