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
        let button = LoginButton()
        button.delegate = self
        view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: LoginButtonDelegate {
    func loginButtonDidStartLogin(_ button: LoginButton) {
        print("Started")
    }
    
    func loginButton(_ button: LoginButton, didSucceedLogin loginResult: LoginResult) {
        print(loginResult)
    }
    
    func loginButton(_ button: LoginButton, didFailLogin error: Error) {
        print(error)
    }
}
