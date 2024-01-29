//
//  ChatAppApp.swift
//  ChatApp
//
//  Created by xing liu on 1/29/24.
//

import SwiftUI
import Firebase

@main
struct ChatAppApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
