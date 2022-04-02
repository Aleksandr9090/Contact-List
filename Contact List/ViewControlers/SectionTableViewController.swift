//
//  SectionTableViewController.swift
//  Contact List
//
//  Created by Aleksandr on 31.03.2022.
//

import UIKit

class SectionTableViewController: UITableViewController {
    
    var persons: [Person] = []



    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = persons[indexPath.section].phoneNumber
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = persons[indexPath.section].email
            content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content


        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }


   

   

}
