//
//  Rides.swift
//  FlashDriver
//
//  Created by Insaram Alam Siddique on 11/10/2024.
//

import SwiftUI

struct Rides: View {
    
    var title: String = "Rides"
    var isCompleted: Bool = false
    
    var body: some View {
        VStack(spacing:10) {
            Text(title)
                    .foregroundStyle(.black)
                    .fontWeight(Font.Weight.semibold)
                    .font(.title2)
                    .padding(.vertical,10)
                    .frame(maxWidth: .infinity, alignment: isCompleted ? .leading : .center)
            
            ForEach(0..<4) { _ in
                Ride()
            }
        }.frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
    }
}

struct Ride: View {
    var body : some View {
        GeometryReader{ geometry in
            VStack() {
                Spacer()
                HStack{
                    HStack{
                        VStack{
                            Image(systemName: "circle.fill")
                                .foregroundStyle(.primaryBlue)
                            Divider()
                                .frame(width:1, height: 10)
                                .background(Color.primaryBlue)
                            //                                                .padding(.leading,3)
                            Image(systemName: "circle")
                                .foregroundStyle(.primaryBlue)
                        }
                        
                        VStack(spacing:10){
                            Text("Street 32, Clayton, New York")
                                .foregroundStyle(.darkGray)
                            Text("Street 32, Clayton, New York")
                                .foregroundStyle(.darkGray)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .frame(width:geometry.size.width * 0.6, alignment: .leading)
                    Spacer()
                    VStack{
                        
                        Text("$ 34 / Seat")
                            .font(.body)
                            .foregroundStyle(.primaryBlue)
                            .fontWeight(.semibold)
                        Text("Departure Time: 3:15 PM")
                            .font(.caption)
                            .lineLimit(3)
                            .foregroundStyle(.gray)
                        
                    }.frame(width:geometry.size.width * 0.4, alignment: .center)
                }
                Spacer()
            }
            .frame(maxWidth: geometry.size.width, alignment: .leading)
        }
        .frame(width:.infinity ,height: 80, alignment: .center)
    }
}

#Preview {
    Rides()
}
