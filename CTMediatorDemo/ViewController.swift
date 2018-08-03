//
//  ViewController.swift
//  CTMediatorDemo
//
//  Created by RY on 2018/8/2.
//  Copyright © 2018年 SL. All rights reserved.
//

import UIKit
import CTMediator

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let vc = CTMediator.sharedInstance().sl_2OneViewController(["model": Model()]) else { return }
        navigationController?.pushViewController(vc, animated: true)
    }
}

