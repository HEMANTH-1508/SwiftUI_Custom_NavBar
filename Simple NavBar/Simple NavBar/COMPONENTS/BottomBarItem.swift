//
//  BottomBarItem.swift
//  Simple NavBar
//
//  Created by Supervue MM 1 on 12/05/26.
//


import SwiftUI

struct BottomBarItem: View {
    let tab: Tab
    @Binding var selectedTab: Tab

    var body: some View {
        Button {
            withAnimation(.easeInOut(duration: 0.2)) {
                selectedTab = tab
            }
        } label: {
            VStack(spacing: 6) {
                Image(systemName: tab.icon)
                    .font(.system(size: 20, weight: .semibold))
                
                Text(tab.title)
                    .font(.caption2)
                    .fontWeight(.medium)
            }
            .foregroundStyle(
                selectedTab == tab
                ? Color.red
                : Color.gray
            )
        }
    }
}

#Preview {
    BottomBarItem(
        tab: .home,
        selectedTab: .constant(.home)
    )
}
