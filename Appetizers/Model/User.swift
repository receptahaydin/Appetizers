//
//  User.swift
//  Appetizers
//
//  Created by Recep Taha Aydın on 19.05.2024.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
