//
//  CollectionViewCell.swift
//  QuizApp-MVVM
//
//  Created by Macbook Pro on 5.01.2023.
//

import UIKit

enum selectedOption {
    case optionA
    case optionB
    case optionC
    case optionD
}

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var option1: UILabel!
    @IBOutlet weak var option2: UILabel!
    @IBOutlet weak var option3: UILabel!
    @IBOutlet weak var option4: UILabel!
    
    @IBOutlet weak var optionA: UIControl!
    @IBOutlet weak var optionB: UIControl!
    @IBOutlet weak var optionC: UIControl!
    @IBOutlet weak var optionD: UIControl!
    
    private var correctAnswer : String?
    
    var setValues : Questions? {
        didSet {
            questionLabel.text = setValues?.question
            option1.text = setValues?.option_1
            option2.text = setValues?.option_2
            option3.text = setValues?.option_3
            option4.text = setValues?.option_4
            
            correctAnswer = setValues?.correct_answer
            
        }
    }
    var selectedOption: ((_ selectedAnswer: Bool) -> Void)?
    
    ///Hafıza sorunlarının önüne geçmek için önceki seçimleri kaldırmak amacıyla prepareForReuse() metodunu kullandık.
    override func prepareForReuse() {
        updateBorder(myView: optionA)
        updateBorder(myView: optionB)
        updateBorder(myView: optionC)
        updateBorder(myView: optionD)
    }
    
    @IBAction func onClickOptionA(_ sender: Any) {
        var isCorrect = false
        
        if correctAnswer == setValues?.option_1 {
            isCorrect = true
        }
        selectedOption?(isCorrect)
        changeBorder(selectedOption: .optionA)
    }
    @IBAction func onClickOptionB(_ sender: Any) {
        var isCorrect = false
        
        if correctAnswer == setValues?.option_2 {
            isCorrect = true
        }
        selectedOption?(isCorrect)
        changeBorder(selectedOption: .optionB)
    }

    @IBAction func onClickOptionC(_ sender: Any) {
                var isCorrect = false
        
                if correctAnswer == setValues?.option_3 {
                    isCorrect = true
                }
                selectedOption?(isCorrect)
                changeBorder(selectedOption: .optionC)
    }
    @IBAction func onClickOptionD(_ sender: Any) {
        var isCorrect = false
        
        if correctAnswer == setValues?.option_4 {
            isCorrect = true
        }
        selectedOption?(isCorrect)
        changeBorder(selectedOption: .optionD)
    }
    
   
    
    func changeBorder (selectedOption: selectedOption) {
        switch selectedOption {
        case .optionA:
            updateBorder(myView: optionA, borderWidth: 4)
            updateBorder(myView: optionB)
            updateBorder(myView: optionC)
            updateBorder(myView: optionD)
        case .optionB:
            updateBorder(myView: optionB, borderWidth: 4)
            updateBorder(myView: optionA)
            updateBorder(myView: optionC)
            updateBorder(myView: optionD)
        case .optionC:
            updateBorder(myView: optionC, borderWidth: 4)
            updateBorder(myView: optionB)
            updateBorder(myView: optionA)
            updateBorder(myView: optionD)
        case .optionD:
            updateBorder(myView: optionD, borderWidth: 4)
            updateBorder(myView: optionB)
            updateBorder(myView: optionC)
            updateBorder(myView: optionA)
        }
    }
    
    
    func updateBorder(myView: UIView, borderWidth: CGFloat = 0){
        myView.layer.borderWidth = borderWidth
        myView.layer.borderColor = UIColor.white.cgColor
    }
}
