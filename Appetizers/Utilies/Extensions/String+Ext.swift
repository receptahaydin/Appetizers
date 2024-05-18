//
//  String+Ext.swift
//  Appetizers
//
//  Created by Recep Taha Aydın on 19.05.2024.
//

import Foundation

extension String {
    
    var isValid: Bool {
        let emailFormat         = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate      = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
}
