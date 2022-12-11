//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by thisisyusub on 12.12.22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(text: "4 + 2 = 6", answer: "True"),
        Question(text: "5 - 3 > 1", answer: "True"),
        Question(text: "8 + 3 < 10", answer: "False")
    ]
    
    var questionIndex = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        let isTrueAnswer =  userAnswer == quiz[questionIndex].answer
        
        if isTrueAnswer {
            score += 1
        }
        
        return isTrueAnswer
    }
    
    func getQuestionText() -> String {
        quiz[questionIndex].text
    }
    
    func getProgress() -> Float {
        Float(questionIndex + 1) / Float(quiz.count);
    }
    
    mutating func nextQuestion() {
        if(questionIndex + 1 < quiz.count) {
            self.questionIndex += 1
        } else {
            questionIndex = 0
        }
    }
    
    func getScore() -> Int {
        score
    }
}
