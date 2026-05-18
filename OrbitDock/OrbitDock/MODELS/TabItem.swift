//
//  TabItem.swift
//  OrbitDock
//
//  Created by Supervue MM 1 on 18/05/26.
//


import SwiftUI

enum TabItem: String, CaseIterable {
    
    case home
    case analytics
    case favorites
    case profile
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .analytics:
            return "Stats"
        case .favorites:
            return "Saved"
        case .profile:
            return "Profile"
        }
    }
    
    var icon: String {
        switch self {
        case .home:
            return "house.fill"
        case .analytics:
            return "chart.bar.fill"
        case .favorites:
            return "heart.fill"
        case .profile:
            return "person.fill"
        }
    }
    
    var color: Color {
        switch self {
        case .home:
            return .blue
        case .analytics:
            return .purple
        case .favorites:
            return .pink
        case .profile:
            return .orange
        }
    }
}