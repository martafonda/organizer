//
//  ViewController.swift
//  organizer
//
//  Created by Marta Fonda on 22/12/15.
//  Copyright © 2015 Marta Fonda. All rights reserved.
//

import UIKit

class TaskManagerViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var inputField: UITextField!

    @IBAction func sendTask(sender: UIButton) {
        
        
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
    
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        cell.textLabel?.text = "HOLA"
        return cell
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

