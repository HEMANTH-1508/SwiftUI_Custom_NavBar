//
//  MainTabView.swift
//  ArcNavBar
//
//  Created by Supervue MM 1 on 18/05/26.
//


import SwiftUI

struct MainTabView: View {

    @State private var selectedTab: TabItem = .home

    var body: some View {
        ZStack(alignment: .bottom) {
            Group {
                switch selectedTab {
                case .home:
                    HomeView()
                case .search:
                    SearchView()
                case .favorites:
                    FavoritesView()
                case .profile:
                    ProfileView()
                }
            }

            CustomTabBar(selectedTab: $selectedTab)
        }
        .ignoresSafeArea(.keyboard)
    }
}

#Preview {
    MainTabView()
}
