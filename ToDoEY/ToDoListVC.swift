//
//  ViewController.swift
//  ToDoEY
//
//  Created by Tufael Ahmed on 10/6/18.
//  Copyright © 2018 Tufael Ahmed. All rights reserved.
//

import UIKit


class ToDoListVC: UITableViewController {
    
    


    
    
    let ArrayList = ["Buy Jacket", "Find Kayla", "Tufael"]

    override func viewDidLoad() {
       
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //Mark - TableView Datas
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ArrayList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "toDo", for: indexPath)
        
        cell.textLabel?.text = ArrayList[indexPath.row]
       
        return cell
    }
    //Mark- TableViewdelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(ArrayList[indexPath.row])
        
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
              tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
             tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
       
        
        
        
    }


}

