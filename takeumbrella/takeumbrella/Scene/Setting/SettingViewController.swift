//
//  SettingViewController.swift
//  takeumbrella
//
//  Created by directionsoft on 8/28/24.
//

import UIKit

class SettingViewController: UIViewController {
    static func instance() -> SettingViewController? {
        guard let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SettingViewController") as? SettingViewController else { return nil }
        return vc
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func onTappedBackButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
