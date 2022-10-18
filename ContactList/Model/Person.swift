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
        let data = DataStore()
    
        return [
            Person(
                name: data.names.randomElement() ?? "",
                surname: data.surnames.randomElement() ?? "",
                email: data.emails.randomElement() ?? "",
                phoneNumber: data.phoneNumbers.randomElement() ?? ""),
            Person(
                name: data.names.randomElement() ?? "",
                surname: data.surnames.randomElement() ?? "",
                email: data.emails.randomElement() ?? "",
                phoneNumber: data.phoneNumbers.randomElement() ?? ""),
            Person(
                name: data.names.randomElement() ?? "",
                surname: data.surnames.randomElement() ?? "",
                email: data.emails.randomElement() ?? "",
                phoneNumber: data.phoneNumbers.randomElement() ?? ""),
            Person(
                name: data.names.randomElement() ?? "",
                surname: data.surnames.randomElement() ?? "",
                email: data.emails.randomElement() ?? "",
                phoneNumber: data.phoneNumbers.randomElement() ?? ""),
            Person(
                name: data.names.randomElement() ?? "",
                surname: data.surnames.randomElement() ?? "",
                email: data.emails.randomElement() ?? "",
                phoneNumber: data.phoneNumbers.randomElement() ?? ""),
            Person(
                name: data.names.randomElement() ?? "",
                surname: data.surnames.randomElement() ?? "",
                email: data.emails.randomElement() ?? "",
                phoneNumber: data.phoneNumbers.randomElement() ?? ""),
            Person(
                name: data.names.randomElement() ?? "",
                surname: data.surnames.randomElement() ?? "",
                email: data.emails.randomElement() ?? "",
                phoneNumber: data.phoneNumbers.randomElement() ?? ""),
            Person(
                name: data.names.randomElement() ?? "",
                surname: data.surnames.randomElement() ?? "",
                email: data.emails.randomElement() ?? "",
                phoneNumber: data.phoneNumbers.randomElement() ?? ""),
            Person(
                name: data.names.randomElement() ?? "",
                surname: data.surnames.randomElement() ?? "",
                email: data.emails.randomElement() ?? "",
                phoneNumber: data.phoneNumbers.randomElement() ?? ""),
            Person(
                name: data.names.randomElement() ?? "",
                surname: data.surnames.randomElement() ?? "",
                email: data.emails.randomElement() ?? "",
                phoneNumber: data.phoneNumbers.randomElement() ?? "")
        ]
    }

//    func getRandomData(_ names: [String]) -> String {
//        var names = DataStore().names
//        var sortedNames: [String] = []
//        var count = 0
//
//        for _ in names {
//            count += 1
//            sortedNames.append(names.randomElement() ?? "")
//            names.remove(at: count)
//        }
//        return sortedNames
//    }
}
