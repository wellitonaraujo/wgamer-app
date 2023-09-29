//
//  loginViewModel.swift
//  WGAMER
//
//  Created by Welliton da Conceicao de Araujo on 29/09/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    var email: String = "test@test.com"
    var password: String = "123123"
    
    func login() {
        APIClient().login(email: email, password: password) { result in
            switch result {
            case .success(let token):
                print(token)
            case .failure(let error):
                print("Errou aqui mano ->\(error.localizedDescription)")
            }
        }
    }

}

