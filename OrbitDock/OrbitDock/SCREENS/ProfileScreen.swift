//
//  ProfileScreen.swift
//  OrbitDock
//
//  Created by Supervue MM 1 on 18/05/26.
//


import SwiftUI

struct ProfileScreen: View {
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Image(systemName: "person.fill")
                .font(.system(size: 60))
                .foregroundStyle(.orange)
            
            Text("Profile Screen")
                .font(.largeTitle.bold())
                .foregroundStyle(.white)
        }
    }
}