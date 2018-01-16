//
//  ViewController.swift
//  MicroBlog
//
//  Created by 王娜 on 2018/1/16.
//  Copyright © 2018年 王娜. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        initTableView()
        view.addSubview(tableView)
    }

    func initTableView() {
        tableView = UITableView.init(frame: view.frame, style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self
        print("此处创建tableView")
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell.init(style: .value1, reuseIdentifier: "cell")
        }
        switch indexPath.row {
        case 0:
            cell?.textLabel?.text = "Jerry"
            cell?.detailTextLabel?.text = "hop up"
        case 1:
            cell?.textLabel?.text = "Amy"
            cell?.detailTextLabel?.text = "find her"
        default:
            cell?.textLabel?.text = "Mike"
            cell?.detailTextLabel?.text = "hide well"
        }
        return cell!
    }
}
