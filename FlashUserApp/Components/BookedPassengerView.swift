//
//  BookedPassengerView.swift
//  FlashDriver
//
//  Created by Insaram Alam Siddique on 22/10/2024.
//


import SwiftUI

struct BookedPassengerView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Booked Passengers")
                .font(.headline)
                .padding(.horizontal)
            
            // Passenger List
            VStack(spacing: 20) {
                // Passenger 1
                PassengerRowView(imageName: "profile1", name: "Micheal Jorege", fare: "$34/Set", departureTime: "3:15 PM")
                
                Divider()
                
                // Passenger 2
                PassengerRowView(imageName: "profile2", name: "David Krbec", fare: "$34/Set", departureTime: "3:15 PM")
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white)
                            .shadow(color: Color.gray.opacity(0.2), radius: 5, x: 0, y: 2)
            )
        }
    }
}

struct PassengerRowView: View {
    var imageName: String
    var name: String
    var fare: String
    var departureTime: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            // Profile Image
            Image(systemName: "person")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            
            // Passenger Info
            VStack(alignment: .leading, spacing: 6) {
                Text("Name: \(name)")
                    .font(.subheadline)
                    .foregroundColor(.black)
                
                Text("Fair \(fare)")
                    .font(.subheadline)
                    .foregroundColor(.blue)
                
                Text("Departure time \(departureTime)")
                    .font(.footnote)
                    .foregroundColor(.gray)
                
                Text("Report to admin")
                    .font(.footnote)
                    .foregroundColor(.black)
                    .underline()
            }
            
            Spacer()
            
            // Action Buttons
            VStack(spacing: 10) {
                Button(action: {
                    // Action for Picked
                }) {
                    Text("Picked")
                        .frame(width: 80, height: 30)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    // Action for Remove
                }) {
                    Text("Remove")
                        .frame(width: 80, height: 30)
                        .background(Color.gray.opacity(0.2))
                        .foregroundColor(.gray)
                        .cornerRadius(10)
                }
            }
        }
    }
}

#Preview {
    BookedPassengerView()
}
