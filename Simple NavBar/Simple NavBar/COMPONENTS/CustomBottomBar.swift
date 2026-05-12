//
//  CustomBottomBar.swift
//  Simple NavBar
//
//  Created by Supervue MM 1 on 12/05/26.
//


import SwiftUI

struct CustomBottomBar: View {
    @Binding var selectedTab: Tab
    var body: some View {
        HStack {
            ForEach(Tab.allCases, id: \.self) { tab in
                Spacer()
                BottomBarItem(
                    tab: tab,
                    selectedTab: $selectedTab
                )
                Spacer()
            }
        }
        .padding(.vertical, 14)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 28))
        .padding(.horizontal)
        .padding(.bottom, 10)
        .shadow(
            color: .black.opacity(0.08),
            radius: 10,
            x: 0,
            y: 5
        )
    }
}

#Preview {
    CustomBottomBar(selectedTab: .constant(.home))
}
