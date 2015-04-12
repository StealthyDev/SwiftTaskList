//
//  SecondViewController.swift
//  My Task List
//
//  Created by Harshavardhan Kathavate on 4/12/15.
//  Copyright (c) 2015 stealthydev. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var txtTask : UITextField!
    @IBOutlet var txtDesc : UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events
    @IBAction func btnAddTask_Click(sender:UIButton) {
        taskMgr.addTask(txtTask.text, desc: txtDesc.text)
        self.view.endEditing(true)
        txtTask.text = ""
        txtDesc.text = ""
        self.tabBarController?.selectedIndex = 0
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        //self.view.endEditing(true)
    }
    
    // UITextField Deligate
    func textFieldShouldReturn(textField: UITextField) -> Bool  {
        textField.resignFirstResponder()
        return true
    }

}

