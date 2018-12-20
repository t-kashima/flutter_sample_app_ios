//
//  ViewController.swift
//  SampleApp
//
//  Created by Takumi KASHIMA on 2018/12/20.
//  Copyright © 2018 Takumi KASHIMA. All rights reserved.
//

import UIKit
import Flutter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.addTarget(self, action: #selector(handleButtonAction), for: .touchUpInside)
        button.setTitle("Press me", for: UIControl.State.normal)
        button.frame = CGRect(x: UIScreen.main.bounds.width / 2 - 80.0,
                              y: UIScreen.main.bounds.height / 2 - 20.0,
                              width: 160.0, height: 40.0)
        button.backgroundColor = UIColor.blue
        self.view.addSubview(button)
    }

    @objc func handleButtonAction() {
        let flutterViewController = FlutterViewController()
        flutterViewController.splashScreenView = UIView()
        self.present(flutterViewController, animated: true, completion: nil)
    }
}
