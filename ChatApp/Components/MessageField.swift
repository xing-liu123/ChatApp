//
//  MessageField.swift
//  ChatApp
//
//  Created by xing liu on 1/29/24.
//

import SwiftUI

struct MessageField: View {
    @EnvironmentObject var messageManager: MessageManager
    @State private var message = ""
    
    var body: some View {
        HStack {
            CustomTextField(placeHolder: Text("Enter your message here"), text: $message)
                                              
            Button{
                messageManager.sendMessage(text: message)
                message = ""
            } label: {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color("Peach"))
                    .cornerRadius(50)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(Color("Gray"))
        .cornerRadius(50)
        .padding()
    }
}

#Preview {
    MessageField().environmentObject(MessageManager())
}

struct CustomTextField: View {
    var placeHolder: Text
    @Binding var text: String
    var editingChanged: (Bool) -> () = {_ in}
    var commit: () -> () = {}
    
    var body: some View {
        ZStack(alignment:  .leading) {
            if text.isEmpty {
                placeHolder.opacity(0.5)
            }
            
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
}
