//
//  ContactsViewController.swift
//  Contact List
//
//  Created by Aleksandr on 31.03.2022.
//

import UIKit

class ContactsViewController: UITableViewController {
    
    var persons: [Person] = []


    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = persons[indexPath.row].fullName
        cell.contentConfiguration = content


        return cell
    }

 
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let detailVC = segue.destination as? ContactDetailViewController else { return }
            detailVC.person = persons[indexPath.row]
        }
    }

}
