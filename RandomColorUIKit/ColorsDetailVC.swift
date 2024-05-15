//
//  ColorsDetailVC.swift
//  RandomColorUIKit
//
//  Created by SCOTT CROWDER on 5/15/24.
//

import UIKit

class ColorsDetailVC: UIViewController {
    
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = color ?? .systemBackground
    }
}
