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
    
    static func getPersonList() -> [Person] {
        [
            Person(
                name: names.randomElement() ?? "",
                surname: surnames.randomElement() ?? "",
                email: emails.randomElement() ?? "",
                phoneNumber: phoneNumbers.randomElement() ?? ""),
            Person(
                name: names.randomElement() ?? "",
                surname: surnames.randomElement() ?? "",
                email: emails.randomElement() ?? "",
                phoneNumber: phoneNumbers.randomElement() ?? ""),
            Person(
                name: names.randomElement() ?? "",
                surname: surnames.randomElement() ?? "",
                email: emails.randomElement() ?? "",
                phoneNumber: phoneNumbers.randomElement() ?? ""),
            Person(
                name: names.randomElement() ?? "",
                surname: surnames.randomElement() ?? "",
                email: emails.randomElement() ?? "",
                phoneNumber: phoneNumbers.randomElement() ?? ""),
            Person(
                name: names.randomElement() ?? "",
                surname: surnames.randomElement() ?? "",
                email: emails.randomElement() ?? "",
                phoneNumber: phoneNumbers.randomElement() ?? ""),
            Person(
                name: names.randomElement() ?? "",
                surname: surnames.randomElement() ?? "",
                email: emails.randomElement() ?? "",
                phoneNumber: phoneNumbers.randomElement() ?? ""),
            Person(
                name: names.randomElement() ?? "",
                surname: surnames.randomElement() ?? "",
                email: emails.randomElement() ?? "",
                phoneNumber: phoneNumbers.randomElement() ?? ""),
            Person(
                name: names.randomElement() ?? "",
                surname: surnames.randomElement() ?? "",
                email: emails.randomElement() ?? "",
                phoneNumber: phoneNumbers.randomElement() ?? ""),
            Person(
                name: names.randomElement() ?? "",
                surname: surnames.randomElement() ?? "",
                email: emails.randomElement() ?? "",
                phoneNumber: phoneNumbers.randomElement() ?? ""),
            Person(
                name: names.randomElement() ?? "",
                surname: surnames.randomElement() ?? "",
                email: emails.randomElement() ?? "",
                phoneNumber: phoneNumbers.randomElement() ?? "")
        ]
    }
}
