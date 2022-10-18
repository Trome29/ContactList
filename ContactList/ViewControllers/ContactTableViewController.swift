//
//  ContactTableViewController.swift
//  ContactList
//
//  Created by Roman on 18.10.2022.
//

import UIKit

class ContactTableViewController: UITableViewController {
    
    var personsList = Person.getPersonsList()
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let contactDataVC = segue.destination as? ContactDataViewController else { return }
        contactDataVC.person = personsList[indexPath.row]
    }
}

// MARK: - UITableViewDataSource
extension ContactTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "persons", for: indexPath)
        let person = personsList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.title
        cell.contentConfiguration = content
        
        return cell
    }
}
