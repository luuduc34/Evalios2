//
//  ViewController.swift
//  Evalios2
//
//  Created by Duc Luu on 08/08/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func googleBtn() {
        let loginViewController = storyboard?.instantiateViewController(identifier: "LoginViewController") as? LoginViewController
        loginViewController?.modalPresentationStyle = .fullScreen
        loginViewController?.passNav = "Google"
        present(loginViewController!, animated: true)
    }
    
    @IBAction func facebookBtn() {
        let loginViewController = storyboard?.instantiateViewController(identifier: "LoginViewController") as? LoginViewController
        loginViewController?.modalPresentationStyle = .fullScreen
        loginViewController?.passNav = "Facebook"
        present(loginViewController!, animated: true)
    }
}

