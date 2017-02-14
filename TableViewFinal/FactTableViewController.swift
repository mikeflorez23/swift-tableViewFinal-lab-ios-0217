//
//  FactTableViewController.swift
//  TableViewFinal
//
//  Created by James Campagno on 6/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class FactTableViewController: UITableViewController {
    
    let factCellIdentifier: String = "FactCell"
    
    var planet: Planet! 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = planet.name
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planet.facts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: factCellIdentifier, for: indexPath) as! FactTableViewCell
//        var factsArray = ""
//        for planet in planet.facts {
//            factsArray += planet
//        }
//        cell.factTextView.text =  factsArray
        var facts = planet.facts[indexPath.row]
        
        cell.factTextView.text = facts
        
        return cell
    }
}
