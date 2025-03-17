//
//  ApplicationSubmit.swift
//  FlashDriver
//
//  Created by Insaram Alam Siddique on 11/10/2024.
//

import SwiftUI

struct ApplicationSubmit: View {
    
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
            BaseLayout(image: accountImage) {
                    VStack() {
                        
                        Text("Become a Driver")
                                .foregroundStyle(.black)
                                .fontWeight(Font.Weight.semibold)
                                .font(.title)
                                .padding(.vertical,10)
                            
                        VStack() {
                            Image("successCheck")
                        }
                        .padding(.vertical, 20)
                        
                        Text("Application Submitted")
                            .foregroundStyle(.lightgrey)
                            .fontWeight(.semibold)
                            .font(.title2)
                        
                        Spacer()
                        
                        VStack{
                            Text("Status")
                                .font(.title2)
                            
                            Text("Under Review")
                                .font(.title2)
                                .foregroundStyle(.darkRed)
                            
                            Text("Your driver section will be open after admin approval")
                                .padding()
                                .multilineTextAlignment(.center)
                                .font(.caption)
                                .foregroundStyle(.lightgrey)
                        }
                        Spacer()
                    }
                    .frame(width: containerWidth - 3)
                    .cornerRadius(50, corners: [.topLeft, .topRight])
                    
                    Spacer()
                
                HStack(spacing:0){
                    Button(action:{}, label: {
                        Text("My Bookings")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color.darkGray)
                            .foregroundStyle(.white)
                    })
                    NavigationLink(destination:MyRides(), label: {
                        Text("My Rides")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color.primaryBlue)
                            .foregroundStyle(.white)
                    })
                }.frame(height: 50, alignment: .top)
                    .frame(maxWidth: .infinity)
                    .background(.red)
                    
                
                Spacer()
                
                
            }
        }
    }
}

#Preview {
    ApplicationSubmit()
}
