//
//  TabBarController.swift
//  Contact List
//
//  Created by Aleksandr on 31.03.2022.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let contactsVC = viewControllers?.first as? ContactsViewController else { return }
        guard let sectionVC = viewControllers?.last as? SectionTableViewController else { return }
        
        let persons = Person.getContactList()
        contactsVC.persons = persons
        sectionVC.persons = persons
    }
}
