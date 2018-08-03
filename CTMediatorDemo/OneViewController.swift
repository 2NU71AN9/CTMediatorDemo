//
//  OneViewController.swift
//  CTMediatorDemo
//
//  Created by RY on 2018/8/2.
//  Copyright © 2018年 SL. All rights reserved.
//

import UIKit

@objc class OneViewController: UIViewController {

    var model: Model?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = model?.title
        view.backgroundColor = model?.bgColor
    }

}
