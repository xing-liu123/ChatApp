//
//  MessageBubble.swift
//  ChatApp
//
//  Created by xing liu on 1/29/24.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
    @State private var showtime = false
    
    var body: some View {
        VStack(alignment: message.received ? .leading : .trailing) {
            HStack {
                Text(message.text)
                    .padding()
                    .background(message.received ?
                                Color("Gray") : Color("Peach"))
                    .cornerRadius(30)
            }
            .frame(maxWidth: 300, alignment: message.received ? .leading : .trailing)
            .onTapGesture {
                showtime.toggle()
            }
            
            if showtime {
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.caption2)
                    .foregroundColor(.gray)
                    .padding(message.received ? .leading : .trailing, 25)
            }
                
        }
        .frame(maxWidth: .infinity, alignment:
                message.received ? .leading : .trailing)
        .padding(message.received ? .leading : .trailing)
        .padding(.horizontal, 10 )
    }
}

#Preview {
    MessageBubble(message: Message(id: "12345", text: "I've been coding SwiftUI from scratch and It's so much fun!", received: false, timestamp: Date()))
}
