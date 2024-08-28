//
//  SettingViewController.swift
//  takeumbrella
//
//  Created by directionsoft on 8/28/24.
//

import UIKit

class SettingViewController: UIViewController {
    static func instance() -> SettingViewController? {
        guard let vc = SettingViewController(nibName: "SettingViewController", bundle: nil) as? SettingViewController else { return nil }
        return vc
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
