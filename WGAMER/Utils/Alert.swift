//
//  Alert.swift
//  WGAMER
//
//  Created by Welliton da Conceicao de Araujo on 24/09/23.
//

import Foundation
import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidForm = AlertItem(
        title: Text("Sormulário Inválido"),
        message: Text("Preencha todos os campos corretamente."),
        dismissButton: .default(Text("OK"))
    )
    
    static let invalidEmail = AlertItem(
        title: Text("E-mail Inválido"),
        message: Text("Por favor, insira um endereço de e-mail válido."),
        dismissButton: .default(Text("OK"))
    )
    
    static let userSaveSuccess = AlertItem(
        title: Text("Sucesso!"),
        message: Text("Perfil atualizado com sucesso"),
        dismissButton: .default(Text("OK"))
    )
    
    static let invalidUserData = AlertItem(
        title: Text("Erro ao salvar!"),
        message: Text("Tente novamente"),
        dismissButton: .default(Text("OK"))
    )
    

}

