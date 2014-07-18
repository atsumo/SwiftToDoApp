//
//  ViewController.swift
//  ToDoApp
//
//  Created by atsumo on 2014/07/17.
//  Copyright (c) 2014年 atsumo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var tView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(animated: Bool) {
        tView.reloadData()
    }
    
    //UITableViewDelegate
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!) {
        
        switch editingStyle {
        case UITableViewCellEditingStyle.Delete :
            taskManager.tasks.removeAtIndex(indexPath.row)
            tView.reloadData()
        default:
            print("default")
        }
    }
    
    
    //UITableViewDataSource
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        
        //タスクマネージャーで管理しているタスクの数だけcellを用意
        return taskManager.tasks.count;
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!  {
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
        
        
        cell.textLabel.text = taskManager.tasks[indexPath.row].name
        cell.detailTextLabel.text = taskManager.tasks[indexPath.row].description
        
        return cell
    }
}

