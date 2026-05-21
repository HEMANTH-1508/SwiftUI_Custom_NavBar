//
//  ContentView.swift
//  FuxWave_NavBar
//
//  Created by Supervue MM 1 on 21/05/26.
//


import SwiftUI

struct ContentView: View {

    @State private var selectedTab: TabItem = .home

    var body: some View {

        ZStack {
            
            LinearGradient(
                colors: [
                    Color.blue,
                    Color.purple
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea(.all)
            
            VStack(spacing: 0) {
                
                Group {
                    
                    switch selectedTab {
                        
                    case .home:
                        HomeView()
                        
                    case .explore:
                        ExploreView()
                        
                    case .favorites:
                        FavoritesView()
                        
                    case .profile:
                        ProfileView()
                    }
                }
                
                FluxWaveTabBar(selectedTab: $selectedTab)
                    .padding(.bottom, 10)
            }
        }
    }
}


#Preview {
    ContentView()
}
