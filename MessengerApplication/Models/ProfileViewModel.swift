//
//  ProfileViewModel.swift
//  MessengerApplication
//
//  Created by Linah abdulaziz on 03/06/1443 AH.
//

import Foundation
enum ProfileViewModelType {
    case info, logout
}

struct ProfileViewModel {
    let viewModelType: ProfileViewModelType
    let title: String
    let handler: (() -> Void)?
}
