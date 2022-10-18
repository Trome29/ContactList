//
//  ViewController.swift
//  ContactList
//
//  Created by Roman on 18.10.2022.
//

import UIKit

class ContactDataViewController: UIViewController {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = person.title
        phoneLabel.text = person.phoneNumber
        emailLabel.text = person.email
    }


}

