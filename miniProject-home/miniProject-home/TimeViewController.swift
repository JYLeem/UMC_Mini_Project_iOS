//
//  TimeViewController.swift
//  miniProject-home
//
//  Created by 김민지 on 6/17/24.
//

import UIKit

class TimeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 셀 등록
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // UITableViewDataSource 메서드 구현
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 셀 가져오기
        let timeCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        timeCell.textLabel?.text = "시간 \(indexPath.row * 15)분"
        return timeCell
    }
}

