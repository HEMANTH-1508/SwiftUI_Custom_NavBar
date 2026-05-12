//
//  Tab.swift
//  Simple NavBar
//
//  Created by Supervue MM 1 on 12/05/26.
//


import Foundation

enum Tab: String, CaseIterable {
    
    case home
    case search
    case notifications
    case profile
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .search:
            return "Search"
        case .notifications:
            return "Alerts"
        case .profile:
            return "Profile"
        }
    }
    
    var icon: String {
        switch self {
        case .home:
            return "house.fill"
        case .search:
            return "magnifyingglass"
        case .notifications:
            return "bell.fill"
        case .profile:
            return "person.fill"
        }
    }
}
