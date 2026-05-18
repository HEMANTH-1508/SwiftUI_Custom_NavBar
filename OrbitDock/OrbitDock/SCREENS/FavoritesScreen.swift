//
//  FavoritesScreen.swift
//  OrbitDock
//
//  Created by Supervue MM 1 on 18/05/26.
//


import SwiftUI

struct FavoritesScreen: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "heart.fill")
                .font(.system(size: 60))
                .foregroundStyle(.pink)
            
            Text("Favorites Screen")
                .font(.largeTitle.bold())
                .foregroundStyle(.white)
        }
    }
}
