//
//  ViewController.swift
//  QuizApp-MVVM
//
//  Created by Macbook Pro on 5.01.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var topicsButton: UIButton!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
       
    }
    @IBAction func onClickPlay(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "QuizViewController") as? QuizViewController else {return}
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onClickTopics(_ sender: Any) {
    }
    
}

