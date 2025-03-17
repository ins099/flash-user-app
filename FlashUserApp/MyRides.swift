//
//  ApplicationSubmit.swift
//  FlashDriver
//
//  Created by Insaram Alam Siddique on 11/10/2024.
//

import SwiftUI

struct MyRides: View {
    
    @Environment(\.safeAreaInsets) private var safeAreaInsets
    
    @State var fullName: String = ""
    
    var containerWidth: CGFloat = UIScreen.main.bounds.width
    var containerHeight: CGFloat = UIScreen.main.bounds.height
    
    func printSafeAreaInsets() {
        print(safeAreaInsets)
    }
    
    var accountImage : Image = Image(systemName: "person.crop.circle")
        
    
    
    var body: some View {
        NavigationStack {
            BaseLayout(isHome: true,image: accountImage) {
                VStack() {
                    ScrollView{
                        Rides(title: "Active Rides")
                        Rides(title: "Scheduled Rides")
                    }
                }
                .frame(width: containerWidth - 3)
                .cornerRadius(50, corners: [.topLeft, .topRight])
                .padding(.top,10)
                
                Spacer()
                
                HStack(spacing:0){
                    Button(action:{}, label: {
                        Text("My Bookings")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color.darkGray)
                            .foregroundStyle(.white)
                    })
                    Button(action:{}, label: {
                        Text("My Rides")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color.primaryBlue)
                            .foregroundStyle(.white)
                    })
                }.frame(height: 50, alignment: .top)
                    .frame(maxWidth: .infinity)
                    .background(.red)
            }
        }
    }
}

#Preview {
    MyRides()
}
