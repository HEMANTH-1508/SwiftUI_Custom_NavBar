//
//  AnalyticsScreen.swift
//  OrbitDock
//
//  Created by Supervue MM 1 on 18/05/26.
//


import SwiftUI

struct AnalyticsScreen: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "chart.bar.fill")
                .font(.system(size: 60))
                .foregroundStyle(.purple)
            
            Text("Analytics Screen")
                .font(.largeTitle.bold())
                .foregroundStyle(.white)
        }
    }
}
