//
//  MainTabView.swift
//  Simple NavBar
//
//  Created by Supervue MM 1 on 12/05/26.
//


import SwiftUI

struct MainTabView: View {
    @State private var selectedTab: Tab = .home
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            currentScreen
            CustomBottomBar(selectedTab: $selectedTab)
        }
    }
}


extension MainTabView {
    @ViewBuilder
    private var currentScreen: some View {
        switch selectedTab {
        case .home:
            HomeView()
        case .search:
            SearchView()
        case .notifications:
            NotificationsView()
        case .profile:
            ProfileView()
        }
    }
}

#Preview {
    MainTabView()
}
