//
//  ViewController.swift
//  SwiftPackageManager
//
//  Created by Wang Wei on 2019/07/19.
//  Copyright © 2019 OneV's Den. All rights reserved.
//

import UIKit
import LineSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        LoginManager.shared.login { r in
            print(r)
        }
    }


}

