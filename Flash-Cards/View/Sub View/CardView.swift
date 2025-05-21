//
//  CardView.swift
//  Flash-Cards
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct CardView: View {
    @State private var rotate = false
    @State private var offset = CGSize.zero
    @State private var scaleFactor = 1.0
    
    let question: String
    let imageName: ImageResource?
    let answer: String
    let answerImageName: ImageResource?
    let cornerRadius = 10.0
    let lowerRectangleHeight = 80.0

    var removeCard: () -> Void
    
    var currentQuestion: String {
        rotate ? answer : question
    }
    
    var currentImageName: ImageResource? {
        rotate ? answerImageName : imageName
    }
    
    var drag: some Gesture {
        DragGesture()
            .onChanged{ gesture in
                offset = gesture.translation
            }
            .onEnded{ _ in
                if abs(offset.width) > 100 {
                    removeCard()
                } else {
                    offset = .zero
                }
            }
    }
    
    var magnify: some Gesture {
        MagnifyGesture()
            .onChanged{ gesture in
                withAnimation {
                    scaleFactor = gesture.magnification
                }
            }
            .onEnded { _ in
                withAnimation {
                    scaleFactor = 1.0
                }
            }
    }
    
    var body: some View {
        ZStack {
            TwoSidedBackgroundView(
                frontColor: .blue,
                backColor: .red,
                opacity: 0.1,
                isFrontUp: !rotate
            )
            
            VStack {
                Spacer()
                
                TextAndOptionalImageView(
                    text: currentQuestion,
                    imageName: currentImageName,
                    rotate: rotate
                )
                .scaleEffect(scaleFactor)
                
                Spacer()
                
                Rectangle()
                    .fill(.gray.opacity(0.4))
                    .frame(height: lowerRectangleHeight)
                    .overlay(
                        Rectangle()
                            .stroke(.black.opacity(0.4))
                            .frame(height: lowerRectangleHeight)
                    )
            }
        }
        .rotation3DEffect(
            rotate ? .degrees(180) : .zero,
            axis: (x: 0.0, y: 1.0, z: 0.0)
        )
        .overlay(
            RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(.gray, lineWidth: 1)
        )
        .clipShape(.rect(cornerRadius: cornerRadius))
        .padding()
        .offset(x: offset.width * 2, y: offset.height * 0.4)
        .gesture(drag)
        .gesture(magnify)
        .onTapGesture {
            withAnimation {
                rotate.toggle()
            }
        }
    }
}

#Preview {
    CardView(
        question: "What is this city?",
        imageName: .bigBen,
        answer: "London, United Kingdom",
        answerImageName: nil,
        removeCard: {}
    )
}
