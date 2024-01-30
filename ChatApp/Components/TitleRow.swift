//
//  TitleRow.swift
//  ChatApp
//
//  Created by xing liu on 1/29/24.
//

import SwiftUI

struct TitleRow: View {
    var name = "Dr. Qi"
    
    var body: some View {
        HStack(spacing: 20) {
            Image("bot")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 50, height: 50)
                .cornerRadius(25)
            
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title).bold()
                
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
        }
        .padding()
        
    }
}

#Preview {
    TitleRow()
        .background(Color("Peach"))
}
