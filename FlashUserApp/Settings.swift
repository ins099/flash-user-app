//
//  Settings.swift
//  FlashDriver
//
//  Created by Insaram Alam Siddique on 18/10/2024.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        BaseLayout(isHome: true) {
                VStack {
                    SettingItem(icon: Image(systemName: "bell"), name: "Notifications", showSwitch: true)
                    SettingItem(icon: Image(systemName: "wifi"), name: "Wi-Fi")
                    SettingItem(icon: Image(systemName: "lock"), name: "Privacy")
                }
                .padding(20)
            Spacer()
        }
    }
}

#Preview {
    Settings()
}
