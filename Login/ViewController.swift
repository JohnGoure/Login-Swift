//
//  ViewController.swift
//  Login
//
//  Created by john goure on 5/8/18.
//  Copyright © 2018 john goure. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func forgotUsernameButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "LandingPage", sender: forgotUsernameButton)
    }
    
    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "LandingPage", sender: forgotPasswordButton)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let sender = sender as? UIButton else{return}
        
        if sender == loginButton {
            segue.destination.navigationItem.title = usernameTextField.text
        } else if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = "Forgot Password"
        }
    }
}

