//
//  ViewController.swift
//  organizer
//
//  Created by Marta Fonda on 22/12/15.
//  Copyright © 2015 Marta Fonda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    @IBAction func sendTask(sender: UIButton) {
        
        outputLabel.text = inputField.text
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

