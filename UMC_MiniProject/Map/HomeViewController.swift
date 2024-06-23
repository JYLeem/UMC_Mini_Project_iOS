//
//  ViewController.swift
//  miniProject-home
//
//  Created by 김민지 on 5/26/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    //    var locationManager = CLLocationManager()
    
    @IBAction func profileButton(_ sender: Any) {
        class HomeViewController: UIViewController, UITableViewDelegate {
        }
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
            
            
            
            
            //    override func viewDidLoad() {
            //        super.viewDidLoad()
            //
            //        let mapView = NMFMapView(frame: view.frame)
            //        view.addSubview(mapView)
            //
            //        locationManager.delegate = self
            //        locationManager.desiredAccuracy = kCLLocationAccuracyBest
            //        locationManager.requestWhenInUseAuthorization()
            //
            //        if CLLocationManager.locationServicesEnabled() {
            //            print("위치 서비스 On 상태")
            //            locationManager.startUpdatingLocation()
            //            print(locationManager.location?.coordinate)
            //
            //            //현 위치로 카메라 이동
            //            let cameraUpdate = NMFCameraUpdate(scrollTo: NMGLatLng(lat: //locationManager.location?.coordinate.latitude ?? 0, lng: //locationManager.location?.coordinate.longitude ?? 0))
            //            cameraUpdate.animation = .easeIn
            //            mapView.moveCamera(cameraUpdate)
            //
            //            let marker = NMFMarker()
            //            marker.position = NMGLatLng(lat: locationManager.location?.coordinate.latitude ?? 0, lng: //locationManager.location?.coordinate.longitude ?? 0)
            //            marker.mapView = mapView
            //        } else {
            //            print("위치 서비스 off 상ㅌ태")
            //        }
            //    }
            
        }
