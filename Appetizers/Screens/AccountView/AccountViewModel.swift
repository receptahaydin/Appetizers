//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Recep Taha Aydın on 18.05.2024.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthdate = Date()
    @Published var extraNapkins = false
    @Published var frequentRefills = false
    
    var isValidForm: Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
            return false
        }
        
        guard email.isValid else {
            
            return false
        }
        
        return true
    }
}
