//
//  User.swift
//  AboutMe
//
//  Created by Евгений Панченко on 29.08.2021.
//

struct User {
    let user: String
    let password: String
    let persons: [Person]
    
    static func getUsers() -> User {
        User(
            user: "User",
            password: "Password",
            persons: [
                Person(
                    name: "Евгений",
                    surname: "Панченко",
                    hobbys: "Вот так"
                )
            ]
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let hobbys: String
}
