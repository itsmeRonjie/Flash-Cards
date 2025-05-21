//
//  FlashCard.swift
//  Flash-Cards
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import Foundation
import SwiftUI

struct FlashCard: Identifiable {
    let id = UUID()
    
    let topic: String
    let topicDecription: String
    let topicImageName: ImageResource
    let questionModels: [Question]
    
    var numberOfQuestions: Int {
        questionModels.count
    }
}
