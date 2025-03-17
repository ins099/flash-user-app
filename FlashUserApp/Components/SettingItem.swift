//
//  SettingItem.swift
//  FlashDriver
//
//  Created by Insaram Alam Siddique on 17/10/2024.
//


import SwiftUI

struct SettingItem: View {
    
    var icon: Image
    var name: String
    var showSwitch: Bool = false
    
    @State private var isEnabled: Bool = false
    
    var body: some View {
        HStack {
            icon
                .resizable()
                .frame(width: 24, height: 24)
                .padding(.trailing, 10)
                .foregroundStyle(.primaryBlue)
            
            Text(name)
                .font(.body)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            if(showSwitch){
                Toggle("", isOn: $isEnabled)
                    .labelsHidden()
            }
        }
        .padding(.vertical, 10)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .overlay(
            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color.gray.opacity(0.3))
                .padding(.top, 39),
            alignment: .bottom
        )
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            SettingItem(icon: Image(systemName: "bell"), name: "Notifications", showSwitch: true)
            SettingItem(icon: Image(systemName: "wifi"), name: "Wi-Fi")
            SettingItem(icon: Image(systemName: "lock"), name: "Privacy")
        }
        .padding()
    }
}

#Preview {
    SettingItem(icon: Image(systemName: "bell"), name: "Notifications", showSwitch: true)
}
