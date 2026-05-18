//
//  TabItem.swift
//  ArcNavBar
//
//  Created by Supervue MM 1 on 18/05/26.
//


import SwiftUI

enum TabItem: String, CaseIterable {
    case home
    case search
    case favorites
    case profile

    var icon: String {
        switch self {
        case .home:
            return "house.fill"
        case .search:
            return "magnifyingglass"
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
