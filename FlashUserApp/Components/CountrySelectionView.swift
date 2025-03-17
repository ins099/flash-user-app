//
//  CountrySelectionInput.swift
//  FlashDriver
//
//  Created by Insaram Alam Siddique on 10/10/2024.
//

import SwiftUI

struct CountrySelectionView: View {
    let countries: [Country]
    @Binding var selectedCountry: Country
    @Binding var isModalPresented: Bool
    var onSelect: (Country) -> Void
    
    var body: some View {
        NavigationView {
            List(countries) { country in
                Button(action: {
                    onSelect(country)
                    isModalPresented = false // Close the modal on selection
                }) {
                    HStack {
                        Text(country.flag)
                        Text(country.name)
                        Spacer()
                        if country.id == selectedCountry.id {
                            Image(systemName: "checkmark")
                                .foregroundColor(.blue)
                        }
                    }
                }
            }
            .navigationTitle("Select Country")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        isModalPresented = false // Close the modal when Done is tapped
                    }
                }
            }
        }
    }
}



#Preview {
    
    @Previewable @State var selectedCountry = Country(name: "United States", code: "+1", flag: "🇺🇸")
    @Previewable @State var isModal:Bool = true
    
    
    CountrySelectionView(countries: countries, selectedCountry: $selectedCountry, isModalPresented: $isModal, onSelect: {country in
        print(country)
    })
}
