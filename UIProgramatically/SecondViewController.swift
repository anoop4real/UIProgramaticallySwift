//
//  SecondViewController.swift
//  UIProgramatically
//
//  Created by anoop on 2018-11-28.
//  Copyright © 2018 anoop. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpViews()
    }

    func setUpViews() {

        self.view.backgroundColor = UIColor.orange
        let userNameField = ViewFactory.createTextField()
        let passwordField = ViewFactory.createTextField(password: true)
        let loginButton = ViewFactory.createButton()
        let contentView = ViewFactory.createAView(with: UIColor.lightGray)
        contentView.backgroundColor = UIColor.orange
        contentView.addSubview(userNameField)
        contentView.addSubview(passwordField)
        contentView.addSubview(loginButton)

        self.view.addSubview(contentView)

        contentView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        contentView.heightAnchor.constraint(equalToConstant: self.view.frame.height / 2).isActive = true
        contentView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true

        // Username

        userNameField.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 40).isActive = true
        userNameField.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        userNameField.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20).isActive = true
        userNameField.heightAnchor.constraint(equalToConstant: 30.0).isActive = true

        userNameField.placeholder = "Username"

        // Password

        passwordField.topAnchor.constraint(equalTo: userNameField.bottomAnchor, constant: 20).isActive = true
        passwordField.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        passwordField.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20).isActive = true
        passwordField.heightAnchor.constraint(equalToConstant: 30.0).isActive = true

        passwordField.placeholder = "Enter Password"

        // Button

        loginButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 40).isActive = true
        loginButton.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 50).isActive = true
        loginButton.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -50).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 30.0).isActive = true

        loginButton.setTitle("Login", for: .normal)

    }

}
