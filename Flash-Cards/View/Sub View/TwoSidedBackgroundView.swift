//
//  TwoSidedBackgroundView.swift
//  Flash-Cards
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct TwoSidedBackgroundView: View {
    let frontColor: Color
    let backColor: Color
    let opacity: CGFloat
    let isFrontUp: Bool
    
    var color: Color {
        isFrontUp ? frontColor : backColor
    }
    
    var body: some View {
        color
            .opacity(opacity)
            .ignoresSafeArea()
    }
}

#Preview {
    TwoSidedBackgroundView(
        frontColor: .blue,
        backColor: .red,
        opacity: 0.1,
        isFrontUp: true
    )
}
