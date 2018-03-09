//
//  ViewController.swift
//  Todolist
//
//  Created by 최대운 on 2018. 3. 8..
//  Copyright © 2018년 DaeunGod. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["A", "B", "C", "D"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK - Tableview datasourece Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }

    //MARK - Tableview delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("item no. \(indexPath.row)")

        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }

        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

