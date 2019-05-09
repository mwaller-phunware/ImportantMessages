//
//  ViewController.swift
//  ImportantMessages
//
//  Created by Matthew Waller on 4/26/19.
//  Copyright © 2019 Matthew Waller. All rights reserved.
//

import UIKit
import NaturalLanguage

class ViewController: UIViewController {
    @IBOutlet weak var sentimentTextField: UITextField!
    @IBOutlet weak var sentimentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sentimentTextField.delegate = self
    }

    @IBAction func checkImportanceTapped(_ sender: UIButton) {
        guard let text = sentimentTextField.text,
            text.isEmpty == false else {
                return
        }
        
//        guard let languageModel = try? NLModel(mlModel: sentimentModel.model) else {
//            return
//        }
//        
//        sentimentLabel.text = languageModel.predictedLabel(for: text)
    }
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
