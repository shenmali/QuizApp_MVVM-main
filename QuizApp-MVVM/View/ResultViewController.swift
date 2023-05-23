//
//  ResultViewController.swift
//  QuizApp-MVVM
//
//  Created by Macbook Pro on 5.01.2023.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    var result = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = "\(result)"
        
    }
    

    
    @IBAction func onClickBackToHome(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
