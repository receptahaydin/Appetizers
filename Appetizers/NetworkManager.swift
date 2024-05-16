//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Recep Taha Aydın on 16.05.2024.
//

import Foundation

final class NetworkManager {
    
    static let shared = NetworkManager()
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    static let appetizerURL = baseURL + "appetizers"
    
    private init() {}
}
