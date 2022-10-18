//
//  ContactDetailTableViewController.swift
//  ContactList
//
//  Created by Roman on 18.10.2022.
//

import UIKit

class ContactDetailTableViewController: UITableViewController {
    
    //var personList: [Person]!
    var personList = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personsList", for: indexPath)
        
        let person = personList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.phoneNumber
        content.secondaryText = person.email
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection
                                section: Int) -> String? {
        return personList[section].title
    }

}
