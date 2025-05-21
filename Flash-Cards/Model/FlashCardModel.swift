//
//  FlashCard.swift
//  Flash-Cards
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import Foundation
import SwiftUI

struct FlashCardModel: Identifiable {
    let id = UUID()
    
    let topic: String
    let topicDecription: String
    let topicImageName: ImageResource
    let questionModels: [QuestionModel]
    
    var numberOfQuestions: Int {
        questionModels.count
    }
}
