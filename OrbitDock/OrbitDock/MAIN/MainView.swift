//
//  MainView.swift
//  OrbitDock
//
//  Created by Supervue MM 1 on 18/05/26.
//


import SwiftUI

struct MainView: View {
    
    @State private var selectedTab: TabItem = .home
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Group {
                switch selectedTab {
                case .home:
                    HomeScreen()
                    
                case .analytics:
                    AnalyticsScreen()
                    
                case .favorites:
                    FavoritesScreen()
                    
                case .profile:
                    ProfileScreen()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            CustomOrbitDock(selectedTab: $selectedTab)
                .padding(.horizontal, 24)
                .padding(.bottom, 20)
        }
        .ignoresSafeArea()
        .background(
            LinearGradient(
                colors: [
                    Color.black,
                    Color(red: 0.08, green: 0.08, blue: 0.12)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
        )
    }
}


#Preview {
    MainView()
}
