//
//  ViewController.swift
//  Todoey
//
//  Created by Priyank Shah on 8/11/20.
//  Copyright © 2020 Shah Priyank. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    let itemArray = ["apples", "Oranges", "Waffles" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //MARK: - TableView Datasource methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
}

