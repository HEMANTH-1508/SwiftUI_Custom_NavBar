//
//  HomeScreen.swift
//  OrbitDock
//
//  Created by Supervue MM 1 on 18/05/26.
//


import SwiftUI

struct HomeScreen: View {
    var body: some View {
        ZStack {
            Color.clear
            VStack(spacing: 20) {
                
                Image(systemName: "house.fill")
                    .font(.system(size: 60))
                    .foregroundStyle(.blue)
                
                Text("Home Screen")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
            }
        }
    }
}
