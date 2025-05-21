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
                    // TODO: Implement Question View
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
