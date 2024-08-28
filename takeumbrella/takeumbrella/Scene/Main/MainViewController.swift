//
//  MainViewController.swift
//  takeumbrella
//
//  Created by directionsoft on 8/28/24.
//

import UIKit
import NMapsMap

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let mapView = NMFMapView(frame: view.frame)
        view.addSubview(mapView)
        
    }

}
