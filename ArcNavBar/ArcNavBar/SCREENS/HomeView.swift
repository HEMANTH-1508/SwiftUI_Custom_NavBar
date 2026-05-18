//
//  HomeView.swift
//  ArcNavBar
//
//  Created by Supervue MM 1 on 18/05/26.
//


import SwiftUI

struct HomeView: View {

    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemBackground)
                    .ignoresSafeArea()
                Text("Home Screen")
                    .font(.largeTitle.bold())
            }
        }
    }
}

#Preview {
    HomeView()
}
