//
//  QuestionView.swift
//  Flash-Cards
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct QuestionsView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    let topic: String
    let numberOfQuestions: Int
    
    @State var questionModels: [QuestionModel]
    @State private var currentQuestionIndex = 0
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.3).ignoresSafeArea()
            
            VStack {
                HeaderView(topic: topic, questionNumber: currentQuestionIndex, numberOfQuestions: numberOfQuestions, colorBG: .gray, colorFill: .purple, dismissFunc: {
                    dismiss()
                })
                
                ZStack {
                    ForEach(0..<questionModels.count, id: \.self) { index in
                        let questionModel = questionModels[index]
                        
                        CardView(question: questionModel.question, imageName: questionModel.questionImageName, answer: questionModel.answer, answerImageName: questionModel.questionImageName, removeCard: {
                            withAnimation {
                                removeCard(at: index)
                            }
                        })
                        .opacity(index == questionModels.count-1 ? 1 : 0)
                    }
                }
                .padding(.horizontal, isIPad ? nil : 0)
            }
        }
    }
    
    func removeCard( at Index: Int) {
        questionModels.removeLast()
        
        currentQuestionIndex += 1
        
        if currentQuestionIndex == numberOfQuestions {
            self
                .dismiss
                .callAsFunction()
        }
    }
}

#Preview {
    QuestionsView(
        topic: "Countries",
        numberOfQuestions: QuestionViewModel.countryQuestionModels.count,
        questionModels: QuestionViewModel.countryQuestionModels
    )
}
