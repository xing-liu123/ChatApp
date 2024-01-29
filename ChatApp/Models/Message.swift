//
//  Message.swift
//  ChatApp
//
//  Created by xing liu on 1/29/24.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
