//
//  ContactDetailTableViewController.swift
//  ContactList
//
//  Created by Roman on 18.10.2022.
//

import UIKit

class ContactListTableViewController: UITableViewController {
    
    var personsList: [Person] = []
    //var personsList = Person.getPersonsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let contactListVC = tabBarController?.viewControllers?.first as? ContactTableViewController else { return }
        personsList = contactListVC.personsList
        
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personsList", for: indexPath)
        let person = personsList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.phoneNumber
            content.image = UIImage(named: Images.phone.rawValue)
        default:
            content.text = person.email
            content.image = UIImage(named: Images.email.rawValue)
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return personsList[section].title
    }
}
