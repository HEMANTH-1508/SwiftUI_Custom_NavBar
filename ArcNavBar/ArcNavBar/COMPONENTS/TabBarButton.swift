//
//  TabBarButton.swift
//  ArcNavBar
//
//  Created by Supervue MM 1 on 18/05/26.
//


import SwiftUI

struct TabBarButton: View {

    let tab: TabItem
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            VStack(spacing: 4) {
                Image(systemName: tab.icon)
                    .font(.system(size: 20, weight: .semibold))

                Text(tab.title)
                    .font(.caption2)
            }
            .foregroundStyle(
                isSelected ? Color.white : Color.gray
            )
            .frame(maxWidth: .infinity)
            .padding(.top, isSelected ? 0 : 10)
            .scaleEffect(isSelected ? 1.1 : 1.0)
            .animation(.spring(), value: isSelected)
        }
    }
}
