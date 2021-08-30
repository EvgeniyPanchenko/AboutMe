//
//  WelcomeViewController.swift
//  AboutMe
//
//  Created by Евгений Панченко on 29.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user)!"
    }
}


    
    
