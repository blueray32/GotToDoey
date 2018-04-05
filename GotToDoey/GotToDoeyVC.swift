//
//  ViewController.swift
//  GotToDoey
//
//  Created by Ciaran Cox on 02/04/2018.
//  Copyright © 2018 Ciaran Cox. All rights reserved.
//

import UIKit

class GotToDoeyVC: UITableViewController {
    
    let itemArray = ["kick emma up the bum if she does not bring sally" , "tell emma to make me Coffy" , "emma now ", "kick emma up the bum if she does not bring sally"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

  // MARK - TableView Data Source Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "GotToDoeyCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
      
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

