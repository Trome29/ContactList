//
//  ContactTableViewController.swift
//  ContactList
//
//  Created by Roman on 18.10.2022.
//

import UIKit

class ContactTableViewController: UITableViewController {
    
    private var personList = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - UITableViewDataSource
extension ContactTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "persons", for: indexPath)
        let person = personList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.title
        cell.contentConfiguration = content
        
        return cell
    }

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach {
            if let contactDetailVC = $0 as? ContactDetailTableViewController {
                contactDetailVC.personList = personList
            } else if let contactDataVC = $0 as? ContactDataViewController {
                guard let indexPath = tableView.indexPathForSelectedRow else { return }
                contactDataVC.person = personList[indexPath.row]
            }
        }
    }
}
