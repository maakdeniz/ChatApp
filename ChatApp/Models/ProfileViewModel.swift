//
//  ProfileViewModel.swift
//  ChatApp
//
//  Created by Mehmet Akdeniz on 1.12.2022.
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
