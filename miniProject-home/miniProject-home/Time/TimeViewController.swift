//
//  TimeViewController.swift
//  miniProject-home
//
//  Created by 김민지 on 6/17/24.
//

import UIKit

class TimeViewController: UIViewController, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 셀 등록
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

