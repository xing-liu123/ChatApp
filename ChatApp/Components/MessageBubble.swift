//
//  MessageBubble.swift
//  ChatApp
//
//  Created by xing liu on 1/29/24.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
    
    var body: some View {
        VStack(alignment: message.received ? .leading : .trailing) {
            HStack {
                Text(message.text)
                    .padding()
                    .background(message.received ?
                                Color("Gray") : Color("Peach"))
                    .cornerRadius(30)
            }
        }
    }
}

#Preview {
    MessageBubble(message: Message(id: "12345", text: "I've been coding SwiftUI from scratch and It's so much fun!", received: false, timestamp: Date()))
}
