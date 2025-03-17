//
//  Vehicle.swift
//  FlashDriver
//
//  Created by Insaram Alam Siddique on 17/10/2024.
//

import SwiftUICore



struct Vehicle : View {
        var image: String = "car" // Placeholder image name
        var make: String = "Toyota"
        var model: String = "Corolla"
        var year: String = "2020"
        var registration: String = "XYZ 1234"
        var color: String = "White"
        var mileage: String = "12,000"
        
        var body: some View {
            HStack(alignment: .top, spacing: 16) {
                // Image with rounded corners
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 70, height: 70)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 3)
                
                // Vehicle details
                HStack(alignment: .top, spacing: 5) {
                    VStack(alignment: .leading){
                        Info(label: "Make", value: make)
                        Info(label: "Model", value: model)
                        Info(label: "Year", value: year)
                        Info(label: "Mileage", value: mileage)
                    }
                }
                HStack(alignment: .top, spacing: 5) {
                    VStack(alignment: .leading){
                        Info(label: "Registeration", value: registration)
                        Info(label: "Color", value: color)
                    }
                }
                
            
            }
            .padding(10)
            .background(Color.white)
            .cornerRadius(12)
            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 3)
//            .frame(maxWidth: .infinity)
        }
}

struct Info :View {
    
    var label:String = "Info"
    var value:String = "Value"
    
    var body: some View {
        HStack(alignment: .top){
            Text("\(label): ")
                .foregroundStyle(Color.gray)
                .font(.footnote)
            Text(value)
                .font(.footnote)
                .foregroundStyle(.black)
                .fontWeight(.semibold)
        }
    }
}
