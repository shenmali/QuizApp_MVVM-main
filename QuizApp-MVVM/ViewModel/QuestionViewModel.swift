//
//  QuestionViewModel.swift
//  QuizApp-MVVM
//
//  Created by Macbook Pro on 5.01.2023.
//

import Foundation

class QuestionViewModel {
    
    var questionData = DataModel()
    
    let sourceUrl = URL(string: "https://quiz-68112-default-rtdb.firebaseio.com/quiz.json")!
    
    func getData (completion : @escaping () -> ()){
        URLSession.shared.dataTask(with: sourceUrl) { (data,response,error) in
            if let data = data {
                let responseData = try! JSONDecoder().decode(DataModel.self, from: data)
                self.questionData = responseData
                completion()
            }
        }.resume()
    }
    
}
