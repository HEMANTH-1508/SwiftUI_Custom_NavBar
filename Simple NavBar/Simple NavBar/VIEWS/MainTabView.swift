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
        ZStack {
            Color(.black.opacity(0.5))
                .ignoresSafeArea(.all)
            VStack {
                currentScreen
                Spacer()
                CustomBottomBar(selectedTab: $selectedTab)
            }
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
