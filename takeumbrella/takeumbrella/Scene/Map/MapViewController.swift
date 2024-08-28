//
//  MapViewController.swift
//  takeumbrella
//
//  Created by directionsoft on 8/28/24.
//

import UIKit
import NMapsMap
import SnapKit

class MapViewController: UIViewController {
    static func instance() -> MapViewController? {
        guard let vc = MapViewController(nibName: "MapViewController", bundle: nil) as? MapViewController else { return nil }
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    private func initView() {
        let mapView = NMFMapView(frame: .zero)
        view.addSubview(mapView)
        
        mapView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
