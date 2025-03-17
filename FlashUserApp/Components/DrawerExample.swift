//
//  DrawerExample.swift
//  FlashDriver
//
//  Created by Insaram Alam Siddique on 22/10/2024.
//


import SwiftUI

struct DrawerExample: View {
    @State private var isDrawerOpen = false
    
    var body: some View {
        ZStack {
            // Main content view (with header and menu button)
            VStack {
                HStack {
                    Spacer() // Push the button to the right
                    Button(action: {
                        withAnimation {
                            isDrawerOpen.toggle() // Toggle the drawer
                        }
                    }) {
                        Image(systemName: "line.horizontal.3")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                    .padding()
                }
                Spacer() // Main content goes here
            }
            .zIndex(1) // Keep the content view above the background
            
            // Drawer Menu
            HStack {
                Spacer() // Push the drawer to the right
                
                VStack {
                    Spacer() // You can add drawer items here
                    Text("Drawer Menu Item 1")
                    Text("Drawer Menu Item 2")
                    Text("Drawer Menu Item 3")
                    Spacer()
                }
                .frame(width: 250) // Width of the drawer
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 10)
                .offset(x: isDrawerOpen ? 0 : 250) // Slide in/out effect
                .animation(.easeInOut(duration: 0.4), value: isDrawerOpen) // Smooth animation
            }
            .background(Color.black.opacity(isDrawerOpen ? 0.5 : 0).ignoresSafeArea()) // Dim background
            .onTapGesture {
                withAnimation {
                    isDrawerOpen = false // Close drawer when tapping outside
                }
            }
        }
    }
}

#Preview {
    DrawerExample()
}
