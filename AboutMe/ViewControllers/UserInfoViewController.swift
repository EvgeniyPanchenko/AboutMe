//
//  UserInfoViewController.swift
//  AboutMe
//
//  Created by Евгений Панченко on 01.09.2021.
//

import UIKit

class UserInfoViewController: UIViewController {

    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard  let imageVC = segue.destination as? ImageViewController else { return }
        imageVC.user = user
    }
}
