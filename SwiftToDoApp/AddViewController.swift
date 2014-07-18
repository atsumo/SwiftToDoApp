//
//  AddViewController.swift
//  ToDoApp
//
//  Created by atsumo on 2014/07/17.
//  Copyright (c) 2014年 atsumo. All rights reserved.
//

import UIkit

class AddViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet var taskName: UITextField
    @IBOutlet var taskDescription: UITextField
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events
    
    @IBAction func handleAddClick(sender: UIButton) {
        
        taskManager.addTask(taskName.text, description: taskDescription.text)
        self.view.endEditing(true)
        
        self.navigationController.popViewControllerAnimated(true)
    }
    
    
    //ほかがタッチされたら
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        //編集中の場合は編集を終了する
        self.view.endEditing(true)
    }
    
    //UITextField Delegate
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
