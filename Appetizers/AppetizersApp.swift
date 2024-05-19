//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Recep Taha Aydın on 16.05.2024.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
