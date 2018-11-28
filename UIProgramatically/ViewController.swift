//
//  ViewController.swift
//  UIProgramatically
//
//  Created by anoop on 2018-11-28.
//  Copyright © 2018 anoop. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private var navigator: SimpleNavigator!
    private var dataTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.white
        //setUpViews()
        setUpTableView()
        setUpNavigator()
    }

    func setUpNavigator() {
        navigator = SimpleNavigator(navigationController: self.navigationController!)
    }
    func setUpTableView() {

        dataTableView = UITableView()
        dataTableView.delegate = self
        dataTableView.dataSource = self
        dataTableView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(dataTableView)

        dataTableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        dataTableView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        dataTableView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        dataTableView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true

        // Register Cell
        //dataTableView.register(UITableViewCell.self, forCellReuseIdentifier: "SampleCell")
        dataTableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "SampleCell")
        dataTableView.rowHeight = UITableView.automaticDimension
        dataTableView.estimatedRowHeight = 100.0

    }

    // MARK: Tableview delegates

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "SampleCell", for: indexPath) as! CustomTableViewCell
        cell.titleLabel.text = "Hello"
        cell.subTitleLabel.text = "How are you?"
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        navigator.navigate(to: .second)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        return UITableView.automaticDimension
    }

}
