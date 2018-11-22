//
//  ViewController.swift
//  Exam scheduler
//
//  Created by Uyen Dinh on 6/4/18.
//  Copyright © 2018 Uyen Dinh. All rights reserved.
//

import UIKit





class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.borderWidth = 2;
        loginButton.layer.cornerRadius = 10;
        loginButton.layer.borderColor = UIColor.init(netHex: 0x185FD1).cgColor;

        signUpButton.layer.borderWidth = 2;
        signUpButton.layer.cornerRadius = 10;
        signUpButton.layer.borderColor = UIColor.init(netHex: 0x185FD1).cgColor;
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

