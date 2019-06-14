//
//  ViewController.swift
//  FoodTrackApp
//
//  Created by Jonathan Tahod on 6/13/19.
//  Copyright © 2019 MinnCook Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    //MARK : Properties
    @IBOutlet weak var mealNameLabe: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Handle the text fields user input through delegate callbacks
        
        nameTextField.delegate = self
    }

    //MARK : UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hide the keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabe.text = textField.text
    }
    //MARK : Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabe.text = "Default Text"
    }
    
}

