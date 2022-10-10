//
//  MainViewController.swift
//  PassDataProject
//
//  Created by Юрий Губин on 10.10.2022.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let welcomeVC = segue.destination as? SecondViewController {
            welcomeVC.login = loginTF.text
        }
    }
    
    func unwind(for segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }

    @IBAction func loginButtonPressed() {
        performSegue(withIdentifier: "showWelcome", sender: nil)
    }
    
}

