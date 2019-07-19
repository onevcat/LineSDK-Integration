//
//  ViewController.swift
//  CocoaPods
//
//  Created by Wang Wei on 2018/8/29.
//  Copyright © 2018年 LINE Corp. All rights reserved.
//

import UIKit
import LineSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        LoginManager.shared.login { r in
            print(r)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
