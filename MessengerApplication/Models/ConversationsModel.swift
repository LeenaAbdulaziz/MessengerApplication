//
//  ConversationsModel.swift
//  MessengerApplication
//
//  Created by Linah abdulaziz on 03/06/1443 AH.
//

import Foundation

struct Conversation {
    let id: String
    let name: String
    let otherUserEmail: String
    let latestMessage: LatestMessage
}

struct LatestMessage {
    let date: String
    let text: String
    let isRead: Bool
}
