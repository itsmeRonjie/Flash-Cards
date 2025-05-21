//
//  QuestionViewModel.swift
//  Flash-Cards
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import Foundation

@Observable
class QuestionViewModel {
    static var countryQuestionModels: [QuestionModel] = [
        .init(
            question: "What city is this?",
            questionImageName: .bigBen,
            answer: "London, United Kingdom",
            answerImageName: nil
        ),
        .init(
            question: "Where is the Eiffel tower located?",
            questionImageName: nil,
            answer: "Paris, France",
            answerImageName: nil
        ),
        .init(
            question: "What is the capital of Egypt?",
            questionImageName: .cairo,
            answer: "Cairo",
            answerImageName: nil
        ),
        .init(
            question: "What is the capital of Spain?",
            questionImageName: .madrid,
            answer: "Madrid",
            answerImageName: nil
        ),
        .init(
            question: "What is the original name of Sri Lanka?",
            questionImageName: nil,
            answer: "Ceylon",
            answerImageName: nil
        ),
        .init(
            question: "In what country is the Yangtze river located?",
            questionImageName: nil,
            answer: "China",
            answerImageName: nil
        ),
        .init(
            question: "What is the capital of Fiji?",
            questionImageName: nil,
            answer: "Suva",
            answerImageName: nil
        ),
        .init(
            question: "What are the names of the five oceans of the world?",
            questionImageName: nil,
            answer: "Atlantic, Pacific, Indian, Arctic, and the Antarctic",
            answerImageName: nil
        ),
        .init(
            question: "What is the name of the longest river in Africa?",
            questionImageName: nil,
            answer: "The Nile River",
            answerImageName: nil
        ),
        .init(
            question: "What American city is the Golden Gate Bridge located in?",
            questionImageName: nil,
            answer: "San Francisco",
            answerImageName: nil
        ),
        .init(
            question: "What U.S. state is home to no documented poisonous snakes?",
            questionImageName: nil,
            answer: "Alaska",
            answerImageName: nil
        ),
        .init(
            question: "What present-day Italian city does Mt. Vesuvius overlook?",
            questionImageName: nil,
            answer: "Naples",
            answerImageName: nil
        ),
        .init(
            question: "What country are the Great Pyramids of Giza located in?",
            questionImageName: nil,
            answer: "Egypt",
            answerImageName: .imgEgypt
        ),
        .init(
            question: "What is the name of the smallest country in the world?",
            questionImageName: .vaticanCity,
            answer: "The Vatican City",
            answerImageName: nil
        )
    ]
    
    static var movieTriviaModels: [QuestionModel] = [
        .init(
            question: "What are the dying words of Charles Foster Kane in *Citizen Kane*?",
            questionImageName: nil,
            answer: "Rosebud",
            answerImageName: nil
        ),
        .init(
            question: "Who played Mrs. Robinson in *The Graduate?*",
            questionImageName: nil,
            answer: "Anne Bancroft",
            answerImageName: nil
        ),
        .init(
            question: "What was the first feature-length animated movie ever released?",
            questionImageName: .snowWhite,
            answer: "*Snow White and the Seven Dwarfs*",
            answerImageName: nil
        )
        ,
        .init(
            question: "In *The Matrix*, does Neo take the blue pill or the red pill?",
            questionImageName: nil,
            answer: "*Big*",
            answerImageName: nil
        )
        ,
        .init(
            question: #"What 1927 musical was the first "talkie"?"#,
            questionImageName: nil,
            answer: "*The Jazz Singer*",
            answerImageName: nil
        )
        ,
        .init(
            question: "What's the name of the skyscraper in *Die Hard?*",
            questionImageName: nil,
            answer: "Nakatomi Plaza",
            answerImageName: nil
        )
        ,
        .init(
            question: "What flavor of Pop Tarts does Buddy the Elf use in his spaghetti in *Elf*?",
            questionImageName: nil,
            answer: "Chocolate",
            answerImageName: nil
        )
    ]
    
    static var spanishGreetingsModels: [QuestionModel] = [
        .init(
            question: "Hola",
            questionImageName: nil,
            answer: "Hello / Hi",
            answerImageName: nil
        ),
        .init(
            question: "¿Qué tal?",
            questionImageName: nil,
            answer: "How's it going?",
            answerImageName: nil
        ),
        .init(
            question: "No mucho",
            questionImageName: nil,
            answer: "Not much",
            answerImageName: nil
        ),
        .init(
            question: "Y Tu?",
            questionImageName: nil,
            answer: "And you?",
            answerImageName: nil
        ),
        .init(
            question: "Bien",
            questionImageName: nil,
            answer: "Fine / Good",
            answerImageName: nil
        ),
        .init(
            question: "Gracias",
            questionImageName: nil,
            answer: "Thanks",
            answerImageName: nil
        ),
        .init(
            question: "Más o menos",
            questionImageName: nil,
            answer: "More or less",
            answerImageName: nil
        )
    ]
    
    static var shakespeareTriviaQuestions: [QuestionModel] = [
        .init(
            question: "In which town or city was William Shakespeare born?",
            questionImageName: nil,
            answer: "Stratford-upon-Avon",
            answerImageName: nil
        ),
        .init(
            question: "What is the title of Shakespeare's longest play?",
            questionImageName: nil,
            answer: "Hamlet",
            answerImageName: nil
        ),
        .init(
            question: "Who is the famous playwright often considered to be Shakespeare's main rival?",
            questionImageName: nil,
            answer: "Christopher Marlowe",
            answerImageName: nil
        ),
        .init(
            question: "What is the name of the prince in 'Hamlet'?",
            questionImageName: nil,
            answer: "Hamlet",
            answerImageName: nil
        ),
        .init(
            question: "Which Shakespearean play features the characters Rosencrantz and Guildenstern?",
            questionImageName: nil,
            answer: "Hamlet",
            answerImageName: nil
        ),
        .init(
            question: "Who is the queen of the fairies in 'A Midsummer Night's Dream'?",
            questionImageName: nil,
            answer: "Titania",
            answerImageName: nil
        ),
        .init(
            question: "What is the name of the character known for his famous soliloquy that begins 'To be, or not to be'?",
            questionImageName: nil,
            answer: "Hamlet",
            answerImageName: nil
        ),
        .init(
            question: "In which Italian city is 'Romeo and Juliet' set?",
            questionImageName: nil,
            answer: "Verona",
            answerImageName: nil
        ),
        .init(
            question: "What is the name of the character who serves as the antagonist in 'Othello'?",
            questionImageName: nil,
            answer: "Iago",
            answerImageName: nil
        ),
        .init(
            question: "What is the name of Shakespeare's wife?",
            questionImageName: nil,
            answer: "Anne Hathaway",
            answerImageName: nil
        )
    ]
}
