//
//  User.swift
//  WGAMER
//
//  Created by Welliton da Conceicao de Araujo on 24/09/23.
//

import Foundation

struct User: Codable {
    
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var notificEmail = false
    var notificDevice = false
    
}
