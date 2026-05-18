//
//  CustomOrbitDock.swift
//  OrbitDock
//
//  Created by Supervue MM 1 on 18/05/26.
//


import SwiftUI

struct CustomOrbitDock: View {
    
    @Binding var selectedTab: TabItem
    @Namespace private var animation
    
    var body: some View {
        HStack(spacing: 12) {
            ForEach(TabItem.allCases, id: \.self) { tab in
                Button {
                    withAnimation(.spring(
                        response: 0.4,
                        dampingFraction: 0.75
                    )) {
                        selectedTab = tab
                    }
                } label: {
                    HStack(spacing: 10) {
                        Image(systemName: tab.icon)
                            .font(.system(size: 18, weight: .semibold))
                        
                        if selectedTab == tab {
                            Text(tab.title)
                                .font(.system(size: 15, weight: .semibold))
                                .transition(.opacity.combined(with: .move(edge: .trailing)))
                        }
                    }
                    .foregroundStyle(
                        selectedTab == tab ? .white : .gray
                    )
                    .padding(.vertical, 14)
                    .padding(.horizontal, selectedTab == tab ? 20 : 16)
                    .background {
                        
                        if selectedTab == tab {
                            Capsule()
                                .fill(tab.color.gradient)
                                .matchedGeometryEffect(
                                    id: "ACTIVE_TAB",
                                    in: animation
                                )
                        }
                    }
                }
                .buttonStyle(.plain)
            }
        }
        .padding(10)
        .background(.ultraThinMaterial)
        .clipShape(Capsule())
        .overlay {
            Capsule()
                .stroke(.white.opacity(0.08), lineWidth: 1)
        }
        .shadow(color: .black.opacity(0.25), radius: 15, y: 10)
    }
}
