//
//  User.swift
//  AboutMe
//
//  Created by Евгений Панченко on 29.08.2021.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let image: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Evgeniy", surname: "Panchenko", image: "EvgeniyPhoto")
    }
    
}
