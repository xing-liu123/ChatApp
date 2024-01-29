//
//  ContentView.swift
//  ChatApp
//
//  Created by xing liu on 1/29/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var messageManager = MessageManager()
    
    var body: some View {
        VStack {
            VStack {
                TitleRow()
                
                ScrollView {
                    ForEach(messageManager.messages, id: \.id) { message in
                        MessageBubble(message: message)
                        }
                    }
                    .padding(.top, 10)
                    .background(.white)
                    .cornerRadius(30, corners: [.topLeft, .topRight])
                }
            .background(Color("Peach"))
            
            MessageField()
        }
    }
}

#Preview {
    ContentView()
}
