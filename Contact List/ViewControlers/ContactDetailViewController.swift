//
//  ContactDetailViewController.swift
//  Contact List
//
//  Created by Aleksandr on 31.03.2022.
//

import UIKit

class ContactDetailViewController: UIViewController {
    
    var person: Person!

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        phoneLabel.text = "Phone - \(person.phoneNumber)"
        emailLabel.text = "Email - \(person.email)"
    }
    
}
