//
//  TaskManager.swift
//  ToDoApp
//
//  Created by atsumo on 2014/07/17.
//  Copyright (c) 2014年 atsumo. All rights reserved.
//

import Foundation

var taskManager = TaskManager()

//データ用クラス？
struct task {
    var name = ""
    var description = ""
}

//データのマネージャー
class TaskManager:NSObject {
    var tasks = [task]()
    
    //task追加メソッド
    func addTask(name: String, description:String) {
        tasks.append(task(name: name, description: description))
    }
    
}
