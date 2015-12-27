//
//  ViewController.swift
//  organizer
//
//  Created by Marta Fonda on 22/12/15.
//  Copyright © 2015 Marta Fonda. All rights reserved.
//

import UIKit

class TaskManagerViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var todoListTable: UITableView!
    var cellContent = [String]()
    
    @IBOutlet weak var inputField: UITextField!

    @IBAction func sendTask(sender: UIButton) {
        
        cellContent.append(inputField.text!)
        inputField.text = ""
        todoListTable.reloadData()
        NSUserDefaults.standardUserDefaults().setObject(cellContent, forKey: "cellContent")
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return cellContent.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
    
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        cell.textLabel?.text = cellContent[indexPath.row]
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if NSUserDefaults.standardUserDefaults().objectForKey("cellContent") != nil {
            cellContent = NSUserDefaults.standardUserDefaults().objectForKey("cellContent") as! [String]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        inputField.resignFirstResponder()
        return true
    }

}

