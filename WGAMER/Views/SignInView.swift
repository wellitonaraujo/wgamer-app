//
//  SignInView.swift
//  WGAMER
//
//  Created by Welliton da Conceicao de Araujo on 29/09/23.
//

import SwiftUI

struct SignInView: View {
    @StateObject private var loginVM = LoginViewModel()

    
    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {
                Form {
                    TextField("E-mail", text: $loginVM.email)
                    SecureField("Senha", text: $loginVM.password)
                    
                    Button("Entrar") {
                        loginVM.login()
                    }
                }
            }
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
