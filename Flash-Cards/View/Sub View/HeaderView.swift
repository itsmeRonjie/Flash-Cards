//
//  HeaderView.swift
//  Flash-Cards
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct HeaderView: View {
    let topic: String
    let questionNumber: Int
    let numberOfQuestions: Int
    let colorBG: Color
    let colorFill: Color
    let dismissFunc: () -> Void
    let barWidth = 10.0
    let unicodeX = "\u{2715}"
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var percentage: CGFloat {
        CGFloat(questionNumber) / CGFloat(numberOfQuestions)
    }
    
    var topicFont: Font {
        isIPad ? .largeTitle : .body
    }
    var numQuestionsText: String {
        "\(questionNumber) out of \(numberOfQuestions)"
    }
    var numQuestionsFont: Font {
        isIPad ? .largeTitle : .caption
    }
    
    var body: some View {
        VStack(spacing: 5) {
            HStack {
                Text(topic)
                    .font( topicFont)
                
                Spacer()
                
                Text(numQuestionsText)
                    .font(numQuestionsFont)
            }
            .fontWeight(.bold)
            
            HStack {
                Button {
                    dismissFunc()
                } label: {
                    Text( unicodeX)
                        .font(.largeTitle)
                        .fontWeight(.thin)
                        .foregroundStyle(colorBG)
                }
                
                FillBarView(
                    barWidth: barWidth,
                    colorBG: .gray,
                    colorFill: .purple,
                    percentage: percentage
                )
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    HeaderView(
        topic: "Countries",
        questionNumber: 3,
        numberOfQuestions: 10,
        colorBG: .gray,
        colorFill: .purple,
        dismissFunc: {}
    )
}
