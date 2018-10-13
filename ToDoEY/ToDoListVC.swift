//
//  ViewController.swift
//  ToDoEY
//
//  Created by Tufael Ahmed on 10/6/18.
//  Copyright © 2018 Tufael Ahmed. All rights reserved.
//

import UIKit


class ToDoListVC: UITableViewController {
    
    


    
    
   var ItemArray = ["Buy Jacket", "Find Kayla", "Tufael"]

    override func viewDidLoad() {
       
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //Mark - TableView Datas
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ItemArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "toDo", for: indexPath)
        
        cell.textLabel?.text = ItemArray[indexPath.row]
       
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
    @IBAction func addNewItem(_ sender: Any) {
        
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Add New ToDoEy Item", message: "", preferredStyle: .alert)
       
        let action = UIAlertAction(title: "Add Item", style: .default) { (action) in
            //what will happen once clicked add button
            self.ItemArray.append(textField.text!)
            self.tableView.reloadData()
        }
       
        alert.addTextField { (alertTextfield) in
            alertTextfield.placeholder = "Create New Item"
            textField = alertTextfield
           
        
        
           
        }
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    
    }
    

}


