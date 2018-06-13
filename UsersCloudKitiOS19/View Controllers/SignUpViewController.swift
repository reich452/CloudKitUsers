//
//  SignUpViewController.swift
//  UsersCloudKitiOS19
//
//  Created by Nick Reichard on 6/12/18.
//  Copyright © 2018 Nick Reichard. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var emailTextField: CustomUserTextField!
    @IBOutlet weak var usernameTextField: CustomUserTextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addVerticalGradientLayer(topColor: UIColor.primaryColor, bottomColor: UIColor.secondaryColor)

    }


    // MARK: - Actions
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
