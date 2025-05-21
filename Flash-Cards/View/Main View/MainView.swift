//
//  ContentView.swift
//  Flash-Cards
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct MainView: View {
    var flashCardViewModel = FlashCardViewModel()
    
    var body: some View {
        NavigationStack {
            List(flashCardViewModel.flashCardModels) { flashCardModel in
                NavigationLink {
                    QuestionsView(
                        topic: flashCardModel.topic,
                        numberOfQuestions: flashCardModel.numberOfQuestions,
                        questionModels: flashCardModel.questionModels
                    )
                    .navigationBarBackButtonHidden()
                    .navigationBarTitleDisplayMode(.inline)
                } label: {
                    FlashCardItemRow(flashCardModel: flashCardModel)
                }
            }
            .navigationTitle("Flash Cards")
        }
    }
}

#Preview {
    MainView()
}
