//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Recep Taha Aydın on 16.05.2024.
//

import SwiftUI

@MainActor final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?

//    func getAppetizers() {
//        isLoading = true
//        NetworkManager.shared.getAppetizers { result in
//            DispatchQueue.main.async {
//                self.isLoading = false
//                switch result {
//                case.success(let appetizers):
//                    self.appetizers = appetizers
//                    
//                case.failure(let error):
//                    switch error {
//                    case .invalidResponse:
//                        self.alertItem = AlertContext.invalidResponse
//                        
//                    case .invalidURL:
//                        self.alertItem = AlertContext.invalidURL
//                        
//                    case .invalidData:
//                        self.alertItem = AlertContext.invalidData
//                        
//                    case .unableToComplete:
//                        self.alertItem = AlertContext.unableToComplete
//                    }
//                }
//            }
//        }
//    }
    
    func getAppetizers() {
        isLoading = true
        
        Task {
            do {
                appetizers = try await NetworkManager.shared.getAppetizers()
                isLoading = false
            } catch {
                alertItem = AlertContext.generic
                isLoading = false
            }
        }
    }
}
