//
//  CustomTabBarShape.swift
//  ArcNavBar
//
//  Created by Supervue MM 1 on 18/05/26.
//

import SwiftUI

struct CustomTabBarShape: Shape {

    func path(in rect: CGRect) -> Path {

        var path = Path()

        let width = rect.width
        let height = rect.height
        
        path.move(to: CGPoint(x: 0, y: 25))

        path.addQuadCurve(
            to: CGPoint(x: width, y: 25),
            control: CGPoint(x: width / 2, y: -35)
        )

        path.addLine(to: CGPoint(x: width, y: height))
        path.addLine(to: CGPoint(x: 0, y: height))

        path.closeSubpath()

        return path
    }
}
