//
//  Banner.swift
//  WGAMER
//
//  Created by Welliton da Conceicao de Araujo on 22/09/23.
//

import SwiftUI

struct Banner: View {
    var body: some View {
        ZStack {
            Color("Secondary").frame(height: 200)
            
            HStack {
                VStack(alignment: .leading, spacing: 12) {
                    Text("#GAMER DAY")
                        .foregroundColor(.white)
                        .font(Font.custom("Inter", size: 14))
                        .fontWeight(.semibold)
                    
                    Text("80% OFF")
                        .foregroundColor(Color("Primary"))
                        .font(.system(size: 28))
                        .fontWeight(.semibold)
                    
                    
                    Text("Descubra os jogos mais alucinantes do momento")
                        .font(Font.custom("Inter", size: 11))
                        .foregroundColor(.white)
                        .fontWeight(.light)
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Veja")
                            .frame(width: 90, height: 28)
                            .background(Color("Primary"))
                            .foregroundColor(.white)
                            .font(Font.custom("Inter", size: 12))
                            .cornerRadius(6)
                            
                    })
                }
                .padding(.leading, 16)
            
                HStack {
                    Image("supermarioworld")
                        .resizable()
                        .scaledToFit()
                }
               
            }
        }
    }
}

struct Banner_Previews: PreviewProvider {
    static var previews: some View {
        Banner()
    }
}
