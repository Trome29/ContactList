//
//  Person.swift
//  ContactList
//
//  Created by Roman on 18.10.2022.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var title: String {
        "\(name) \(surname)"
    }
    
    static func getPersonsList() -> [Person] {
        
        var personsList: [Person] = []
        
        let names = DataStore().names.shuffled()
        let surnames = DataStore().surnames.shuffled()
        let emails = DataStore().emails.shuffled()
        let phones = DataStore().phoneNumbers.shuffled()
        
        for item in 0..<names.count {
            let person = Person(
                name: names[item],
                surname: surnames[item],
                email: emails[item],
                phoneNumber: phones[item]
            )
            personsList.append(person)
        }
        return personsList
    }
}

