//
//  FlashItemRow.swift
//  Flash-Cards
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct FlashCardItemRow: View {
    let flashCardModel: FlashCardModel
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var imageSize: CGFloat {
        isIPad ? 85.0 : 60.0
    }
    
    var topicFont: Font {
        isIPad ? .largeTitle : .body
    }
    
    var topicWeight: Font.Weight {
        isIPad ? .bold : .semibold
    }
    
    var topicDescriptionFont: Font {
        isIPad ? .title : .caption
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text(flashCardModel.topic)
                    .font(topicFont)
                    .fontWeight( topicWeight)
                Text(flashCardModel.topicDecription)
                    .font(topicDescriptionFont)
                    .fontWeight(.light)
            }
            
            Spacer()
            
            Image(flashCardModel.topicImageName)
                .resizable()
                .scaledToFill()
                .frame(width: imageSize, height: imageSize)
                .clipShape(.rect(cornerRadius: 10))
        }
    }
}

#Preview {
    FlashCardItemRow(
        flashCardModel: .init(
            topic: "Countries",
            topicDecription: "Explore geographical knowledge",
            topicImageName: .bigBen,
            questionModels: QuestionViewModel.countryQuestionModels
        )
    )
    .padding()
}
