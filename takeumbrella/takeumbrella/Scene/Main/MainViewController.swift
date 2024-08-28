//
//  MainViewController.swift
//  takeumbrella
//
//  Created by directionsoft on 8/28/24.
//

import UIKit
import SnapKit
import NMapsMap

class MainViewController: UIViewController {
    @IBOutlet weak var mainMapView: UIView!
    
    // Floating Button
    @IBOutlet weak var controlFloatingView: UIView!
    @IBOutlet weak var settingFloatingView: UIView!
    
    // ToolBar
    @IBOutlet weak var toolBarBottomConst: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    private func initView() {
        guard let mainMapVC = MapViewController.instance() else { return }
        addChild(mainMapVC)
        mainMapView.addSubview(mainMapVC.view)
        mainMapVC.view.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        // addGestureRecognizer
        controlFloatingView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onTappedControlFloating)))
        settingFloatingView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onTappedSettingFloating)))
    }
}

// MARK: Event
extension MainViewController {
    @objc func onTappedControlFloating() {
        if toolBarBottomConst.constant == 60.0 {
            toolBarBottomConst.constant = 0 - 60
            UIView.animate(withDuration: 0.3) { [weak self] in
                self?.view.layoutIfNeeded()
            }
            
        } else {
            toolBarBottomConst.constant = 60
            UIView.animate(withDuration: 0.3) { [weak self] in
                self?.view.layoutIfNeeded()
            }
        }
    }
    
    @objc func onTappedSettingFloating() {
        guard let settingVC = SettingViewController.instance() else { return }
        navigationController?.pushViewController(settingVC, animated: true)
        
    }
}
