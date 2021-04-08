//
//  ViewController.swift
//  ch2task1
//
//  Created by Александр Чумаченко on 06.04.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let fromLoginToTabBarSegue = "fromLoginToTabBarSegue"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func showAlert(alertText: String) {
        let alertController = UIAlertController(title: "Error", message: alertText, preferredStyle: UIAlertController.Style.alert)
        let alertButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.cancel, handler: nil)
        alertController.addAction(alertButton)
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func pressLoginButton(_ sender: UIButton) {
        guard let login = self.loginTextField.text,
              let password = self.passwordTextField.text,
              login == "admin",
              password == "admin"
        else {
            showAlert(alertText: "Вы ввели некорректный логин или пароль")
            return
        }
        performSegue(withIdentifier: "fromLoginToTabBarSegue", sender: self)
    }
    
    
}

