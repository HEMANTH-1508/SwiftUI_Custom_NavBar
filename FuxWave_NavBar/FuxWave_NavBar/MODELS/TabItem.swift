//
//  TabItem.swift
//  FuxWave_NavBar
//
//  Created by Supervue MM 1 on 21/05/26.
//

import SwiftUI

enum TabItem: String, CaseIterable {
    case home
    case explore
    case favorites
    case profile

    var icon: String {
        switch self {
        case .home:
            return "house.fill"
        case .explore:
            return "safari.fill"
        case .favorites:
            return "heart.fill"
        case .profile:
            return "person.fill"
        }
    }

    var title: String {
        rawValue.capitalized
    }
}
