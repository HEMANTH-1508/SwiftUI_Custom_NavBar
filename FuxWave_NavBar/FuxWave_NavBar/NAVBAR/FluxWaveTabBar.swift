//
//  FluxWaveTabBar.swift
//  FuxWave_NavBar
//
//  Created by Supervue MM 1 on 21/05/26.
//

import SwiftUI

struct FluxWaveTabBar: View {

    @Binding var selectedTab: TabItem
    @Namespace private var animation

    var body: some View {
        VStack {
            Spacer()
            HStack(spacing: 0) {
                ForEach(TabItem.allCases, id: \.self) { tab in
                    Button {
                        withAnimation(.spring(response: 0.35,
                                              dampingFraction: 0.7)) {
                            selectedTab = tab
                        }
                    } label: {
                        VStack(spacing: 5) {
                            ZStack {
                                if selectedTab == tab {
                                    RoundedRectangle(cornerRadius: 18)
                                        .fill(
                                            LinearGradient(
                                                colors: [
                                                    Color.blue,
                                                    Color.purple
                                                ],
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing
                                            )
                                        )
                                        .matchedGeometryEffect(
                                            id: "ACTIVE_TAB",
                                            in: animation
                                        )
                                        .frame(width: 58, height: 58)
                                        .shadow(color: .blue.opacity(0.3),
                                                radius: 10,
                                                x: 0,
                                                y: 5)
                                }
                                
                                Image(systemName: tab.icon)
                                    .font(.system(size: 22, weight: .semibold))
                                    .foregroundStyle(
                                        selectedTab == tab
                                        ? Color.white
                                        : Color.gray
                                    )
                            }
                            
                            if selectedTab == tab {
                                Text(tab.title)
                                    .font(.caption2)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.primary)
                                    .transition(.opacity)
                            }
                        }
                        .frame(maxWidth: .infinity)
                    }
                }
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 14)
            .background(
                .white.opacity(0.7),
                in: RoundedRectangle(cornerRadius: 32)
            )
            .padding(.horizontal)
            .shadow(color: .black.opacity(0.08),
                    radius: 15,
                    x: 0,
                    y: 10)
        }
    }
}
