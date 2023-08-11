//
//  LoginViewController.swift
//  Evalios2
//
//  Created by Duc Luu on 08/08/2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var naviguatorImage: UIImageView!
    @IBOutlet weak var loginText: UITextField!
    @IBOutlet weak var passText: UITextField!
    var passNav: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch passNav {
        case "Google":
            naviguatorImage.image = UIImage(named: "google_header")
        case "Facebook":
            naviguatorImage.image = UIImage(named: "facebook_header")
        default:
            break
        }
    }
    
    @IBAction func closeBtn() {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func connectBtn() {
        guard let loginText = loginText.text, !loginText.isEmpty else
        {
            displayAlert(message: "Login is empty")
            return
        }
        guard loginText.contains("@") else
        {
            displayAlert(message: "Login must contain an @")
            return
        }
        guard let passText = passText.text, !passText.isEmpty else
        {
            displayAlert(message: "Password is empty")
            return
        }
        
        let tabBarViewController = storyboard?.instantiateViewController(identifier: "TabBarViewController") as? TabBarViewController
        tabBarViewController?.modalPresentationStyle = .fullScreen
        present(tabBarViewController!, animated: true)
    }
    
    // Méthode pour afficher une alerte avec un message donné
    func displayAlert(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
