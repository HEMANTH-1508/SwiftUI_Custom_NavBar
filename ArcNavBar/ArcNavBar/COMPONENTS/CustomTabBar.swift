//
//  CustomTabBar.swift
//  ArcNavBar
//
//  Created by Supervue MM 1 on 18/05/26.
//


import SwiftUI

struct CustomTabBar: View {

    @Binding var selectedTab: TabItem

    var body: some View {
        ZStack {
            CustomTabBarShape()
                .fill(Color.black)
                .frame(height: 90)
                .shadow(color: .black.opacity(0.15), radius: 10, y: 5)

            HStack {
                ForEach(TabItem.allCases, id: \.self) { tab in
                    TabBarButton(
                        tab: tab,
                        isSelected: selectedTab == tab
                    ) {
                        selectedTab = tab
                    }
                }
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 10)
        }
        .padding(.horizontal)
        .padding(.bottom, 10)
    }
}
