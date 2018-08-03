//
//  Target_One.swift
//  CTMediatorDemo
//
//  Created by RY on 2018/8/2.
//  Copyright © 2018年 SL. All rights reserved.
//

import Foundation
import UIKit
import CTMediator

@objc(Target_One)
class Target_One: NSObject {
    
    @objc
    func Action_ToOneViewController(params: [NSString: AnyObject]?) -> UIViewController? {
        let vc = OneViewController()
        if let model = params?["model"] as? Model {
            vc.model = model
        }
        return vc
    }
}

extension CTMediator {
    
    func sl_2OneViewController(_ params: [NSString: AnyObject]?) -> UIViewController? {
        
        guard let vc = performTarget("One", action: "ToOneViewController", params: params, shouldCacheTarget: false) as? UIViewController else {
            print("未找到OneViewController")
            return nil
        }
        return vc
    }
}
