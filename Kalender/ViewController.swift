//
//  ViewController.swift
//  Kalender
//
//  Created by Morten la Cour Dragheim on 12/02/2016.
//  Copyright © 2016 Graphicon.dk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var beskedLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterByTextField: UITextField!
    @IBOutlet weak var clickButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendBeskedButtonPress(sender: UIButton) {
        // Dette er en lille test - her kan du læse lidt om hvem jeg er. 
        beskedLabel.hidden = false
        beskedLabel.text = enterByTextField.text
        beskedLabel.textColor = UIColor.redColor()

        
        enterByTextField.text = ""
        enterByTextField.resignFirstResponder()
        clickButton.setTitle("Mail sent", forState: UIControlState.Normal)
        clickButton.setTitleColor(UIColor.purpleColor(), forState: UIControlState.Normal)
    }

}

