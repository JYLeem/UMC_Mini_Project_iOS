//
//  ViewController.swift
//  miniProject-home
//
//  Created by 김민지 on 5/26/24.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate {


    @IBAction func profileButton(_ sender: Any) {
    }

    @IBAction func messageButton(_ sender: Any) {
    }
    
    
    @IBAction func carpoolButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let stationVC = storyboard.instantiateViewController(withIdentifier: "StationVC") as? StationViewController else {
            return
        }

        // 모달로 표시
        stationVC.modalPresentationStyle = .pageSheet

        if let sheet = stationVC.sheetPresentationController {
            sheet.detents = [.medium(), .large()]
            sheet.selectedDetentIdentifier = .medium
            sheet.prefersGrabberVisible = true // 손잡이 표시
        }

        self.present(stationVC, animated: true, completion: nil)
    }


}

