//
//  ViewController.swift
//  BinaryFramework
//
//  Created by Wang Wei on 2019/07/24.
//  Copyright © 2019 OneV's Den. All rights reserved.
//

import UIKit
import LineSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        print(Constant.SDKVersion)
        LoginManager.shared.setup(channelID: "123", universalLinkURL: nil)
        let permission: Set<LoginPermission> = [.profile, .openID]
        LoginManager.shared.login(permissions: permission) { r in
            print(r)
        }
    }
}

