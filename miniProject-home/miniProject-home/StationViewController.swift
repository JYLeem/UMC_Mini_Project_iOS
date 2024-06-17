//
//  StationTableViewController.swift
//  miniProject-home
//
//  Created by 김민지 on 5/26/24.
//

import UIKit

class StationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 역 모달안에 있는 셀 등록
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // UITableViewDataSource 메서드 구현
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10 // 예제 데이터
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 셀 가져오기
        let stationCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        stationCell.textLabel?.text = "역 \(indexPath.row+1)번 출구"
       
        
        // 제스처 생성
        let TapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        TapGestureRecognizer.numberOfTapsRequired = 1
        stationCell.addGestureRecognizer(TapGestureRecognizer)
        stationCell.isUserInteractionEnabled = true
        
        return stationCell
    }
    
    @objc func handleTap(_ gestureRecognizer: UITapGestureRecognizer) {
      
        

        guard let tappedCell = gestureRecognizer.view as? UITableViewCell, let _ = tableView.indexPath(for: tappedCell) else {
                return
        }
        
        // 선택된 상태를 토글
        if tappedCell.isSelected {
            tappedCell.setSelected(false, animated: true)
        } else {
            tappedCell.setSelected(true, animated: true)
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let timeVC = storyboard.instantiateViewController(withIdentifier: "TimeVC") as? TimeViewController else {
                return
            }
        
        
        // 모달로 표시
        timeVC.modalPresentationStyle = .overCurrentContext
        present(timeVC, animated: true, completion: nil)
    }
}


        


