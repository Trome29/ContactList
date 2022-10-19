//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Roman on 19.10.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    var personsList = Person.getPersonsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        transferData()
    }
    
    func transferData() {
        guard let contactVC = viewControllers?.first as? ContactViewController else { return }
        guard let contactListVC = viewControllers?.last as? ContactListViewController else { return }
        
        contactVC.personsList = personsList
        contactListVC.personsList = personsList
    }
}

