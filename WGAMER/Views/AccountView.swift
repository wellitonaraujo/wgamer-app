//
//  ProfileView.swift
//  WGAMER
//
//  Created by Welliton da Conceicao de Araujo on 24/09/23.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Informações")) {
                    TextField("Nome", text: $viewModel.user.firstName)
                    TextField("Sobrenome", text: $viewModel.user.lastName)
                    TextField("E-mail", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled(true)
                    
                    DatePicker("Nascimento", selection: $viewModel.user.birthdate, displayedComponents: .date)
                        .environment(\.locale, Locale(identifier: "pt_BR"))
                    
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Salvar")
                    }
                }
                
                Section(header: Text("Notificações")) {
                    Toggle("E-mail", isOn: $viewModel.user.notificEmail)
                    Toggle("Dispostivo", isOn: $viewModel.user.notificDevice)
                    
                }
                .toggleStyle(SwitchToggleStyle(tint: Color("Primary")))
            }
           
        .navigationTitle("Conta")
        }
        .onAppear {
            viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(
                title: alertItem.title,
                message: alertItem.message,
                dismissButton: alertItem.dismissButton)
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
